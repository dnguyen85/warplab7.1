classdef wl_transport_eth_udp_java < wl_transport & handle_light
%Java-based Ethernet UDP Transport for unicast traffic
% User code should not use this object directly-- the parent wl_node will
%  instantiate the appropriate transport object for the hardware in use
    properties (SetAccess = public)
        timeout;        %maximum time spent waiting before retransmission
    end
    properties (SetAccess = protected, Hidden = true)
        sock;           %UDP socket
        status;         %Status of UDP socket
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
        function obj = wl_transport_eth_udp_java()
            obj.hdr = wl_transport_header;
            obj.hdr.pktType = obj.hdr.PKTTYPE_HTON_MSG;
            obj.checkSetup();
            obj.status = 0;
            obj.timeout = 1;
            obj.maxPayload = 1000; %Sane default. This gets overwritten
                                   %by CMD_PAYLOADSIZETEST command.
        end
        
        function checkSetup(obj)
            %TODO
        end
        function open(obj,varargin)
            %varargin{1}: (optional) IP address
            %varargin{2}: (optional) port

            import java.io.*
            import java.net.DatagramSocket
            import java.net.DatagramPacket
            import java.net.InetAddress            
            if(nargin==3)
               if(ischar(varargin{1}))
                  obj.address = varargin{1};
               else
                  obj.address = obj.int2IP(varargin{1});
               end
               obj.port = varargin{2};
            end
            
            %obj.sock = DatagramSocket(obj.port);
            obj.sock = DatagramSocket();
            obj.sock.setSoTimeout(1);
            obj.sock.setReuseAddress(1);
            obj.sock.setSendBufferSize(2^22);
            REQUESTED_BUF_SIZE = 2^22; %2^22
            obj.sock.setReceiveBufferSize(REQUESTED_BUF_SIZE); 
            x = obj.sock.getReceiveBufferSize();
            obj.rxBufferSize = x;
            if(x < REQUESTED_BUF_SIZE)
                fprintf('OS reduced recv buffer size to %d\n', x);
            end
            obj.sock.setBroadcast(true);

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
            if(~isempty(obj.sock))
                try
                    obj.sock.close();
                catch closeError
                    warning(generatemsgid('CloseErr'), 'Error closing socket; java error was %s', closeError.message)
                end
            end
            obj.status=0;
        end    
        function delete(obj)
            obj.close();
        end
        function flush(obj)
            %TODO
        end
    end %methods
    methods (Hidden = true)
        function reply = send(obj,varargin)
            %varargin{1}: data
            %varargin{2}: (optional) # of tranmission attempts, defaults to
            %2 if left unspecified
            %   OR
            %varargin{2}: (optional) 'noresp' to ignore any responses
            
            import java.io.*
            import java.net.DatagramSocket
            import java.net.DatagramPacket
            import java.net.InetAddress            

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
               error('wl_transport_eth_java:send:incorrectArguments','incorrect arguments, please see help for wl_transport_eth_java/send for usage information'); 
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

            data8 = [zeros(1,2,'int8') typecast(swapbytes(uint32(data)),'int8')];
            jaddr = InetAddress.getByName(obj.address);
            pkt_send = DatagramPacket(data8, length(data8), jaddr, obj.port);
            obj.sock.send(pkt_send);

            MAX_PKT_LEN = obj.maxPayload + 100;
            pkt_recv = DatagramPacket(zeros(1,MAX_PKT_LEN,'int8'), MAX_PKT_LEN);
            
            if(robust==1)
                %Wait to receive reply from the board                
                currTx = 1;
                receivedResponse = 0;
                currTime = tic;

                while (receivedResponse == 0)
                    try
                        obj.sock.receive(pkt_recv);
                        recv_len = pkt_recv.getLength;
                    catch receiveError
                        if ~isempty(strfind(receiveError.message,'java.net.SocketTimeoutException'))
                            recv_len = 0;
                         %Timeout receiving; do nothing
                        else
                           fprintf('%s.m--Failed to receive UDP packet.\nJava error message follows:\n%s',mfilename,receiveError.message);
                        end
                    end
                    
                    if(recv_len > 0)
                        recv_data8 = pkt_recv.getData;
                        reply8 = [recv_data8(3:recv_len) zeros(mod(-(recv_len)-2,4),1,'int8')];
                        reply = swapbytes(typecast(reply8, 'uint32'));
                                                
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
                    if(currTx == maxAttempts)
                       error('wl_transport_eth_java:send:noReply','maximum number of retransmissions met without reply from node'); 
                    end
                        obj.sock.send(pkt_send);
                        currTx = currTx + 1;
                        currTime = tic;
                    end                    
                end
            end
        end
        
        function resp = receive(obj)
            MAX_PKT_LEN = obj.maxPayload + 100;
            import java.io.*
            import java.net.DatagramSocket
            import java.net.DatagramPacket
            import java.net.InetAddress            
            pkt_recv = DatagramPacket(zeros(1,MAX_PKT_LEN,'int8'), MAX_PKT_LEN);
            
            done = false;
            resp = [];
            while ~done
                try
                    obj.sock.receive(pkt_recv);
                    recv_len = pkt_recv.getLength;
                catch receiveError
                    if ~isempty(strfind(receiveError.message,'java.net.SocketTimeoutException'))
                        %Timeout receiving; do nothing
                        recv_len = 0;
                    else
                        fprintf('%s.m--Failed to receive UDP packet.\nJava error message follows:\n%s',mfilename,receiveError.message);
                    end
                end
                
                
                recv_data8 = pkt_recv.getData;
                
                if(recv_len > 0)
                    if(recv_len > 1000)
                        %keyboard
                    end
                    reply8 = [recv_data8(3:recv_len) zeros(mod(-(recv_len-2),4),1,'int8')].';
                    reply = swapbytes(typecast(reply8, 'uint32'));
                    if(obj.hdr.isReply(reply(1:obj.hdr.length)))
                        reply = reply((obj.hdr.length+1):end);
                        if(isempty(reply))
                            reply = [];
                        end
                        resp = [resp,reply];
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
