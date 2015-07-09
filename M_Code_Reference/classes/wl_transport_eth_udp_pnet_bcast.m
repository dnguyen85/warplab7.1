classdef wl_transport_eth_udp_pnet_bcast < wl_transport & handle_light
    properties (SetAccess = protected, Hidden = true)
        handle;
        status;
    end
    properties (SetAccess = public)
        hdr;
        address;
        port;        
        maxPayload;
        rxBufferSize;
    end
    methods (Access = private)
        function obj = wl_transport_eth_udp_pnet_bcast()
            obj.hdr = wl_transport_header;
            %At the moment, a trigger is the only type of broadcast packet.
            %In a future release this type will be exposed to objects that
            %create the broadcast transport object.
            obj.hdr.pktType = obj.hdr.PKTTYPE_TRIGGER;
            obj.checkSetup();
            obj.status = 0;

            configFile = which('wl_config.ini');
            if(isempty(configFile))
                error(generatemessageid('MissingConfig'),'cannot find wl_config.ini. please run wl_setup.m'); 
            end
            readKeys = {'network','','host_address',''};
            IP = inifile(configFile,'read',readKeys);
            IP = IP{1};
            IP = sscanf(IP,'%d.%d.%d.%d');

            readKeys = {'network','','host_ID',[]};
            hostID = inifile(configFile,'read',readKeys);
            hostID = hostID{1};
            hostID = sscanf(hostID,'%d');
            
            readKeys = {'network','','bcast_port',[]};
            bcastport = inifile(configFile,'read',readKeys);
            bcastport = bcastport{1};
            bcastport = sscanf(bcastport,'%d');
            
            
            obj.address = sprintf('%d.%d.%d.%d',IP(1),IP(2),IP(3),255);
            obj.port = bcastport;
            obj.hdr.srcID = hostID;
            obj.hdr.destID = 255;
            
            obj.maxPayload = 1272;
        end
    end
    
    methods(Static)
        function obj = instance()
            persistent uniqueInstance
            if isempty(uniqueInstance)
                obj = wl_transport_eth_udp_pnet_bcast;
                uniqueInstance = obj;
            else
                obj = uniqueInstance;
            end
        end
    end
    
    methods
        function checkSetup(obj)
            %%Check to make sure pnet exists and it is configured
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
            persistent isopen;
            
            if(isempty(isopen))
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
                pnet(obj.handle, 'setreadtimeout',1);
                pnet(obj.handle, 'udpconnect',obj.address,obj.port);
                obj.status = 1;
                isopen = 1;    
            end
        end
                           
        function close(obj)
            [~,X] = inmem; X{end+1}='blah';
            
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
        function send(obj,type,varargin)
            %varargin{1}: data    
            switch(lower(type))
                case 'trigger'
                    bitset(obj.hdr.flags,1,0); %no response
                    obj.hdr.pktType = obj.hdr.PKTTYPE_TRIGGER;
                case 'message'
                    obj.hdr.pktType = obj.hdr.PKTTYPE_HTON_MSG;
            end
            data = uint32(varargin{1});
            obj.hdr.msgLength = (length(data))*4; %Length in bytes

            obj.hdr.flags = bitset(obj.hdr.flags,1,0);
       
            obj.hdr.increment;
            data = [obj.hdr.serialize,data];
    
            pnet(obj.handle, 'write', uint16(0));
            pnet(obj.handle, 'write', uint32(data));
            pnet(obj.handle, 'writepacket');
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
