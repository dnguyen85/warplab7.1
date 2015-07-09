classdef wl_baseband_buffers < wl_baseband
%Baseband object for the warplab_buffers reference baseband
% User code should not use this object directly-- the parent wl_node will
%  instantiate the appropriate baseband object for the hardware in use
properties (SetAccess = protected)
        description;    %Description of this baseband object
    end
    properties (SetAccess = public)
        txIQLen;        %Buffer length for transmit I/Q
        rxIQLen;        %Buffer length for receive I/Q
        rxRSSILen;      %Buffer length for receive RSSI
        readTimeout;    %Maximum time spent waiting on board to send sample packets
    end
    properties(Hidden = true,Constant = true)
        %These constants define specific command IDs used by this object.
        %Their C counterparts are found in wl_baseband.h
        GRP = 'baseband';
        CMD_TX_DELAY = 1;
        CMD_TX_LENGTH = 2;
        CMD_TX_MODE = 3;
        CMD_TX_BUFF_EN = 4;
        CMD_RX_BUFF_EN = 5;
        CMD_TX_RX_BUFF_DIS = 6;
        CMD_WRITE_IQ = 7;
        CMD_READ_IQ = 8;
        CMD_READ_RSSI = 9;
        CMD_RX_LENGTH = 10;
        CMD_AGC_STATE = 30;
        CMD_AGC_THRESH = 31;
        CMD_AGC_TARGET = 32;
        CMD_AGC_NOISE_EST = 33;
        CMD_AGC_DCO_EN_DIS = 34;
        CMD_AGC_TRIG_DELAY = 35;
        CMD_AGC_RESET = 36;
        CMD_AGC_DONE_ADDR = 37;
    end
    methods
        function obj = wl_baseband_buffers()
            obj.description = 'WARPLab Baseband for wl_buffers';
            obj.readTimeout = 0.1; %default read timeout (in seconds)
        end 
        
        function out = procCmd(obj, nodeInd, node, varargin)
            %wl_baseband_buffers procCmd(obj, nodeInd, node, varargin)
            % obj: baseband object (when called using dot notation)
            % nodeInd: index of the current node, when wl_node is iterating over nodes
            % node: current node object (the owner of this baseband)
            % varargin:
            %  Two forms of arguments for baseband commands:
            %   (...,'theCmdString', someArgs) - for commands that affect all buffers
            %   (...,BUFF_SEL, 'theCmdString', someArgs) - for commands that affect specific buffers
            out = [];
            transport = node.transport;
            
            %TODO: This should be refactored
            if(strcmp(varargin{1},'RF_ALL'))
                buffSel = rfSel_to_bbSel(sum(node.interfaceGroups{1}.ID));
                cmdStr = varargin{2};

               if(length(varargin)>2)
                   varargin = varargin(3:end);
               else
                   varargin = {};
               end
            elseif(ischar(varargin{1}))
               %No buffers specified
               cmdStr = varargin{1};    
               if(length(varargin)>1)
                   varargin = varargin(2:end);
               else
                   varargin = {};
               end
            else
               %Buffers specified
               % Reference implementaiton uses the same RF_x values to identify RF interfaces
               %  and their associated buffers. A more sophisticated baseband (where interfaces:buffers aren't 1:1)
               %  would need a different scheme for identifying buffers from user code
               buffSel = rfSel_to_bbSel(varargin{1});
               cmdStr = varargin{2};

               if(length(varargin)>2)
                   varargin = varargin(3:end);
               else
                   varargin = {};
               end
            end
            
            cmdStr = lower(cmdStr);
            switch(cmdStr)
                case 'tx_delay'
                    %Transmit delay- gets or sets the number of sample periods the baseband 
                    % waits between the trigger and starting the transission
                    %
                    % Requires BUFF_SEL: No
                    % Arguments: none or (uint32 TX_DLY)
                    % Returns: (uint32 TX_DLY) or none
                    %
                    % If an argument is specified, this command enters a write mode where
                    % that argument is written to the board. If no argument is specified,
                    % the current value of TX_DLY is read from the board.
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_TX_DELAY));
                    if(isempty(varargin)) %Read Mode
                        resp = node.sendCmd(myCmd);
                        ret = resp.getArgs();
                        out = ret(1);
                    else %Write Mode
                        delay = varargin{1};
                        if(length(delay)>1)
                           delay = delay(nodeInd); 
                        end
                        if(delay<0 || delay >= (obj.txIQLen))
                            error(generatemsgid('OutOfRange'),'%s: tx delay must be in [0,txIQLen - 1]',cmdStr);
                        end
                        myCmd.addArgs(delay);                        
                        node.sendCmd(myCmd);
                    end
                case 'tx_length'
                    %Transmit length- reads or sets the duration of each transmit cycle, in sample periods 
                    %
                    % Requires BUFF_SEL: No
                    % Arguments: none or (uint32 TX_LEN)
                    % Returns: (uint32 TX_LEN) or none
                    %
                    % If an argument is specified, this command enters a write mode where
                    % that argument is written to the board. If no argument is specified,
                    % the current value of TX_LEN is read from the board.
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_TX_LENGTH));
                    if(isempty(varargin)) %Read Mode
                        resp = node.sendCmd(myCmd);
                        ret = resp.getArgs();
                        out = ret(1)+1;
                    else %Write Mode
                        len = varargin{1};
                        if(length(len)>1)
                           len = len(nodeInd); 
                        end
                        if(len<1 || len > (obj.txIQLen))
                            error(generatemsgid('OutOfRange'),'%s: tx length must be in [1,txIQLen]',cmdStr);
                        end
                        len = len-1;
                        myCmd.addArgs(len);
                        node.sendCmd(myCmd);
                    end
                case 'rx_length'
                    %Receive length- reads or sets the duration of each receive cycle, in sample periods 
                    %
                    % Requires BUFF_SEL: No
                    % Arguments: none or (uint32 RX_LEN)
                    % Returns: (uint32 RX_LEN) or none
                    %
                    % If an argument is specified, this command enters a write mode where
                    % that argument is written to the board. If no argument is specified,
                    % the current value of RX_LEN is read from the board.
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_RX_LENGTH));
                    if(isempty(varargin)) %Read Mode
                        resp = node.sendCmd(myCmd);
                        ret = resp.getArgs();
                        out = ret(1)+1;
                    else %Write Mode
                        len = varargin{1};
                        if(length(len)>1)
                           len = len(nodeInd); 
                        end
                        if(len<1 || len > (obj.txIQLen))
                            error(generatemsgid('OutOfRange'),'%s: tx length must be in [1,txIQLen]',cmdStr);
                        end
                        len = len-1;
                        myCmd.addArgs(len);
                        node.sendCmd(myCmd);
                    end
                 case 'continuous_tx'
                    % Enable/disable continuous transmit mode
                    %
                    % Requires BUFF_SEL: No
                    % Arguments: (boolean CONT_TX)
                    %  CONT_TX:
                    %   true enables continuous transmit mode
                    %   false disable continuous transmit mode
                    % Returns: none
                    if(length(varargin) ~= 1)
                        error(generatemsgid('InvalidArguments'),'%s: requires one boolean argument',cmdStr);
                    end
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_TX_MODE),uint32(boolean(varargin{1})));
                    node.sendCmd(myCmd);
                case 'tx_buff_en'
                    % Enable transmit buffer for one or more interfaces. When a buffer is enabled it will
                    %  drive samples into its associated interface when a trigger is received. The interface
                    %  itself must also be enabled (wl_interfaceCmd(...,'tx_en')) to actually transmit the samples
                    %
                    % Requires BUFF_SEL: Yes
                    % Arguments: none
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_TX_BUFF_EN),buffSel);
                    node.sendCmd(myCmd);
                case 'rx_buff_en'
                    % Enable receive buffer for one or more interfaces. When a buffer is enabled it will
                    %  capture samples from its associated interface when a trigger is received. The interface
                    %  itself must also be enabled (wl_interfaceCmd(...,'rx_en'))
                    %
                    % Requires BUFF_SEL: Yes
                    % Arguments: none
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_RX_BUFF_EN),buffSel);
                    node.sendCmd(myCmd);
                case 'tx_rx_buff_dis'
                    % Disable the Tx and Rx buffers for one or more interfaces. When a buffer is disabled it will not
                    %  output/capture samples when a trigger is received, even if the associated interface is enabled
                    %
                    % Requires BUFF_SEL: Yes
                    % Arguments: none
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_TX_RX_BUFF_DIS),buffSel);
                    node.sendCmd(myCmd);
                case 'tx_buff_clk_freq'
                    % Read the transmit sample clock frequency out of the buffer core.
                    %
                    % Requires BUFF_SEL: No
                    % Arguments: none
                    % Returns: (uint32 Fs_Tx)
                    %   Fs_Tx: Tx sample frequency of buffer core in Hz
                    out = 40e6; %Currently, this value is hardcoded. It will eventually be read from the board.
                case 'rx_buff_clk_freq'
                    % Read the receive sample clock frequency out of the buffer core.
                    %
                    % Requires BUFF_SEL: No
                    % Arguments: none
                    % Returns: (uint32 Fs_Rx)
                    %   Fs_Rx: Rx sample frequency of buffer core in Hz
                    out = 40e6; %Currently, this value is hardcoded. It will eventually be read from the board.
                case 'rx_rssi_clk_freq'
                    % Read the receive RSSI sample clock frequency out of the buffer core.
                    %
                    % Requires BUFF_SEL: No
                    % Arguments: none
                    % Returns: (uint32 Fs_RxRSSI)
                    %   Fs_RxRSSI: Rx RSSI sample frequency of buffer core in Hz
                    out = 10e6; %Currently, this value is hardcoded. It will eventually be read from the board.                          
                case 'write_iq'
                    % Write I/Q samples to the specified buffers. The dimensions of the buffer selection and samples matrix
                    %  must agree. The same samples can be written to multiple buffers by combining buffer IDs
                    %
                    % Requires BUFF_SEL: Yes (combined BUFF_SEL values ok)
                    % Arguments: (complex double TX_SAMPS, int OFFSET)
                    %  TX_SAMPS: matrix of complex samples. The number of columns must match the length of BUFF_SEL
                    %  OFFSET: buffer index of first sample to write (optional; defaults to 0)
                    %
                    % Examples:
                    % TxLength = 2^14;
                    % Ts = 1/(wl_basebandCmd(node0,'tx_buff_clk_freq'));
                    % t = [0:Ts:(TxLength-1)*Ts].'; %column vector
                    % X = exp(t*1i*2*pi*3e6); %3MHz sinusoid
                    % Y = exp(t*1i*2*pi*5e6); %5MHz sinusoid
                    %
                    % %Write X to RFA
                    %  wl_basebandCmd(node, RFA, 'write_IQ', X);
                    %
                    % %Write X to RFA and RFB
                    %  wl_basebandCmd(node, RFA+RFB, 'write_IQ', X);
                    %
                    % %Write X to RFA, Y to RFB
                    %  wl_basebandCmd(node, [RFA RFB], 'write_IQ', [X Y]);
                    writeIQ(obj, node, transport, buffSel, cmdStr, varargin{:});
                case 'read_iq'
                    % Read I/Q samples from the specified buffers. The elements of the buffer selection must be scalers which
                    %  identify a single buffer. To read multiple buffers in one call, pass a vector of individual buffer IDs
                    %
                    % Requires BUFF_SEL: Yes (combined BUFF_SEL values not allowed)
                    % Arguments: (int OFFSET, int NUM_SAMPS)
                    %  OFFSET: buffer index of first sample to read (optional; defaults to 0)
                    %  NUM_SAMPS: number of complex samples to read (optional; defaults to length(OFFSET:rxIQLen-1))
                    %
                    % Examples:
                    %
                    % %Read full buffer for RFA
                    % %size(X) will be [rxIQLen, 1]
                    %  X = wl_basebandCmd(node, RFA, 'read_IQ');
                    %
                    % %Read partial buffer for RFA (samples 1000:4999)
                    % %size(X) will be [5000, 1]
                    %  X = wl_basebandCmd(node, RFA, 'read_IQ', 1000, 5000);
                    %
                    % %Read full buffers for RFA and RFB
                    % %size(X) will be [rxIQLen, 2]
                    %  X = wl_basebandCmd(node, [RFA RFB], 'read_IQ');
                    out = readIQ(obj, node, buffSel, cmdStr, varargin{:});
                case 'read_rssi'
                    % Read RSSI samples from the specified buffers. The elements of the buffer selection must be scalers which
                    %  identify a single buffer. To read multiple buffers in one call, pass a vector of individual buffer IDs.
                    %
                    % See 'read_iq' for arguments/returns
                    out = readRSSI(obj, node, buffSel, cmdStr, varargin{:});
                case 'agc_state'
                    % Read AGC state from the specified buffers. The elements of the buffer selection must be scalers which
                    %  identify a single buffer. To read multiple buffers in one call, pass a vector of individual buffer IDs
                    %
                    % Requires BUFF_SEL: Yes (combined BUFF_SEL values not allowed)
                    % Arguments: none
                    %
                    % Returns: agc_state -- column vector per buffer BUFF_SEL
                    %
                    %   agc_state(1): RF gain chosen by AGC
                    %   agc_state(2): BB gain chosen by AGC
                    %   agc_state(3): RSSI observed by AGC at time of lock
                    for ifcIndex = length(buffSel):-1:1
                        
                        currBuffSel = buffSel(ifcIndex);
                        if(isSingleBuffer(currBuffSel)==0)
                            error(generatemsgid('InvalidBufferSelect'),'%s: buffer selection must be singular. Use vector notation for reading from multiple buffers e.g. [RFA,RFB]',cmdStr);
                        end

                        myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_AGC_STATE));
                        myCmd.addArgs(bbSel_to_rfSel(currBuffSel));
                        
                        resp = node.sendCmd(myCmd);
                        ret = resp.getArgs();
                        k = 1;
                        gains = uint16(bitand(ret(2*(k-1)+1), hex2dec('000000FF')));
                        out(1,ifcIndex) = uint16(bitand(gains,hex2dec('03')));
                        out(2,ifcIndex) = uint16(bitshift(gains,-2));
                        out(3,ifcIndex) = uint16(ret(2*(k-1)+2));

                    
                    end
                    
                case 'agc_thresh'
                    % Read or write AGC threshold.
                    %
                    % Requires BUFF_SEL: No
                    % Arguments:  none or (int32 thresh1), (int32 thresh2), (int32 thresh3)
                    % Returns: (int32 thresh1), (int32 thresh2), (int32 thresh3) or none
                    %
                    % If arguments are specified, this command enters a write mode where
                    % those arguments are written to the board. If no arguments are specified,
                    % the current values of agc thresholds are read from the board.
                    %
                    %  thresh1: receive power (in dBm) under which AGC will not
                    %            attempt to change gains
                    %  thresh2: receive power (in dBm) under which AGC will select
                    %            high RF gain (RF Gain 3)
                    %  thresh3: receive power (in dBm) under which AGC will select
                    %            medium RF gain (RF Gain 2). Above this receive power
                    %            the AGC will select low RF gain (RF Gain 1)
                    % Default known-good values for this threshold are derived from
                    % the MAX2829 datasheet (bottom, middle plot on page 16).
                    % These default values are (-127,-53,-43)dBm. There is no reason
                    % to call this command unless changing from these defaults is desired.
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_AGC_THRESH));
                    if(isempty(varargin)) %read-back mode
                        resp = node.sendCmd(myCmd);
                        ret = resp.getArgs();
                        thresholds = ret(1);
                        temp = int16(bitand(thresholds,hex2dec('FF')));
                        if(bitand(uint8(temp),128)) %negative sign
                           out(1,1) = int8(-1*(256-temp));
                        else
                           out(1,1) = int8(temp);
                        end
                        
                        temp = int16(bitand(bitshift(thresholds,-8),hex2dec('FF')));
                        if(bitand(uint8(temp),128)) %negative sign
                           out(2,1) = int8(-1*(256-temp));
                        else
                           out(2,1) = int8(temp);
                        end
                        
                        temp = int16(bitand(bitshift(thresholds,-16),hex2dec('FF')));
                        if(bitand(uint8(temp),128)) %negative sign
                           out(3,1) = int8(-1*(256-temp));
                        else
                           out(3,1) = int8(temp);
                        end
                        
                        %out(1,1) = int16(bitand(thresholds,hex2dec('FF')));
                        
                    else %write mode
                        thresh1 = varargin{1};
                        thresh2 = varargin{2};
                        thresh3 = varargin{3};
                        
                        if(length(thresh1)>=nodeInd)
                            thresh1 = thresh1(nodeInd);
                        end
                        if(length(thresh2)>=nodeInd)
                            thresh2 = thresh2(nodeInd);
                        end
                        if(length(thresh3)>=nodeInd)
                            thresh3 = thresh3(nodeInd);
                        end
                        
                        %thresholds = uint32(thresh3+2^8)*2^16+uint32(thresh2+2^8)*2^8+uint32(thresh1+2^8);
                        
                        if(thresh1>=0)
                            thresholds = uint32(thresh1);
                        else
                            thresholds = uint32(256-abs(thresh1));
                        end
                        if(thresh2>=0)
                            thresholds = thresholds+bitshift(uint32(thresh2),8);
                        else
                            thresholds = thresholds+bitshift(uint32(256-abs(thresh2)),8);
                        end
                        if(thresh3>=0)
                            thresholds = thresholds+bitshift(uint32(thresh3),16);
                        else
                            thresholds = thresholds+bitshift(uint32(256-abs(thresh3)),16);
                        end
                        
                        myCmd.addArgs(thresholds);
                        node.sendCmd(myCmd);
                    end
                case 'agc_target'
                    % Set the AGC target
                    %
                    % Requires BUFF_SEL: No. Values apply to all RF paths
                    % Arguments: (int32 target)
                    %  target: target receive power (in dBm)
                    %            default value: -10
                    % Returns: none
                    %
                    % This command is the best way to tweak AGC behavior
                    % to apply more or less gain. For example, a target of
                    % -5dBm will apply more gain thatn a target of -10dBm,
                    % so the waveform will be larger at the inputs of the I
                    % and Q ADCs.
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_AGC_TARGET));
                    target = varargin{1};
                    
                    if(length(target)>=nodeInd)
                        target = target(nodeInd);
                    end
                    
                    if(target<0)
                        target = 65536 - abs(target);
                    end
                    
                    myCmd.addArgs(target);
                    node.sendCmd(myCmd);
                case 'agc_noise_est'
                    % Set the AGC noise estimate
                    %
                    % Requires BUFF_SEL: No. Values apply to all RF paths
                    % Arguments: (int32 noise_estimate)
                    %  noise_estimate: rx noise power (in dBm)
                    %            default value: -95
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_AGC_NOISE_EST));
                    noiseEst = varargin{1};
                    
                    if(length(noiseEst)>=nodeInd)
                        noiseEst = noiseEst(nodeInd);
                    end
                    
                    if(noiseEst<0)
                        noiseEst = 65536 - abs(noiseEst);
                    end
                    myCmd.addArgs(noiseEst);
                    node.sendCmd(myCmd);
                case 'agc_dco'
                    % Enable/disable DC offset correction
                    %
                    % Requires BUFF_SEL: No
                    % Arguments: (boolean DCO)
                    %  DCO:
                    %   true enables DC offset correction
                    %   false disable DC offset correction
                    % Returns: none
                    switch(varargin{1})
                        case true
                            myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_AGC_DCO_EN_DIS),1);
                        case false
                            myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_AGC_DCO_EN_DIS),0);
                    end
                    node.sendCmd(myCmd);
                
                case 'agc_trig_delay'
                    % Sets the AGC trigger delay. The argument specifies a
                    % delay (in number of cycles) that the AGC should wait
                    % before beginning its processing after the node
                    % receives a trigger.
                    %
                    % Requires BUFF_SEL: No. Values apply to all RF paths
                    % Arguments: (uint16 trigger_delay)
                    %  trigger_delay: # if cycles of delay after trigger
                    %                valid range: [0,511]
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_AGC_TRIG_DELAY));
                    trigDelay = varargin{1};
                    
                    if(length(trigDelay)>=nodeInd)
                        trigDelay = trigDelay(nodeInd);
                    end
                    
                    if(trigDelay<0 || trigDelay>(2^9-1))
                       error(generatemsgid('OutOfBounds'),'Trigger delay must be in the range of [0,511]'); 
                    end
                    
                    myCmd.addArgs(trigDelay);
                    node.sendCmd(myCmd);
                    
                case 'agc_reset'
                    % Resets the AGC to its default state
                    %
                    % Requires BUFF_SEL: No. Values apply to all RF paths
                    % Arguments: none
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_AGC_RESET));
                    node.sendCmd(myCmd);
                    
                case 'agc_done_addr'
                    % Sample index where AGC finished
                    %
                    % Requires BUFF_SEL: No. Values apply to all RF paths
                    % Arguments: 
                    % Returns: (uint32) sample_index
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_AGC_DONE_ADDR));
                    resp = node.sendCmd(myCmd);
                    ret = resp.getArgs();
                    out = ret(1);
                    
                otherwise
                    error(generatemsgid('UnknownCommand'),'unknown command ''%s''',cmdStr);
            end
            
            if(iscell(out)==0 && numel(out)~=1)
                out = {out}; 
            end
            
         end
        
    end
    
    methods(Hidden = true)
  
    end
end



function out = rfSel_to_bbSel(sel)
    out = bitshift(uint32(sel),-28);
end

function out = bbSel_to_rfSel(sel)
    out = bitshift(uint32(sel),28);
end

function out = isSingleBuffer(sel)
%    out = (sum(de2bi(sel))==1); %de2bi is in comm toolbox!
    out = (length(strfind(dec2bin(sel),'1'))==1);
end

function out = updateChecksum(newdata,varargin)
    persistent sum1;
    persistent sum2;
    
    if(isempty(sum1))
        sum1 = uint32(0);
    end
    if(isempty(sum2))
        sum2 = uint32(0);
    end

    if(length(varargin)==1)
       if(strcmpi(varargin{1},'reset'))
           sum1 = uint32(0);
           sum2 = uint32(0);
       end
    end

    newdata = uint32(newdata);

    sum1 = mod((sum1 + newdata),65535);
    sum2 = mod(sum2 + sum1,65535);
    
    out = bitshift(sum2,16) + sum1;
end

function writeIQ(obj, node, transport, buffSel, cmdStr, varargin)
%writeIQ Helper function for baseband object to write IQ samples to node
% IMPORTANT: user code should never call this function; always use the 
%  'writeIQ' baesband command (which will call this function with the right arguments)
%
% Writing a full buffer of IQ samples requires many host-to-node packets
% This function uses the minimum number of packets possible, given the payload
% limitations of the node's transport object
%
% This write IQ implementation has two modes:
%  fast: node sends ACK only after first and last samples packet
%  slow: node sends ACK after every samples packet
%
% This implementation always attempts fast mode first. If the node fails to
%  receive any packet in fast mode, this funciton reverts to slow mode and
%  re-sends all samples.
% A failure in fast mode is detected using a simple checksum scheme. The node
%  returns its computed checksum over all received samples packets in its ACK
%  of the final packet. If the node's checksum does not match the one computed here,
%  this function reverts to slow mode and tries again. This function raises an
%  error if slow mode fails.

    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_WRITE_IQ));

    samps = varargin{1};
    numSamps = size(samps,1);

    num_interface = length(buffSel);

    if(num_interface~=size(samps,2))
        error(generatemsgid('DimensionMismatch'),'%s: length of buffer selection vector must match the number of columns in the sample matrix',cmdStr);
    end
    
    %Check if user provided a first sample index for any interface
    if(length(varargin)==2)
        offset = varargin{2};
        if(length(offset)==1)
            offset =  offset(:,ones(1,num_interface));
        end
    else
        %No offsets specified; write to index 0 for all interfaces
        offset = zeros(1,num_interface);
    end

    if( max(offset) + size(samps,1) > obj.txIQLen)
        error(generatemsgid('SampleVectorTooLong'),'%s: length of sample matrix + provided offset exceeds the total buffer size',cmdStr);
    end
    
    %Convert the user-supplied floating point I/Q values to Fix16_15
    samp_I_fi = int16(real(samps)*2^15);
    samp_Q_fi = int16(imag(samps)*2^15);

    %Combine the Fix16_15 I/Q values into one 32-bit word
    % The typecast call preserves the bits of the Fix16_15 I/Q values, so
    % they can be safely handled as unsigned ints until re-interpretted by
    % the node's C code
    samp_fi = uint32(zeros(size(samps)));
    for col = 1:size(samps,2)
        samp_fi(:,col) = 2^16.*uint32(typecast(samp_I_fi(:,col),'uint16')) + uint32(typecast(samp_Q_fi(:,col),'uint16'));
    end
    
    %Create a wl_samples object to help serialize chunks of samples for each Ethernet packet
    samples_obj = wl_samples();

    %Compute the maximum number of samples in each Ethernet packet
    % Stats with transport.maxPayload is the max number of bytes the node's transport can handle per packet (nominally the Ethernet MTU)
    % Subtracts sizes of the transport header, command header and samples header
    maxPayload_uint32 = (floor(double(transport.maxPayload)/4) - sizeof(transport.hdr)/4 - sizeof(myCmd)/4) - (sizeof(wl_samples)/4);

    %Calcuate the number of transport packets required to write all I/Q samples
    numPkts = ceil(numSamps/(maxPayload_uint32));
    
    %User species sample offsets zero-indexed; adjust here for MATLAB indexing
    offset = offset+1;

    currChecksum = zeros(1,num_interface);
    
    %Try a fast write first (ACK only first and last packets)
    slowWrite = 0;
    for ifcIndex = 1:num_interface
        startSampOffset = offset(ifcIndex);
        done = 0;
        pktIndex = 1;
        while(done==0)
            
            if(startSampOffset+maxPayload_uint32 <= numSamps)
                stopSampOffset = startSampOffset+maxPayload_uint32 - 1;
            else
                %Last packet may not require max payload size
                stopSampOffset = (numSamps);
            end
            
            samples_obj.buffSel = buffSel(ifcIndex);
            samples_obj.startSamp = startSampOffset-1;
            samples_obj.setSamples(samp_fi(startSampOffset:stopSampOffset, ifcIndex));
            
            newchkinput_32 = uint32(samp_fi(stopSampOffset, ifcIndex));
            newchkinput_16 = bitxor(bitshift(newchkinput_32,-16),bitand(newchkinput_32,65535));
            
            if(pktIndex==1)
                %currChecksum(ifcIndex) = updateChecksum(startSampOffset-1,'reset');
                currChecksum(ifcIndex) = updateChecksum(newchkinput_16,'reset');
                samples_obj.setFlags(samples_obj.CHKSUMRESET);
            else
                %currChecksum(ifcIndex) = updateChecksum(startSampOffset-1);
                currChecksum(ifcIndex) = updateChecksum(newchkinput_16);
                samples_obj.clearFlags(samples_obj.CHKSUMRESET);
            end


            %Serialze the samples object and copy it into the outgoing command's arguments
            myCmd.setArgs(samples_obj.serialize());
            %fprintf('checkInput: 0x%x, currChecksum = 0x%x, startSampOffset: %u, stopSampOffset = %u, numSamp: %u\n', newchkinput_16, currChecksum(ifcIndex),startSampOffset-1,stopSampOffset,length(startSampOffset:stopSampOffset));
            if(pktIndex == 1 && numPkts>1)
                %Use normal sendCmd for first packet (raise error if no ACK)
                node.sendCmd(myCmd);
            elseif(pktIndex == numPkts)
                %Use normal sendCmd for last packet
                resp = node.sendCmd(myCmd);
                ret = resp.getArgs();

                if((currChecksum(ifcIndex) ~= ret(1)) && slowWrite == 0)
                    warning(generatemsgid('SlowMode'),'%s: Checksum mismatch on fast write... reverting to slow write',cmdStr);
                    slowWrite = 1;
                    pktIndex = 1; %start over in slow mode (ACK every packet);
                    startSampOffset = offset(ifcIndex);
                    continue;
                elseif((currChecksum(ifcIndex) ~= ret(1)) && slowWrite == 1)
                    %Even slow mode failed; raise error
                    error(generatemsgid('ChecksumMismatch'),'%s: Checksum mismatch on slow write... aborting',cmdStr);
                else
                    %Checksum returned by node matches; write IQ succeeded
                    done = 1;
                end
            else %middle packet
                if(slowWrite == 0)
                    %Fast write does not wait for ACK from node for middle packets
                    node.sendCmd_noresp(myCmd);
                else
                    %Slow write requires ACK from node for every packet; raises error if no ACK
                    node.sendCmd(myCmd);
                end
            end

            

            %Update starting sample offset for next packet
            startSampOffset = stopSampOffset + 1;
            pktIndex = pktIndex+1;
        end %end while !done sending packets
    %fprintf('write_IQ sent %d pkts\n', pktIndex);
    end %end for ifcIndex
end %end function writeIQ

function out = readIQ(obj, node, buffSel, cmdStr, varargin)
%readIQ Helper function for baseband object to read IQ samples from node
% IMPORTANT: user code should never call this function; always use the 
%  'readIQ' baesband command (which will call this function with proper arguments)
%
% Reading a full buffer of IQ samples requires many node-to-host packets
% This function uses the minimum number of packets possible, given the payload
% limitations of the node's transport object.

    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_READ_IQ));
    num_interface = length(buffSel);

    if(isempty(varargin))
        %User didn't specify a starting sample or num samples
        % default to reading all samples (0:rxIQLen-1)
        offset = 0;
        numSamp = obj.rxIQLen;
    elseif(length(varargin)==2)
        offset = varargin{1};
        numSamp = varargin{2};
    else
        error(generatemsgid('InvalidArguments'),'%s: invalid arguments... user must provide an offset and a length',cmdStr);
    end
    
    if((offset+numSamp) > obj.rxIQLen)
        error(generatemsgid('OutOfRange', 'Requested samples are out of range for this baseband'));
    end
   
    %Use the readbuffer helper to handle network I/O
    % The helper avoids repeating code for reading I/Q and RSSI
    rxSamples = read_baseband_buffer(obj,node,buffSel,myCmd,numSamp,offset,cmdStr);

    rxSamples_IQ = double(zeros(numSamp,num_interface));
    for ifcIndex = 1:num_interface
        %Convert the 32-bit sample words into Fix16_15 I/Q values, then cast as complex doubles
        % This verbose implementation avoids using the fixed-point toolbox
        rxSamples_I = uint16(bitshift(rxSamples(:,ifcIndex),-16)); %16MSB
        rxSamples_I = uint16(bitand(rxSamples_I, 16383)); %mask off top two bits
        rxSamples_Isigns = uint16(bitshift(bitand(rxSamples_I, 8192), -13)); %get sign bit
        rxSamples_I = double(typecast(bitor(rxSamples_I, rxSamples_Isigns*49152),'int16'))./2^13;

        rxSamples_Q = uint16(bitand(rxSamples(:,ifcIndex), 65535));%16LSB
        rxSamples_Q = uint16(bitand(rxSamples_Q, 16383)); %mask off top two bits
        rxSamples_Qsigns = uint16(bitshift(bitand(rxSamples_Q, 8192), -13)); %get sign bit
        rxSamples_Q = double(typecast(bitor(rxSamples_Q, rxSamples_Qsigns*49152),'int16'))./2^13;

        rxSamples_IQ(:,ifcIndex) = complex(rxSamples_I, rxSamples_Q);
    end

    out = rxSamples_IQ;
end

function out = readRSSI(obj, node, buffSel, cmdStr, varargin)
%readIQ Helper function for baseband object to read IQ samples from node
% IMPORTANT: user code should never call this function; always use the 
%  'readRSSI' baseband command (which will call this function with proper arguments)
%
% Reading a full buffer of RSSI samples requires many node-to-host packets
% This function uses the minimum number of packets possible, given the payload
% limitations of the node's transport object.

    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_READ_RSSI));
    num_interface = length(buffSel);

    if(isempty(varargin))
        offset = 0;
        numSamp = obj.rxRSSILen;
    elseif(length(varargin)==2)
        offset = varargin{1};
        numSamp = varargin{2};
    else
        error(generatemsgid('InvalidArguments'),'%s: invalid arguments... user must provide an offset and a length',cmdStr);
    end

    
    %RSSI is a unique buffer in that it stores pairs of
    %RSSI samples in a single 32-bit word. As such, from
    %the board's perspective, the number of samples that we
    %request is actually half what the end-user really
    %specifies.
    rxSamples = read_baseband_buffer(obj,node,buffSel,myCmd,ceil(double(numSamp)./2),floor(double(offset)/2),cmdStr);

    for ifcIndex = num_interface:-1:1
        rssi = [mod(bitshift(rxSamples(:,ifcIndex),-16),1024),mod(rxSamples(:,ifcIndex), 1024)];
        rssi = rssi.';
        rxSamples_RSSI(:,ifcIndex) = rssi(:);
    end

    if(mod(offset,2)==0)
        out = rxSamples_RSSI(1:numSamp,:);
    else
        out = rxSamples_RSSI(2:(numSamp+1),:);
    end
end

%FIXME: What prevents this function from running forever, in the case that
% a node doesn't respond, or screws up its indexing and omits a sample?
function rxSamples = read_baseband_buffer(obj,node,buffSel,myCmd,numSampReq,firstSamp_hwInd,cmdStr)
%read_baseband_buffer  Helper function to read a buffer from the node's baseband
% IMPORTANT: user code should never call this function; always use the 'readRSSI' or
%  'readIQ' baesband commands (which will call properly call this function)
%
% This function implements the process for reading large numbers of samples from a
%  baseband buffer, a transfer which requries multiple transport packets
% 
% This fuction retrieves samples in order, starting at the user-specified offset and
%  requesting the largest contiguous block of not-yet-retrieved samples. Each reqest
%  may generate many node-to-host packets. In case a packet is lost, this function 
%  will re-request only the missing samples. This function only returns successfully
%  if all requested samples are received from the node.

    transport = node.transport;
    num_interface = length(buffSel);

    %Compute the maximum number of samples in each Ethernet packet
    % Stats with transport.maxPayload is the max number of bytes the node's transport can handle per packet (nominally the Ethernet MTU)
    % Subtracts sizes of the transport header, command header and samples header
    maxPayload_uint32 = double((floor(double(transport.maxPayload)/4) - sizeof(transport.hdr)/4 - sizeof(myCmd)/4) - (sizeof(wl_samples)/4));
    maxPayload_uint8 = maxPayload_uint32*4;

    %Pre-allocate an array to hold retrieved samples
    rxSamples = uint32(zeros(numSampReq,num_interface));

    %Allocate an array to track which samples have been received from the node
    rxSampleValid = logical(false(numSampReq, num_interface));

    %Create a wl_samples object to deserialize the received samples packets
    currSamp = wl_samples();
    for ifcIndex = 1:num_interface

        currBuffSel = buffSel(ifcIndex);
        if(isSingleBuffer(currBuffSel)==0)
            error(generatemsgid('InvalidBufferSelect'),'%s: buffer selection must be singular. Use vector notation for reading from multiple buffers e.g. [RFA,RFB]',cmdStr);
        end

        startTime = tic;
        numloops = 0;
        while ~all(rxSampleValid(:,ifcIndex))
            numloops = numloops + 1;
            %Each iteration of this loop retrieves the first contiguous block of samples
            % that has not yet been received from the node
            
            %Find the index of the first sample not yet received (0-indexed)
            missing_samps_hwInd = firstSamp_hwInd + find(~rxSampleValid(:,ifcIndex)) - 1;
            first_missing_samp_hwInd = missing_samps_hwInd(1);
            
            %Find how many samples immediately after the first are not yet received
            bpoint = find(diff(missing_samps_hwInd)>1);

            if(isempty(bpoint))
                %No samples after the starting sample have been received
                bpoint = length(missing_samps_hwInd);
            else
                %Some later samples are already received; don't retriev them again
                bpoint = bpoint(1);
            end
            
            %Calculate how many samples to request in this batch
            numSamp_thisReq = missing_samps_hwInd(bpoint) - first_missing_samp_hwInd + 1;
            
            USEFULBUFFERSIZE = .9; %Assume 1-USEFULBUFFERSIZE is used for overhead;
            if(numSamp_thisReq*4 > (USEFULBUFFERSIZE*node.transport.rxBufferSize))
                %If the number of bytes we need from the board exceeds the
                %receive buffer size of our transport, we are going to drop
                %packets. We should reduce our request to minimize
                %dropping.
                numSamp_thisReq = floor((USEFULBUFFERSIZE*node.transport.rxBufferSize) / 4);
            end

            %Calculate how many transport packets are required
            numPktsRequired = ceil(double(numSamp_thisReq)/double(maxPayload_uint32));

            %Construct and send the argument to the node
            myCmd.setArgs(currBuffSel, first_missing_samp_hwInd, numSamp_thisReq, maxPayload_uint8, numPktsRequired);
            node.sendCmd_noresp(myCmd);
            
            %Wait for the node to send all requested samples
            % Each packet received resets the timout timer
            % If a timout occurs (i.e. when a node-to-host packet is lost), the indexes of the lost samples
            %  are marked as invalid and will be re-requested on the next iteration of the outer loop
            numRespPkts = 0;
            currTime = tic;
            while(numRespPkts < numPktsRequired && toc(currTime) < obj.readTimeout)
                resp = node.receiveResp();
                if(~isempty(resp))
                    first_samp_received_hwInd = -1;
                    num_samp_received = -1;
                    %Extract the received samples and reset the timout timer
                    % resp might contain multiple response packets, as node.receiveResp() empties the incoming UDP buffer and returns everything
                    for respIndex = 1:length(resp)
                        currSamp.deserialize(resp(respIndex).getArgs);
                        if((respIndex > 1) && (currSamp.startSamp > (first_samp_received_hwInd+num_samp_received+1)))
                         fprintf('read_baseband_buffers: samples packet(s) dropped by transport; increase UDP receive buffer\n');
                        %fprintf('pkt drop? currSamp.startSamp(%d) ~= first_samp_received(%d)+num_samp_received(%d)\n', currSamp.startSamp,first_samp_received, num_samp_received);
                        end
                       
                        %fprintf('%2d: Got samps: first=%d, num=%d\n', respIndex, currSamp.startSamp, currSamp.numSamp);

                        first_samp_received_hwInd = (currSamp.startSamp); %Hardware index of first sample received (0-indexed)
                        num_samp_received = (currSamp.numSamp);
                        
                        %Calculate indexes for output arrays for these samples (first element of outout array is first requested sample,
                        %  even if first requested sample is not sample 0 in hardware)
                        output_samp_indexes = (first_samp_received_hwInd - firstSamp_hwInd)+(1:num_samp_received);

                        %Fill in the output arrays - output arrays are (num_requested_samples x num_interfaces)
                        rxSamples(output_samp_indexes ,ifcIndex) = currSamp.getSamples;
                        rxSampleValid(output_samp_indexes, ifcIndex) = true;
                        if(max(output_samp_indexes) > numSampReq)
                            error(generatemsgid('ReadSamp_IndexError'), 'read_baseband_buffers attempted to write an invalid sample index');
                            %keyboard
                        end
                        
                        %fprintf('Got samps: Start=%d, Num=%d, (offset=%d)\n', currSamp.startSamp, currSamp.numSamp, offset)
                    end
                    
                    numRespPkts = numRespPkts + length(resp);
                    currTime = tic;
                end
            end

            %Fail-safe timeout, in case indexing is broken (in m or C), to keep read_baseband_buffers from running forever
            if(toc(startTime) > 5)
                  error(generatemsgid('ReadSamp_Timeout'), 'read_baseband_buffers took too long to retrieve samples; check for indexing errors in C and M code');
            end
        end %end while ~(all samples received)
        if(numloops>1)
           warning(generatemsgid('DroppedFrames'),'%s: Dropped frames on fast read... took %d iterations',cmdStr,numloops); 
        end
    end% end for all interfaces
end% end function read_baseband_buffer

