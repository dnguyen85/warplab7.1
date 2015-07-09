%==============================================================================
% Function wl_initNodes()
%
% Input:  
%     - Single number
%     - Array of struct (derived from wl_networkSetup())
%     - Array of wl_nodes; Either optional array of numbers, or array of struct 
%
% Output:
%     - Array of wl_nodes
% 
%==============================================================================

function nodes = wl_initNodes(varargin)
    [MAJOR,MINOR,REVISION,XTRA] = wl_ver();
    
    if nargin == 0
        error(generatemsgid('InsufficientArguments'),'Not enough arguments are provided');
    elseif nargin == 1
        switch( class(varargin{1}) ) 
            case 'wl_node'
                nodes    = varargin{1};
                numNodes = length(nodes);
                nodeIDs  = 0:(numNodes-1);            % Node IDs default:  0 to (number of nodes in the array)
            case 'struct'
                numNodes        = length(varargin{1}); 
                nodes(numNodes) = wl_node;
                nodeIDs         = varargin{1};         % Node IDs are specified in the input structure
            case 'double'
                numNodes        = varargin{1}; 
                nodes(numNodes) = wl_node;
                nodeIDs         = 0:(numNodes-1);     % Node IDs default:  0 to (number of nodes specified)
            otherwise
                error(generatemsgid('UnknownArg'),'Unknown argument.  Argument is of type "%s", need "wl_node", "struct", or "double"', class(varargin{1}));
        end        
    elseif nargin == 2

        switch( class(varargin{1}) ) 
            case 'wl_node'
                nodes    = varargin{1};
                numNodes = length(nodes);
            case 'double'
                numNodes        = varargin{1}; 
                nodes(numNodes) = wl_node;
            otherwise
                error(generatemsgid('UnknownArg'),'Unknown argument.  Argument is of type "%s", need "wl_node" or "double"', class(varargin{1}));
        end        

        switch( class(varargin{2}) ) 
            case 'struct'
                nodeIDs         = varargin{2};         % Node IDs are specified in the input structure
            case 'double'
                nodeIDs         = varargin{2};        % Node IDs default:  0 to (number of nodes specified)
            otherwise
                error(generatemsgid('UnknownArg'),'Unknown argument.  Argument is of type "%s", need "struct", or "double"', class(varargin{2}));
        end        
        
        if(length(nodeIDs)~=numNodes)
            error(generatemsgid('DimensionMismatch'),'Number of nodes does not match ID vector');
        end     
    else
        error(generatemsgid('TooManyArguments'),'Too many arguments provided');
    end

    
    for n = numNodes:-1:1
        currNode = nodes(n);

        % If we are doing a network setup of the node based on the input structure then create the broadcast packet and send it 
        % Note: 
        %   - Node must be configured with dip switches 0xF
        %     - Node will initialize itself to IP address of 10.0.0.0 and wait for a broadcast message to configure itself
        %     - Node will check against the serial number (only last 5 digits; "W3-a-" is not stored in EEPROM)
        if( strcmp( class( nodeIDs ), 'struct') )
        
            configFile = which('wl_config.ini');
            if(isempty(configFile))
               error(generatemsgid('wl_node:MissingConfig'),'cannot find wl_config.ini. please run wl_setup.m'); 
            end
            readKeys = {'network','','transport',''};
            transport = inifile(configFile,'read',readKeys);
            transport = transport{1};

            switch(transport)
                case 'pnet'
                    transport_bcast   = wl_transport_eth_udp_pnet_bcast.instance();
                    transport_unicast = wl_transport_eth_upd_pnet;
                case 'java'
                    transport_bcast   = wl_transport_eth_udp_java_bcast;
                    transport_unicast = wl_transport_eth_udp_java;
            end

            % Open a broadcast transport to send the configure command to the node
            transport_bcast.open();
            tempNode      = wl_node;

            % Send serial number, node ID, and IP address
            myCmd         = wl_cmd( tempNode.calcCmd( tempNode.GRP, tempNode.CMD_IP_SETUP ) );
            myCmd.addArgs( uint32( sscanf( nodeIDs(n).serialNumber, 'W3-a-%d' ) ) );  
            myCmd.addArgs( nodeIDs(n).IDUint32 );  
            myCmd.addArgs( nodeIDs(n).ipAddressUint32 );  
            transport_bcast.send('message',myCmd.serialize());
        end

        % Now that the node has a valid IP address, we can apply the configuration
        currNode.applyConfiguration(nodeIDs(n));
      
        if(currNode.wlVer_major ~= MAJOR || currNode.wlVer_minor ~= MINOR)
            myErrorMsg = sprintf('Node %d reports WARPLab version %d.%d.%d while this PC is configured with %d.%d.%d', ...
                nodeIDs(n),currNode.wlVer_major,currNode.wlVer_minor,currNode.wlVer_revision,MAJOR,MINOR,REVISION);
            error(generatemsgid('VersionMismatch'),myErrorMsg);
        end
        
        if(currNode.wlVer_revision ~= REVISION)
            myWarningMsg = sprintf('Node %d reports WARPLab version %d.%d.%d while this PC is configured with %d.%d.%d', ...
                nodeIDs(n),currNode.wlVer_major,currNode.wlVer_minor,currNode.wlVer_revision,MAJOR,MINOR,REVISION);
            warning(generatemsgid('VersionMismatch'),myWarningMsg);
        end
    end
    
    %Send a test broadcast trigger command
    if(strcmp(class(nodes(1).trigger_manager),'wl_trigger_manager_proc'))
        
        configFile = which('wl_config.ini');
        if(isempty(configFile))
           error(generatemsgid('wl_node:MissingConfig'),'cannot find wl_config.ini. please run wl_setup.m'); 
        end
        readKeys = {'network','','transport',''};
        transport = inifile(configFile,'read',readKeys);
        transport = transport{1};

        switch(transport)
            case 'pnet'
                transport_bcast = wl_transport_eth_udp_pnet_bcast.instance();
            case 'java'
                transport_bcast = wl_transport_eth_udp_java_bcast;
        end

        transport_bcast.open();
        tempNode = wl_node;
        myCmd = wl_cmd(tempNode.calcCmd(wl_trigger_manager_proc.GRP,wl_trigger_manager_proc.CMD_TEST_TRIGGER));
        bcastTestFlag = uint32(round(2^32 * rand));
        myCmd.addArgs(bcastTestFlag); %Signals to the board that this is writing the received trigger test variable
        transport_bcast.send('message',myCmd.serialize());

        resp = wl_triggerManagerCmd(nodes,'test_trigger');

        I = find(resp~=bcastTestFlag);
        for nodeIndex = I
           warning(generatemsgid('TriggerFailure'),'Node %d with Serial # %d failed trigger test',nodes(nodeIndex).ID,nodes(nodeIndex).serialNumber) 
        end

        if(any(resp~=bcastTestFlag))
           error(generatemsgid('TriggerFailure'),'Broadcast triggers are not working. Please verify your ARP table has an entry for the broadcast address on your WARPLab subnet') 
        end

    end
    
    
    
    %nodes.wl_nodeCmd('initialize');
    
end