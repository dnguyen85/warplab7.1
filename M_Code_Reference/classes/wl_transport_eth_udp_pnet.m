classdef wl_transport_eth_udp_pnet < wl_transport & handle_light
%Pnet-based Ethernet UDP Transport for unicast traffic
% User code should not use this object directly-- the parent wl_node will
%  instantiate the appropriate transport object for the hardware in use
    properties (SetAccess = public)
        timeout;        %maximum time spent waiting before retransmission
    end
    properties (SetAccess = protected, Hidden = true)
        handle;         %handle to UDP socket
        status;         %status of socket
    end
    properties (SetAccess = public)
        address;        %IP address of destination
        port;           %Port of destination
        hdr;            %Transport header object
        maxPayload;     %Maximum payload size (e.g. MTU - ETH/IP/UDP headers)
        rxBufferSize;   %OS's receive buffer size in bytes
    end
    properties(Hidden = true,Constant = true)
        %These constants define specific command IDs used by this object.
        %Their C counterparts are found in wl_transport.h
        GRP = 'transport';
        CMD_PING = 1;
        CMD_IP = 2;
        CMD_PORT = 3;
        CMD_PAYLOADSIZETEST = 4;
    end
    methods
        function obj = wl_transport_eth_udp_pnet()
            obj.hdr = wl_transport_header;
            obj.hdr.pktType = obj.hdr.PKTTYPE_HTON_MSG;
            obj.checkSetup();
            obj.status = 0;
            obj.timeout = 1;
            obj.maxPayload = 1000; %Sane default. This gets overwritten
                                   %by CMD_PAYLOADSIZETEST command.
        end
        
        function checkSetup(obj)
            %%Check to make sure pnet exists and is is configured
            temp = which('pnet');
            if(isempty(temp))
                error('wl_transport_eth_pnet:constructor','pnet not found in Matlab''s path')             
            elseif(strcmp(temp((end-length(mexext)+1):end),mexext)==0)
                error('wl_transport_eth_pnet:constructor','pnet found, but it is not a compiled mex file');
            end                            
        end
        function open(obj,varargin)
            
            %varargin{1}: (optional) IP address
            %varargin{2}: (optional) port
            if(nargin==3)
               if(ischar(varargin{1}))
                  obj.address = varargin{1};
               else
                  obj.address = obj.int2IP(varargin{1});
               end
               obj.port = varargin{2};
            end
            REQUESTED_BUFFER_SIZE = 2^22;
            obj.handle = pnet('udpsocket_custbuf',obj.port,REQUESTED_BUFFER_SIZE);
            obj.rxBufferSize = REQUESTED_BUFFER_SIZE; %TODO: have pnet return actual size
            
            %obj.handle = pnet('udpsocket',obj.port);
            %Third argument is a buffer size. 4MB is recommended for being
            %able to stream samples back to the host PC.
            pnet(obj.handle, 'setreadtimeout',1);
            pnet(obj.handle, 'udpconnect',obj.address,obj.port);
            obj.status = 1;
        end
        
        function out = procCmd(obj,nodeInd,node,cmdStr,varargin)
            out = [];
            cmdStr = lower(cmdStr);
            switch(cmdStr)
                case 'ping'
                    % Test to make sure node can be accessed via this
                    % transport
                    %
                    % Arguments: none
                    % Returns: true if board responds; raises error otherwise
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_PING));
                    node.sendCmd(myCmd);
                    out = true; %sendCmd will timeout and raise error if board doesn't respond
                case 'payload_size_test'
                    % Determine's objects maxPayload parameter
                    %
                    % Arguments: none
                    % Returns: none
                    
                    configFile = which('wl_config.ini');
                    if(isempty(configFile))
                       error(generatemsgid('MissingConfig'),'cannot find wl_config.ini. please run wl_setup.m'); 
                    end
                    readKeys = {'network','','jumbo',''};
                    jumbo = inifile(configFile,'read',readKeys);
                    jumbo = jumbo{1};
                    
                    if(strcmp('true',jumbo))
                        payloadTestSizes = [1000 1470 5000 8966];    
                    else
                        payloadTestSizes = [1000 1470];    
                    end
                    
                    payloadTestSizes = floor((payloadTestSizes - ( sizeof(node.transport.hdr) + sizeof(wl_cmd) ) - 4)/4);
                         
                    for index = 1:length(payloadTestSizes)
                        myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_PAYLOADSIZETEST));
                        myCmd.addArgs(1:payloadTestSizes(index));
                        try
                            resp = node.sendCmd(myCmd);
                            obj.maxPayload = resp.getArgs;
                            if(obj.maxPayload < payloadTestSizes(index)*4)
                               break; 
                            end
                        catch ME
                            break 
                        end
                    end
              
                otherwise
                    error(generatemsgid('UnknownCmd'),'unknown command ''%s''',cmdStr);
            end
            
            if(iscell(out)==0 && numel(out)~=1)
                out = {out}; 
            end     
        end
        
        function close(obj)
            [ig,X] = inmem; X{end+1}='blah';
            
            if(obj.status==1 && max(cellfun(@(x) strcmp(x,'pnet'),X)))
                pnet(obj.handle,'close');       
            end
                obj.status=0;
        end    
        function delete(obj)
            obj.close();
        end
        function flush(obj)
            len = pnet(obj.handle, 'readpacket');
            replyPkt = pnet(obj.handle, 'read', len, 'uint32'); 
        end
    end %methods
    methods (Hidden = true)
        function reply = send(obj,varargin)
            %varargin{1}: data
            %varargin{2}: (optional) # of tranmission attempts, defaults to
            %2 if left unspecified
            %   OR
            %varargin{2}: (optional) 'noresp' to ignore any responses
            
            payload = uint32(varargin{1});
            obj.hdr.msgLength = (length(payload))*4; %Length in bytes
            throwError = 0;
            if (nargin==2)
               robust = 1;
               maxAttempts = 2;
            elseif (nargin==3)
               if(ischar(varargin{2}))
                   if(strcmpi(varargin{2},'noresp'))
                       robust = 0;
                   else
                       throwError = 1;
                   end
               else
                   maxAttempts = varargin{2};
               end
               
            else
               throwError = 1;
            end
            
            if(throwError)
               error('wl_transport_eth_pnet:send:incorrectArguments','incorrect arguments, please see help for wl_transport_eth_pnet/send for usage information'); 
            end
            
            if(robust)
               obj.hdr.flags = bitset(obj.hdr.flags,1,1);
            else
               obj.hdr.flags = bitset(obj.hdr.flags,1,0);
            end
            
            obj.hdr.increment;
            data = [obj.hdr.serialize, payload];
            
           % fprintf('pktLen: %u (bytes)\n',length(data)*4);
            
            reply = [];
            
            %%%%%%%
            %for index = 1:min([10,length(data)])
            %   fprintf('0x%x ',data(index)); 
            %end
            %fprintf('\n');
            %%%%%%%
            
            pnet(obj.handle, 'write', uint16(0));
            pnet(obj.handle, 'write', uint32(data));
            pnet(obj.handle, 'writepacket');
            %pause(0);
            
            if(robust==1)
                %Wait to receive reply from the board
                currTx = 1;
                receivedResponse = 0;
                currTime = tic;
                while (receivedResponse == 0),
                    len = pnet(obj.handle, 'readpacket');
                    
                    if(len>0)
                        pnet(obj.handle, 'read', 1, 'uint16');
                        reply = pnet(obj.handle, 'read', len, 'uint32');
                        if(obj.hdr.isReply(reply(1:obj.hdr.length)))
                            reply = reply((obj.hdr.length+1):end);
                            if(isempty(reply))
                               reply = []; 
                            end
                            receivedResponse = 1;
                        end 
                    end
                    
                    %timeout = timeout + 1;
                    %if (timeout == 1000 && receivedResponse==0)
                    if (toc(currTime) >obj.timeout && receivedResponse==0)
                        if(currTx == maxAttempts)
                            error('wl_transport_eth_java:send:noReply','maximum number of retransmissions met without reply from node'); 
                        end
                        pnet(obj.handle, 'write', uint16(0));
                        pnet(obj.handle, 'write', uint32(data));
                        pnet(obj.handle, 'writepacket');
                        currTx = currTx + 1;
                        currTime = tic;
                    end  
                end
            end
        end
        
        function resp = receive(obj)
            done = false;
            resp = [];
            while ~done
                len = pnet(obj.handle, 'readpacket',50000,'noblock');
                %len = pnet(obj.handle, 'readpacket');
                if(len > 0)
                    pnet(obj.handle, 'read', 1, 'uint16');
                    currResp = pnet(obj.handle, 'read', len, 'uint32');
                    if(obj.hdr.isReply(currResp(1:obj.hdr.length)))
                         currResp = currResp((obj.hdr.length+1):end);
                         if(isempty(currResp))
                            currResp = []; 
                         end
                         resp = [resp,currResp];
                    end
                else
                    done = true;
                end
            end

        end
        
        function dottedIPout = int2IP(obj,intIn)
            addrChars(4) = mod(intIn, 2^8);
            addrChars(3) = mod(bitshift(intIn, -8), 2^8);
            addrChars(2) = mod(bitshift(intIn, -16), 2^8);
            addrChars(1) = mod(bitshift(intIn, -24), 2^8);
            dottedIPout = sprintf('%d.%d.%d.%d', addrChars);
        end
        function intOut = IP2int(obj,dottedIP)
            addrChars = sscanf(dottedIP, '%d.%d.%d.%d')';
            intOut = 2^0 * addrChars(4) + 2^8 * addrChars(3) + 2^16 * addrChars(2) + 2^24 * addrChars(1);
        end
    end
end %classdef
