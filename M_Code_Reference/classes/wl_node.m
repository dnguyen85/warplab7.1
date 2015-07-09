classdef wl_node < handle_light
    %The WARPLab node class represents one node in a WARPLab network
    % wl_node is the primary interface for interacting with WARPLab nodes.
    % This class provides methods for sending commands, exchanging samples
    % and checking the status of WARPLab nodes.
    % wl_node wraps the six underlying components that comprise a WARPLab
    % node implementation: node, baseband, interface, transport, trigger
    % setup and user extensions.
    
    properties (SetAccess = protected)
        ID;                    %unique identification for this node
        description;           %string description of this node (auto-generated)
        serialNumber;          %node's serial number, read from EEPROM on hardware
        eth_MAC_addr;          %node's MAC address (for ETH_A on WARP v3)
        fpgaDNA;               %node's FPGA's unique identification (on select hardware)
        hwVer;                 %WARP hardware version of this node
        wlVer_major;           %WARPLab version running on this node
        wlVer_minor;
        wlVer_revision;
        num_interfacesGroups;  %# of interface groups attached to node
        num_interfaces;        %vector of length num_interfaceGroups with
                               %# of interfaces per group
        interfaceGroups;       %node's interface group object(s)
        interfaceIDs;          %vector of interface identifiers
        baseband;              %node's baseband object
        trigger_manager;       %node's trigger configuration object
        transport;             %node's transport object
        user;                  %node's user extension object
    end
    properties (SetAccess = public)
        name;                  %user specified name for node; user scripts supply this
    end
    properties(Hidden = true,Constant = true)
        %Command Groups - Most Significant Byte of Command ID
        GRPID_NODE = hex2dec('00');
        GRPID_TRANS = hex2dec('10');
        GRPID_IFC = hex2dec('20');
        GRPID_BB = hex2dec('30');
        GRPID_TRIGMNGR = hex2dec('40');
        GRPID_USER = hex2dec('50');
    end
    properties(Hidden = true,Constant = true)
        %These constants define specific command IDs used by this object.
        %Their C counterparts are found in wl_node.h
        GRP = 'node';
        CMD_INITIALIZE = 1;
        CMD_INFO = 2;
        CMD_IDENTIFY = 3;
        CMD_TEMPERATURE = 4;
        CMD_IP_SETUP = 5;
        CMD_NODE_CONFIG_RESET = 6;
    end
    methods
        function obj = wl_node()
            %The constructor is intentionally blank for wl_node objects.
            %Instead, the objects are configured via the separate
            %applyConfiguration method.
        end
        
        function applyConfiguration(objVec, IDVec)

            % Apply Configuration only operates on one ojbect at a time
            if ( ( length(objVec) > 1 ) | ( length(IDVec) > 1 ) ) 
                error(generatemsgid('ParameterTooLarge'),'applyConfiguration only operates on a single object with a single ID.  Provided parameters with lengths: %d and %d', length(objVec), length(IDVec) ); 
            end

            % Apply configuration will finish setting properties for a specific hardware node
            obj    = objVec(1);
            currID = IDVec(1);
            
            % currID can be either a structure containing node information or a number
            switch( class(currID) ) 
                case 'struct'
                    if ( ~strcmp( currID.serialNumber, '' ) )
                        obj.serialNumber = sscanf( currID.serialNumber, 'W3-a-%d' );  % Only store the last 5 digits ( "W3-a-" is not stored )
                    else
                        error(generatemsgid('UnknownArg'),'Unknown argument.  Serial Number provided is blank');
                    end

                    if ( ~strcmp( currID.ID, '' ) )
                        obj.ID           = sscanf( currID.ID, '%d');
                    else
                        error(generatemsgid('UnknownArg'),'Unknown argument.  Node ID provided is blank');
                    end
                
                    if ( ~strcmp( currID.name, '' ) ) % Name is an optional parameter in the structure
                        obj.name         = currID.name;
                    end

                case 'double'
                    obj.ID = currID;                  % The node ID must match the DIP switch on the WARP board

                otherwise
                    error(generatemsgid('UnknownArg'),'Unknown argument.  IDVec is of type "%s", need "struct", or "double"', class(currID));
            end        
            

            % Get ini configuration file 
            configFile = which('wl_config.ini');
            if(isempty(configFile))
                error(generatemsgid('MissingConfig'),'cannot find wl_config.ini. please run wl_setup.m'); 
            end
                
            % Use Ethernet/UDP transport for all wl_nodes. The specific type
            % of transport is specified in the user's wl_config.ini file
            % that is created via wl_setup.m

            readKeys = {'network','','transport',''};
            transportType = inifile(configFile,'read',readKeys);
            transportType = transportType{1};

            switch(transportType)
                case 'pnet'
                    obj.transport = wl_transport_eth_udp_pnet;
                case 'java'
                    obj.transport = wl_transport_eth_udp_java;
            end
                
                if(isempty(obj.trigger_manager))
                    obj.wl_setTriggerManager('wl_trigger_manager_proc');
                end
                
            readKeys = {'network','','host_address',''};
            IP = inifile(configFile,'read',readKeys);
            IP = IP{1};
            IP = sscanf(IP,'%d.%d.%d.%d');

            readKeys = {'network','','host_ID',''};
            hostID = inifile(configFile,'read',readKeys);
            hostID = hostID{1};
            hostID = sscanf(hostID,'%d');
                
            readKeys = {'network','','unicast_starting_port',''};
            unicast_starting_port = inifile(configFile,'read',readKeys);
            unicast_starting_port = unicast_starting_port{1};
            unicast_starting_port = sscanf(unicast_starting_port,'%d');
                
            % Configure transport with settings associated with provided ID
            obj.transport.hdr.srcID  = hostID;
            obj.transport.hdr.destID = obj.ID;

            % Determine IP address based on the input parameter
            switch( class(currID) ) 
                case 'struct'
                    if ( ~strcmp( currID.ipAddress, '' ) )
                        obj.transport.address = currID.ipAddress;
                    else
                        error(generatemsgid('UnknownArg'),'Unknown argument.  IP Address provided is blank');
                    end
                case 'double'
                    obj.transport.address = sprintf('%d.%d.%d.%d', IP(1),IP(2),IP(3), (obj.ID + 1));
            end        
                            
            obj.transport.port = unicast_starting_port + obj.ID;
               
            obj.transport.open();
            obj.transport.hdr.srcID  = hostID;   % ????? Redundant ????? - TBD
            obj.transport.hdr.destID = obj.ID;   % ????? Redundant ????? - TBD

            obj.wl_nodeCmd('initialize');
            obj.wl_transportCmd('ping');              % Confirm the WARP node is online
            obj.wl_transportCmd('payload_size_test'); % Perform a test to figure out max payload size

            
            obj.interfaceIDs = [];

            if(isempty(obj.baseband))
                %Instantiate baseband object
                obj.wl_setBaseband('wl_baseband_buffers');

                %Configure the baseband object to match the baseband
                %(warplab_buffers) implementation in hardware
                %obj.baseband.txIQLen = 2^15;
                %obj.baseband.rxIQLen = 2^15;
                %obj.baseband.rxRSSILen = 2^13;
            end
                
            %Read details from the hardware (serial number, etc) and save
            %to local properties
            obj.wl_nodeCmd('get_hardware_info');
                
                
            % Instantiate interfaces group.
            if(isempty(obj.interfaceGroups))
                obj.interfaceGroups{1} = wl_interface_group_X245(1:obj.num_interfaces, 'w3');
            end

            % Extract the interface IDs from the interface group. These IDs
            % will be supplied to user scripts to identify individual
            % interfaces for interface and baseband commands
            for ifcGroupIndex = 1:length(obj.interfaceGroups)
                obj.interfaceIDs = [obj.interfaceIDs, obj.interfaceGroups{1}.ID(:).'];
            end
                
            % Populate the description property with a human-readable
            % description of the node
            obj.description = sprintf('WARP v%d Node - ID %d', obj.hwVer, obj.ID);
       end
       
       function wl_setUserExtension(obj,module)
           %Sets the User Extension module to a user-provided object or
           %string of that object's class name.
           makeComparison = 1;
           if(module==0) %No module attached
              module = 'double(0)';
              makeComparison = 0;
           elseif(~ischar(module)) %Input is an actual instance of an object
              module = class(module);               
           end
           
           if(makeComparison && ~any(strcmp(superclasses(module),'wl_user_ext')))
              error(generatemsgid('IncorrectType'),'Module is not a wl_user_ext type');
           end
           
           for n = 1:length(obj)
              obj(n).user = eval(module); 
           end
       end 
       
       function wl_setBaseband(obj,module)
           %Sets the Baseband module to a user-provided object or
           %string of that object's class name.
           makeComparison = 1;
           if(module==0) %No module attached
              module = 'double(0)';
              makeComparison = 0;
           elseif(~ischar(module)) %Input is an actual instance of an object
              module = class(module);               
           end
           
           if(makeComparison && ~any(strcmp(superclasses(module),'wl_baseband')))
              error(generatemsgid('IncorrectType'),'Module is not a wl_baseband type');
           end
           
           for n = 1:length(obj)
              obj(n).baseband = eval(module); 
           end
       end 
       
       function wl_setTriggerManager(obj,module)
           %Sets the Trigger Manager module to a user-provided object or
           %string of that object's class name.
           makeComparison = 1;
           if(module==0) %No module attached
              module = 'double(0)';
              makeComparison = 0;
           elseif(~ischar(module)) %Input is an actual instance of an object
              module = class(module);               
           end
           
           if(makeComparison && ~any(strcmp(superclasses(module),'wl_trigger_manager')))
              error(generatemsgid('IncorrectType'),'Module is not a wl_trigger_manager type');
           end
           
           for n = 1:length(obj)
              obj(n).trigger_manager = eval(module); 
           end
       end 
       
       function out = wl_basebandCmd(obj, varargin)
            %Sends commands to the baseband object.
            % This method is safe to call with multiple wl_node objects as
            % its first argument. For example, let node0 and node1 be
            % wl_node objects:
            %
            %   wl_basebandCmd(node0, args )
            %   wl_basebandCmd([node0, node1], args )
            %   node0.wl_basebandCmd( args )
            %
            % are all valid ways to call this method. Note, when calling
            % this method for multiple node objects, the interpretation of
            % other vectored arguments is left up to the underlying
            % components.
            nodes = obj;
            numNodes = numel(nodes);
            
            for n = numNodes:-1:1
                currNode = nodes(n);
                if(any(strcmp(superclasses(currNode.baseband),'wl_baseband')))
                    out(n) = currNode.baseband.procCmd(n, currNode, varargin{:});
                else
                    error(generatemsgid('NoBaseband'),'Node %d does not have an attached baseband module',currNode.ID);
                end
            end
            if(length(out)==1 && iscell(out))
               out = out{1}; %Strip away the cell if it's just a single element. 
            end
            
        end
        
        function out = wl_nodeCmd(obj, varargin)
            %Sends commands to the node object.
            % This method is safe to call with multiple wl_node objects as
            % its first argument. For example, let node0 and node1 be
            % wl_node objects:
            %
            %   wl_nodeCmd(node0, args )
            %   wl_nodeCmd([node0, node1], args )
            %   node0.wl_nodeCmd( args )
            %
            % are all valid ways to call this method. Note, when calling
            % this method for multiple node objects, the interpretation of
            % other vectored arguments is left up to the underlying
            % components.
            nodes = obj;
            numNodes = numel(nodes);
            
            for n = numNodes:-1:1
                currNode = nodes(n);
                out(n) = currNode.procCmd(n, currNode, varargin{:});
            end
            if(length(out)==1 && iscell(out))
               out = out{1}; %Strip away the cell if it's just a single element. 
            end
            
        end
        
        function out = wl_transportCmd(obj, varargin)
            %Sends commands to the transport object.
            % This method is safe to call with multiple wl_node objects as
            % its first argument. For example, let node0 and node1 be
            % wl_node objects:
            %
            %   wl_transportCmd(node0, args )
            %   wl_transportCmd([node0, node1], args )
            %   node0.wl_transportCmd( args )
            %
            % are all valid ways to call this method. Note, when calling
            % this method for multiple node objects, the interpretation of
            % other vectored arguments is left up to the underlying
            % components.
            nodes = obj;
            numNodes = numel(nodes);
            
            for n = numNodes:-1:1
                currNode = nodes(n);
                if(any(strcmp(superclasses(currNode.transport),'wl_transport')))
                    out(n) = currNode.transport.procCmd(n, currNode, varargin{:});
                else
                    error(generatemsgid('NoTransport'),'Node %d does not have an attached transport module',currNode.ID);
                end
                
            end
            if(length(out)==1 && iscell(out))
               out = out{1}; %Strip away the cell if it's just a single element. 
            end           
        end
        
    function out = wl_userExtCmd(obj, varargin)
            %Sends commands to the user extension object.
            % This method is safe to call with multiple wl_node objects as
            % its first argument. For example, let node0 and node1 be
            % wl_node objects:
            %
            %   wl_userExtCmd(node0, args )
            %   wl_userExtCmd([node0, node1], args )
            %   node0.wl_userExtCmd( args )
            %
            % are all valid ways to call this method. Note, when calling
            % this method for multiple node objects, the interpretation of
            % other vectored arguments is left up to the underlying
            % components.
            nodes = obj;
            numNodes = numel(nodes);
            
                for n = numNodes:-1:1
                    currNode = nodes(n);
                    if(any(strcmp(superclasses(currNode.user),'wl_user_ext')))
                         out(n) = {currNode.user.procCmd(n, currNode, varargin{:})};
                    else
                        error(generatemsgid('NoUserExtension'),'Node %d does not have an attached user extension module',currNode.ID);
                    end
                end
                if(length(out)==1 && iscell(out))
                   out = out{1}; %Strip away the cell if it's just a single element. 
                end

            
        end
        
        function out = wl_triggerManagerCmd(obj, varargin)
            %Sends commands to the trigger manager object.
            % This method is safe to call with multiple wl_node objects as
            % its first argument. For example, let node0 and node1 be
            % wl_node objects:
            %
            %   wl_triggerManagerCmd(node0, args )
            %   wl_triggerManagerCmd([node0, node1], args )
            %   node0.wl_triggerManagerCmd( args )
            %
            % are all valid ways to call this method. Note, when calling
            % this method for multiple node objects, the interpretation of
            % other vectored arguments is left up to the underlying
            % components.
            nodes = obj;
            numNodes = numel(nodes);
            
            for n = numNodes:-1:1
                currNode = nodes(n);
                if(any(strcmp(superclasses(currNode.trigger_manager),'wl_trigger_manager')))
                    out(n) = currNode.trigger_manager.procCmd(n, currNode, varargin{:});
                else
                    error(generatemsgid('NoTriggerManagerModule'),'Node %d does not have an attached trigger manager module',currNode.ID);
                end
            end
            if(length(out)==1 && iscell(out))
               out = out{1}; %Strip away the cell if it's just a single element. 
            end            
        end
        
        
        function out = wl_interfaceCmd(obj, rfSel, varargin)
            %Sends commands to the interface object.
            % This method must be called with RF selection masks as an
            % argument. These masks are returned by the wl_getInterfaceIDs
            % method. The RFMASKS argument must be a scaler or vector of 
            % bit-OR'd interface IDs from a single interface group
            %
            % This method is safe to call with multiple wl_node objects as
            % its first argument. For example, let node0 and node1 be
            % wl_node objects:
            %
            %   wl_interfaceCmd(node0, RFMASKS, args )
            %   wl_interfaceCmd([node0, node1], RFMASKS, args )
            %   node0.wl_trigConfCmd(RFMASKS, args )
            %
            % are all valid ways to call this method. Note, when calling
            % this method for multiple node objects, the interpretation of
            % other vectored arguments is left up to the underlying
            % components.
            nodes = obj;
            numNodes = numel(nodes);
            
            if(~ischar(rfSel))
                [r, ~] = size(rfSel);              
                if(r>1)
                    error(generatemsgid('DimensionMismatch'),'RF selection must be a scalar or row vector of length equal to the number of nodes')
                end
            end
                
            ifcIndex = 1;
            for nodeIndex = numNodes:-1:1
                currNode = nodes(nodeIndex);  
                if(any(strcmp(superclasses(currNode.interfaceGroups{ifcIndex}),'wl_interface_group')))
                    out(nodeIndex) = currNode.interfaceGroups{ifcIndex}.procCmd(nodeIndex, currNode, rfSel, varargin{:});
                else
                    error(generatemsgid('NoInterfaceGroup'),'Node %d does not have an attached interface group module',currNode.ID);
                end
                
            end    
          
            if(length(out)==1 && iscell(out))
               out = out{1}; %Strip away the cell if it's just a single element. 
            end
        end
        
        function varargout = wl_getInterfaceIDs(obj)
            %Returns a vector of interface IDs that can be used as inputs
            %to all interface commands and some baseband or user extension
            %commands.
            %
            % Let node0 be a wl_node object
            %
            %   [RFA, RFB] = wl_getInterfaceIDs(node0)
            %   [RFA, RFB] = node0.wl_getInterfaceIDs(node0)
            
            if(nargout>obj.num_interfaces)
               error(generatemsgid('TooManyInterfaces'),'Node %d has only %d interfaces. User has requested %d interface IDs',obj.ID,obj.num_interfaces,nargout); 
            end
            varargout = num2cell(obj.interfaceIDs(1:nargout));  
        end

        function varargout = wl_getTriggerInputIDs(obj)
            %Returns a vector of trigger input IDs that can be used as inputs
            %to trigger manager commands
            %
            % Let node0 be a wl_node object
            %
            %   [T_IN_ETH,T_IN_ENERGY,~,~,T_IN_D0,T_IN_D1,T_IN_D2,T_IN_D3] = wl_getTriggerInputIDs(node0)
            %   [T_IN_ETH,T_IN_ENERGY,~,~,T_IN_D0,T_IN_D1,T_IN_D2,T_IN_D3] = node0.wl_getTriggerInputIDs(node0)
            if(nargout>length(obj.trigger_manager.triggerInputIDs))
               error(generatemsgid('TooManyTriggerInputs'),'Node %d has only %d trigger inputs. User has requested %d trigger input IDs',obj.ID,length(obj.trigger_manager.triggerInputIDs),nargout); 
            end
            varargout = num2cell(obj.trigger_manager.triggerInputIDs(1:nargout));  
        end
        
        function varargout = wl_getTriggerOutputIDs(obj)
            %Returns a vector of trigger output IDs that can be used as inputs
            %to trigger manager commands
            %
            % Let node0 be a wl_node object
            %
            %   [T_OUT_BUFFER, T_OUT_D0, T_OUT_D1, T_OUT_D2, T_OUT_D3] = wl_getTriggerInputIDs(node0)
            %   [T_OUT_BUFFER, T_OUT_D0, T_OUT_D1, T_OUT_D2, T_OUT_D3] = node0.wl_getTriggerInputIDs(node0)
            if(nargout>length(obj.trigger_manager.triggerOutputIDs))
               error(generatemsgid('TooManyTriggerInputs'),'Node %d has only %d trigger inputs. User has requested %d trigger input IDs',obj.ID,length(obj.trigger_manager.triggerOutputIDs),nargout); 
            end
            varargout = num2cell(obj.trigger_manager.triggerOutputIDs(1:nargout));  
        end    
        
        function delete(obj)
            %Clears the transport object to close any open socket
            %connections in the event that the node object is deleted.
            if(~isempty(obj.transport))
                obj.transport.delete();
                obj.transport = [];
            end
        end
    end
    
   
    methods(Static=true,Hidden=true)   
        function command_out = calcCmd_helper(group,command)
            % Performs the actual command calculation for calcCmd
            command_out = uint32(bitor(bitshift(group,24),command));
        end
    end
        
    methods(Hidden=true)
        %These methods are hidden because users are not intended to call
        %them directly from their WARPLab scripts.     
        
        function out = calcCmd(obj, grp, cmdID)
            % Takes a group ID and a cmd ID to form a single
            % uint32 command. Every WARPLab module calls this method
            % to construct their outgoing commands.
            switch(lower(grp))
                case 'node'
                    out = obj.calcCmd_helper(obj.GRPID_NODE,cmdID);
                case 'interface'
                    out = obj.calcCmd_helper(obj.GRPID_IFC,cmdID);
                case 'baseband'
                    out = obj.calcCmd_helper(obj.GRPID_BB,cmdID);
                case 'trigger_manager'
                    out = obj.calcCmd_helper(obj.GRPID_TRIGMNGR,cmdID);
                case 'transport'
                    out = obj.calcCmd_helper(obj.GRPID_TRANS,cmdID);
                case 'user_extension'
                    out = obj.calcCmd_helper(obj.GRPID_USER,cmdID);
            end
        end        
        function out = procCmd(obj, nodeInd, node, cmdStr, varargin)
            %wl_node procCmd(obj, nodeInd, node, varargin)
            % obj: node object (when called using dot notation)
            % nodeInd: index of the current node, when wl_node is iterating over nodes
            % node: current node object (the owner of this baseband)
            % varargin:
            out = [];
            cmdStr = lower(cmdStr);
            switch(cmdStr)
                case 'get_hardware_info'
                    % Reads details from the WARP hardware and updates node object parameters
                    %
                    % Arguments: none
                    % Returns: none (access updated node parameters if needed)
                    %
                    % Hardware support:
                    %  All:
                    %   WARPLab design version
                    %   Hardware version
                    %   Ethernet MAC Address
                    %   Number of Interface Groups
                    %   Number of Interfaces
                    %
                    %  WARP v3:
                    %   Serial number
                    %   Virtex-6 FPGA DNA
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_INFO));
                    resp = node.sendCmd(myCmd);
                    resp = resp.getArgs();
                    %Response payload (all u32):
                    % 1: Serial number
                    % 2: FPGA DNA MSB
                    % 3: FPGA DNA LSB
                    % 4: MAC address bytes 5:4
                    % 5: MAC address bytes 3:0
                    % 6: [hw_version wl_ver_major wl_ver_minor wl_ver_rev]
                    % 7: number of interface groups
                    % 8:N: interface group descriptions (one u32 per group)

                    % If the serial number was provided via the network setup, then check the serial number against the HW
                    if ( ~isempty( obj.serialNumber ) ) 
                        if ( ~eq( obj.serialNumber, resp(1) ) )
                            error(generatemsgid('SerialNumberFailure'),'Serial Number provided in config, W3-a-%d, does not match HW serial number W3-a-%d ', obj.serialNumber, resp(1))         
                        end
                    else 
                        obj.serialNumber = resp(1);
                    end
                    
                    obj.fpgaDNA = bitshift(resp(2), 32) + resp(3);
                    
                    obj.eth_MAC_addr = 2^32*double(bitand(resp(4),2^16-1)) + double(resp(5));
                    
                    obj.hwVer = bitand(bitshift(resp(6), -24), 255);
                    obj.wlVer_major = double(bitand(bitshift(resp(6), -16), 255));
                    obj.wlVer_minor = double(bitand(bitshift(resp(6), -8), 255));
                    obj.wlVer_revision = double(bitand(resp(6), 255));
                    
                    obj.baseband.rxIQLen = double(bitand(resp(7),65535));
                    obj.baseband.txIQLen = double(bitand(bitshift(resp(7),-16),65535));
                    obj.baseband.rxRSSILen = (obj.baseband.rxIQLen)/4;
                    
                    %Trigger Manager -- core runs at different speed
                    %depending on HW version.
                    obj.trigger_manager.setNumInputs(double(bitand(resp(8),255)));
                    obj.trigger_manager.setNumOutputs(double(bitand(bitshift(resp(8),-8),255)));
                    obj.trigger_manager.coreVersion = double(bitand(bitshift(resp(8),-16),255));
                    switch(obj.hwVer)
                        case 1
                            
                        case 2
                            obj.trigger_manager.delayStep_ns = (1/(80e6))*1e9;
                            obj.trigger_manager.delayMax_ns = 31*obj.trigger_manager.delayStep_ns;
                        case 3
                            obj.trigger_manager.delayStep_ns = (1/(160e6))*1e9;
                            obj.trigger_manager.delayMax_ns = 31*obj.trigger_manager.delayStep_ns;
                    end
                    
                    obj.num_interfacesGroups = resp(9);
                    obj.num_interfaces = resp(10);
                    %%TODO- parse each interface descriptor and create
                    %%interface group objects
                case 'get_fpga_temperature'
                    % Reads the temperature (in Celsius) from the FPGA
                    %
                    % Arguments: none
                    % Returns: (double currTemp), (double minTemp), (double maxTemp)
                    %   currTemp - current temperature of FPGA in degrees Celsius
                    %   minTemp - minimum recorded temperature of FPGA in degrees Celsius
                    %   maxTemp - maximum recorded temperature temperature of FPGA in degrees Celsius
                    
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_TEMPERATURE));
                    resp = node.sendCmd(myCmd);
                    resp = resp.getArgs();
                    %Convert from raw temperature to Celsius
                    out = ((double(resp)/65536.0)/0.00198421639) - 273.15;

                case 'initialize'
                    % Initializes the node; this must be called at least once per power cycle of the node
                    %
                    % Arguments: none
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_INITIALIZE));
                    node.sendCmd(myCmd);
                case 'identify'
                    % Blinks the user LEDs on the WARP node, to help identify MATLAB node-to-hardware node mapping
                    %
                    % Arguments: none
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_IDENTIFY));
                    node.sendCmd(myCmd);
                case 'node_config_reset'
                    % Resets the HW state of the node to accept a new node configuration
                    %
                    % Arguments: none
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_NODE_CONFIG_RESET));                    
                    myCmd.addArgs( uint32( node.serialNumber ) );  
                    node.sendCmd(myCmd);
                otherwise
                    error(generatemsgid('UnknownCommand'), 'unknown node command %s', cmdStr);
            end
            
            if(iscell(out)==0 && numel(out)~=1)
                out = {out}; 
            end     
        end
        
        function out = sendCmd(obj, cmd)
            %This method is responsible for serializing the command
            %objects provided by each of the components of WARPLab into a
            %vector of values that the transport object can send. This
            %method is used when the board must at least provide a
            %transport-level acknowledgement. If the response has actual
            %payload that needs to be provided back to the calling method,
            %that response is passed as an output of this method.
            resp = obj.transport.send(cmd.serialize());
            
            out = wl_resp(resp);
        end
        
        function sendCmd_noresp(obj, cmd)
            %This method is responsible for serializing the command
            %objects provided by each of the components of WARPLab into a
            %vector of values that the transport object can send. This 
            %method is used when a board should not send an immediate
            %response. The transport object is non-blocking -- it will send
            % the command and then immediately return.
            obj.transport.send(cmd.serialize(), 'noresp');
        end 
        
        function out = receiveResp(obj)
            %This method will return a vector of responses that are
            %sitting in the host's receive queue. It will empty the queue
            %and return them all to the calling method.
            resp = obj.transport.receive();
            if(~isempty(resp))
                %Create vector of response objects if received string of bytes
                %is a concatenation of many responses
                done = false;
                index = 1;
                while ~done
                    out(index) = wl_resp(resp);
                    currRespLen = length(out(index).serialize);
                    if(currRespLen<length(resp))
                        resp = resp((currRespLen+1):end);
                    else
                        done = true;
                    end
                    index = index+1;
                end
            else
                out = [];
            end
        end
        
        function disp(obj)
            %This is a "pretty print" method to summmarize details about
            %wl_node objects and print them in a table on Matlab's command
            %line.
            hasUserExt = 0;
            strLen = 0;
            for n = 1:length(obj)
               currObj = obj(n);
               hasUserExt = hasUserExt || ~isempty(currObj.user); 
               if(~isempty(currObj.user))
                  strLen = max(strLen,length(class(currObj.user))+3); %+3 is for surrounding spaces and the | 
               end
            end
            
            extraTitle = '';
            extraLine = '';
            extraArgs = '';
            
            if(hasUserExt)
                extraTitle = repmat(' ',1,strLen-1);
                extraLine = repmat('-',1,strLen-1);
                extraTitle = [extraTitle,'|'];
                extraLine = [extraLine,'-'];
                
                newTitle = 'User Ext.';
                extraTitle((strLen - length(newTitle) - 1):(end - 2)) = newTitle;
            end
            
            

            
                    fprintf('Displaying properties of %d wl_node objects:\n',length(obj));
                    fprintf('|  ID |  WLVER |  HWVER |    Serial # |  Ethernet MAC Addr |          Address | %s\n',extraTitle)
                    fprintf('-------------------------------------------------------------------------------%s\n',extraLine)
            for n = 1:length(obj)
                currObj = obj(n); 
                
                if(~isempty(currObj.user))
                    myFormat = sprintf('%%%ds |',strLen-2);
                    extraArgs = sprintf(myFormat,class(currObj.user));
                elseif(hasUserExt)
                    extraArgs = extraLine;
                    extraArgs(end) = '|';
                end
                
                if(isempty(currObj.ID))
                    fprintf('|     N/A     Node object has not been initialized                            |%s\n',extraArgs)
                else
                    ID = sprintf('%d',currObj.ID);
                    WLVER = sprintf('%d.%d.%d',currObj.wlVer_major,currObj.wlVer_minor,currObj.wlVer_revision);
                    HWVER = sprintf('%d',currObj.hwVer);
                    
                    if(currObj.hwVer == 3)
                        SN = sprintf('W3-a-%05d',currObj.serialNumber);
                        %DNA = sprintf('%d',currObj.fpgaDNA);
                    else
                        SN = 'N/A';
                        %DNA = 'N/A';
                    end
                    temp = dec2hex(uint64(currObj.eth_MAC_addr),12);
                    
                    MACADDR = sprintf('%2s-%2s-%2s-%2s-%2s-%2s',...
                        temp(1:2),temp(3:4),temp(5:6),temp(7:8),temp(9:10),temp(11:12));

                    if ( ~isempty( currObj.transport ) & ~isempty( currObj.transport.address ) )
                        ADDR = currObj.transport.address;
                    else
                        ADDR = '';
                    end                     
                        
                    fprintf('|%4s |%7s |%7s |%12s |%19s |%17s |%s\n',ID,WLVER,HWVER,SN,MACADDR,ADDR,extraArgs);
                    
                end
                    fprintf('-------------------------------------------------------------------------------%s\n',extraLine)
            end
        end        
    end %end methods(Hidden)
end %end classdef
