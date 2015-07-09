classdef wl_trigger_manager_proc < wl_trigger_manager & handle_light
%Trigger manager object    
% User code should not use this object directly-- the parent wl_node will
%  instantiate the appropriate baseband object for the hardware in use
    properties (SetAccess = public)
        coreVersion;
        delayStep_ns;
        delayMax_ns;
    end
    properties (SetAccess = protected)
        description;    %Description of this trigger manager object
        triggerInputIDs;
        triggerOutputIDs;
        numInputs; 
        numOutputs;
    end
    properties(Hidden = true,Constant = true)
        %These constants define specific command IDs used by this object.
        %Their C counterparts are found in wl_trigger_manager.h
        GRP = 'trigger_manager';
        CMD_ADD_ETHERNET_TRIG = 1;
        CMD_DEL_ETHERNET_TRIG = 2;
        CMD_CLR_ETHERNET_TRIGS = 3;
        CMD_INPUT_SEL = 4;
        CMD_OUTPUT_DELAY = 5;
        CMD_OUTPUT_HOLD = 6;
        CMD_OUTPUT_READ = 7;
        CMD_OUTPUT_CLEAR = 8;
        CMD_INPUT_ENABLE = 9;
        CMD_INPUT_DEBOUNCE = 10;
        CMD_ENERGY_BUSY_THRESH = 11;
        CMD_ENERGY_AVG_LEN = 12;
        CMD_ENERGY_BUSY_MIN_LEN = 13;
        CMD_ENERGY_IFC_SELECTION = 14;
        CMD_TEST_TRIGGER = 101;
    end
    methods
        function obj = wl_trigger_manager_proc()
            obj.description = 'WARPLab Trigger Configuration Module';
        end 
        
        function out = setNumInputs(obj,N)
            obj.numInputs = N;
            obj.triggerInputIDs = 1:N;
        end
        
        function out = setNumOutputs(obj,N)
            obj.numOutputs = N;
            obj.triggerOutputIDs = 1:N;
        end
        
        function out = procCmd(obj,n,node,varargin)
            %wl_trigger_manager procCmd(obj, nodeInd, node, varargin)
            % obj: node object (when called using dot notation)
            % nodeInd: index of the current node, when wl_node is iterating over nodes
            % node: current node object (the owner of this baseband)
            % varargin:
            out = [];
            cmdStr = varargin{1};
            cmdStr = lower(cmdStr);
            
            if(length(varargin)>1)
               varargin = varargin(2:end);
            else
               varargin = {};
            end
            switch(cmdStr)
                case 'add_ethernet_trigger'
                    % Associates node to a trigger input
                    %
                    % Arguments: (wl_trigger_manager TRIGGER)
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_ADD_ETHERNET_TRIG));
                    triggers = varargin{1};
                    triggerID = uint32(0);
                    for index = 1:length(triggers)
                        triggerID = bitor(triggerID,triggers(index).ID);
                    end
                    myCmd.addArgs(triggerID);                        
                    node.sendCmd(myCmd);
                case 'delete_ethernet_trigger'
                    % Deassociates node to a trigger input
                    %
                    % Arguments: (wl_trigger_manager TRIGGER)
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_DEL_ETHERNET_TRIG));
                    triggers = varargin{1};
                    triggerID = uint32(0);
                    for index = 1:length(triggers)
                        triggerID = bitor(triggerID,triggers(index).ID);
                    end
                    myCmd.addArgs(triggerID);                        
                    node.sendCmd(myCmd);
                case 'clear_ethernet_triggers'
                    % Clears all trigger associations in the node
                    %
                    % Arguments: none
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_CLR_ETHERNET_TRIGS));   
                    node.sendCmd(myCmd);     
                case 'get_ethernet_trigger'
                    % Reads current trigger association from node
                    %
                    % Arguments: node
                    % Returns: (uint32 TRIGGER_ASSOCIATION)
                    %  TRIGGER_ASSOCIATION: bit-wise AND of associated
                    %                       trigger IDs
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_ADD_ETHERNET_TRIG));
                    triggerID = uint32(0);
                    myCmd.addArgs(triggerID);                        
                    resp = node.sendCmd(myCmd);
                    out = resp.getArgs();
                case 'output_config_input_selection'
                    % Selects which trigger inputs drive the selected outputs
                    % Arguments: (uint32 OUTPUTS), (uint32 OR_INPUTS), [optional] (uint32 AND_INPUTS)
                    % Returns: none
                    %
                    % OUTPUTS:      vector of output trigger IDs, provided by
                    %               wl_getTriggerOutputIDs
                    %
                    % OR_INPUTS:    vector of input trigger IDs, provided by
                    %               wl_getTriggerInputIDs. Any triggers in
                    %               this vector that assert will cause the
                    %               output trigger to assert.
                    %
                    % AND_INPUTS:   vector of input trigger IDs, provided by
                    %               wl_getTriggerInputIDs. Only if all triggers
                    %               in this vector assert will the output 
                    %               trigger assert.   
                    %
                    % Usage note: This command replaces the current input
                    % selection on the board. Previous state is not saved.
                    
                    if(length(varargin) == 2)
                        OUTPUTS = varargin{1};
                        OR_INPUTS = varargin{2};
                        AND_INPUTS = [];
                    elseif(length(varargin) == 3)
                        OUTPUTS = varargin{1};
                        OR_INPUTS = varargin{2};
                        AND_INPUTS = varargin{3};
                    end

                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_INPUT_SEL));
                    
                    if(~isempty(OUTPUTS))
                        myCmd.addArgs(uint32(length(OUTPUTS)));
                        myCmd.addArgs(uint32(OUTPUTS));
                    else
                        error(generatemsgid('NoOutputSelected'),'Output trigger argument must be non-empty')
                    end
                    myCmd.addArgs(uint32(length(OR_INPUTS)));
                    if(~isempty(OR_INPUTS))
                        myCmd.addArgs(uint32(OR_INPUTS));
                    end
                    myCmd.addArgs(uint32(length(AND_INPUTS)));
                    if(~isempty(AND_INPUTS))
                        myCmd.addArgs(uint32(AND_INPUTS));
                    end
                    node.sendCmd(myCmd);
                    
                case 'output_config_delay'
                    % Configures specified output triggers to be have an
                    % additional delay relative to their inputs
                    %
                    % Arguments: (uint32 OUTPUTS), (double DELAY_NS)
                    % Returns: none
                    %
                    % OUTPUTS:      vector of output trigger IDs, provided by
                    %               wl_getTriggerOutputIDs
                    %
                    % DELAY_NS:     scalar value of the intended delay,
                    %               specified in nanoseconds (1e-9 seconds)
                    
                    OUTPUTS = varargin{1};
                    delay_ns = varargin{2};
                    
                    

                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_OUTPUT_DELAY));
                    
                    if(~isempty(OUTPUTS))
                        myCmd.addArgs(uint32(length(OUTPUTS)));
                        myCmd.addArgs(uint32(OUTPUTS));
                    else
                        error(generatemsgid('NoOutputSelected'),'Output trigger argument must be non-empty')
                    end
                   
                    
                    myCmd.addArgs(floor(delay_ns/obj.delayStep_ns));
                    node.sendCmd(myCmd);
                case 'output_config_hold_mode'
                    % Configures whether specified output triggers should
                    % hold their outputs once triggered
                    %
                    % Arguments: (uint32 OUTPUTS), (string MODE)
                    % Returns: none
                    %
                    % OUTPUTS:      vector of output trigger IDs, provided by
                    %               wl_getTriggerOutputIDs
                    %
                    % MODE:         'enable' or 'disable'
                    
                    OUTPUTS = varargin{1};
                    mode = varargin{2};
                    
                    if(strcmp(lower(mode),'enable'))
                        mode = 0;
                    elseif(strcmp(lower(mode),'disable'))
                        mode = 1;
                    else
                        error(generatemsgid('NoOutputSelected'),'mode selection must be ''enable'' or ''disable''')
                    end
                    
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_OUTPUT_HOLD));
                    
                    if(~isempty(OUTPUTS))
                        myCmd.addArgs(uint32(length(OUTPUTS)));
                        myCmd.addArgs(uint32(OUTPUTS));
                    else
                        error(generatemsgid('NoOutputSelected'),'Output trigger argument must be non-empty')
                    end
                   
                    myCmd.addArgs(mode);
                    node.sendCmd(myCmd);
                    
                case 'output_state_read'
                    % Reads current state of output triggers. Note: this
                    % command is intended to be used on output triggers
                    % that have enabled their hold mode.
                    %
                    % Arguments: (uint32 OUTPUTS)
                    % Returns: (bool STATES)
                    %
                    % OUTPUTS:      vector of output trigger IDs, provided by
                    %               wl_getTriggerOutputIDs
                    %
                    % STATES:       vector of (true, false) trigger states
                    %               corresponding to state of OUTPUTS vector
                    
                    OUTPUTS = varargin{1};
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_OUTPUT_READ));
                    if(~isempty(OUTPUTS))
                        myCmd.addArgs(uint32(length(OUTPUTS)));
                        myCmd.addArgs(uint32(OUTPUTS));
                    else
                        error(generatemsgid('NoOutputSelected'),'Output trigger argument must be non-empty')
                    end
                  
                    resp = node.sendCmd(myCmd);
                    out = resp.getArgs();
                    
                case 'output_state_clear'
                    % Clears current state of output triggers. 
                    %
                    % Arguments: (uint32 OUTPUTS)
                    % Returns: none
                    %
                    % OUTPUTS:      vector of output trigger IDs, provided by
                    %               wl_getTriggerOutputIDs
                    %
                    
                    OUTPUTS = varargin{1};
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_OUTPUT_CLEAR));
                    if(~isempty(OUTPUTS))
                        myCmd.addArgs(uint32(length(OUTPUTS)));
                        myCmd.addArgs(uint32(OUTPUTS));
                    else
                        error(generatemsgid('NoOutputSelected'),'Output trigger argument must be non-empty')
                    end
                  
                    resp = node.sendCmd(myCmd);
                    out = resp.getArgs();
                    
                case 'input_config_enable_selection'
                    % Configures specified input triggers to be enabled
                    % as inputs that feed the trigger manager core.
                    % Note: This command disables all inputs before
                    % enabling the selected inputs -- no previous state is
                    % stored in the node.
                    %
                    % Arguments: (uint32 INPUTS)
                    % Returns: none
                    %
                    % INPUTS:      vector of output trigger IDs, provided by
                    %              wl_getTriggerInputIDs
                    
                    INPUTS = varargin{1};
                    
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_INPUT_ENABLE));
                    
                    if(~isempty(INPUTS))
                        myCmd.addArgs(uint32(length(INPUTS)));
                        myCmd.addArgs(uint32(INPUTS));
                    else
                        error(generatemsgid('NoInputSelected'),'Input trigger argument must be non-empty')
                    end
                   
                    node.sendCmd(myCmd);
                    
                case 'input_config_debounce_mode'
                    % Configures specified input triggers to enable or
                    % disable debounce circuit. Note: debounce circuit adds
                    % delay of 4 cycles, where each cycle is a duration
                    % specified in the delayStep_ns property of the
                    % wl_manager_proc.m class.
                    %
                    % Arguments: (uint32 INPUTS), (string MODE)
                    % Returns: none
                    %
                    % INPUTS:      vector of output trigger IDs, provided by
                    %              wl_getTriggerInputIDs
                    %
                    % MODE:         'enable' or 'disable'
                    
                    INPUTS = varargin{1};
                    mode = varargin{2};
                    
                    if(strcmp(lower(mode),'enable'))
                        mode = 1;
                    elseif(strcmp(lower(mode),'disable'))
                        mode = 0;
                    else
                        error(generatemsgid('NoOutputSelected'),'mode selection must be ''enable'' or ''disable''')
                    end
                    
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_INPUT_DEBOUNCE));
                    
                    for k = 1:length(INPUTS)
                        if((INPUTS(k) == 1) || (INPUTS(k) == 2) || (INPUTS(k) == 3) || (INPUTS(k) == 4))
                            error(generatemsgid('InvalidInputSelected'),'one or more selected inputs do not have debounce circuitry')
                        end
                    end
                    
                    if(~isempty(INPUTS))
                        myCmd.addArgs(uint32(length(INPUTS)));
                        myCmd.addArgs(uint32(INPUTS));
                    else
                        error(generatemsgid('NoInputSelected'),'Input trigger argument must be non-empty')
                    end
                     
                    myCmd.addArgs(mode);
                    node.sendCmd(myCmd);
                    
                case 'energy_config_busy_threshold'
                    % Configures the threshold above which RSSI is
                    % considered as a "busy" medium.
                    %
                    % Arguments: (uint32 THRESH)
                    % Returns: none
                    %
                    % THRESH:      busy threshold. For the MAX2829-based
                    %              interfaces, WARP uses a 10-bit ADC for
                    %              RSSI (range of [0,1023]).
                    %
                    % Note: RSSI averaging in the core does NOT divide by
                    % the number of samples that are summed together.
                    % Averaging by N cycles means that the maximum possible
                    % RSSI post-averaging is N*1023.
                    
                    thresh_busy = varargin{1};
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_ENERGY_BUSY_THRESH));
                    myCmd.addArgs(thresh_busy);
                    node.sendCmd(myCmd);
                
                case 'energy_config_average_length'
                    % Configures the number of samples over which RSSI is
                    % averaged before it is compared to any threshold.
                    %
                    % Arguments: (uint32 LENGTH)
                    % Returns: none
                    %
                    % LENGTH:      Number of samples over which RSSI is
                    %              averaged.
                    %
                    % Note: For all hardware versions, RSSI is sampled at
                    % 10 MHz. Each sample is, therefore, 100 ns.
                    
                    avgLen = varargin{1};
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_ENERGY_AVG_LEN));
                    myCmd.addArgs(avgLen);
                    node.sendCmd(myCmd);
                 
                case 'energy_config_busy_minlength'
                    % Average RSSI samples must exceed the busy threshold
                    % for a minimum number of samples before the trigger is
                    % activated. This command sets this minimum value.
                    %
                    % Arguments: (uint32 LENGTH)
                    % Returns: none
                    %
                    % LENGTH:      Minimum number of samples that RSSI must
                    %              be busy before trigger is raised.
                    
                    minLen = varargin{1};
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_ENERGY_BUSY_MIN_LEN));
                    myCmd.addArgs(minLen);
                    node.sendCmd(myCmd);
                    
                case 'energy_config_interface_selection'
                    % Selects the interfaces from which energy detection
                    % should base its decision
                    %
                    % Arguments: (uint32 IFCSELECTION)
                    % Returns: none
                    %
                    % IFCSELECTION:     One or more interfaces that the
                    %                   energy detector system should
                    %                   monitor
                    %
                    % Note: IFCSELECTION is intended to be used with the
                    % return values from the wl_getInterfaceIDs method.
                    
                    ifcSel = varargin{1};
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_ENERGY_IFC_SELECTION));
                    myCmd.addArgs(ifcSel);
                    node.sendCmd(myCmd);
                    
                case 'test_trigger'
                    % Sends a test trigger
                    %
                    % Arguments: none
                    % Returns: none
                    
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_TEST_TRIGGER));
                    resp = node.sendCmd(myCmd);
                    out = resp.getArgs();
                    
                otherwise
                    error(generatemsgid('UnknownCommand'),'unknown command ''%s''',cmdStr);
            end
      
            
            if(iscell(out)==0 && numel(out)~=1)
                out = {out}; 
            end
            
         end
        
        end
end