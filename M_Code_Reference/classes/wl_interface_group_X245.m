classdef wl_interface_group_X245 < wl_interface_group
%Interface group object for the X245 transceivers
% User code should not use this object directly-- the parent wl_node will
%  instantiate the appropriate interface group object for the hardware in use
    properties (SetAccess = protected)
        num_interface;      %number of interfaces in this group
        ID;                 %vector of IDs for all interfaces in this group
        label;              %cell vector of labels for the interfaces
        description;        %description of this object
    end
    properties(Hidden = true,Constant = true)
        %These constants define specific command IDs used by this object.
        %Their C counterparts are found in wl_ifc.h
        GRP = 'interface';
        CMD_TX_EN = 1;
        CMD_RX_EN = 2;
        CMD_TX_RX_DIS = 3;
        CMD_CHANNEL = 4;
        CMD_TX_GAINS = 5;
        CMD_RX_GAINS = 6;
        CMD_TX_LPF_CORN_FREQ = 7;
        CMD_RX_LPF_CORN_FREQ = 8;
        CMD_RX_GAINCTRL_SRC = 9;
    end
    methods
        function obj = wl_interface_group_X245(varargin)
            
            radioSel = varargin{1};
            FMCMode = 0;
            
            if (nargin == 2)
                FMCMode = strcmpi(varargin{2},'w3');
            end
            
            obj.ID = [];
            obj.label = {};
            
            for n = radioSel
                %obj.ID = [obj.ID, uint32(n) * 2^28];
                obj.ID = [obj.ID, uint32(2.^(n-1+28))];
                if (FMCMode == 0 || n < 3)
                    obj.label = [obj.label,{sprintf('RF%c',n+64)}];
                else
                    obj.label = [obj.label,{sprintf('RF%c (FMC RF%c)',n+64,n+62)}];
                end
                
            end            
            obj.description = '2.4/5GHz RF Interface Group';
        end
        function out = wl_ifcValid(obj,rfSel)
            rfSel = repmat(rfSel,size(obj.ID));
            out = max(bitand(rfSel,obj.ID)>1);
        end
        
        function out = procCmd(obj, nodeInd, node, rfSel, cmdStr, varargin)
            out = [];
            if(strcmp(rfSel,'RF_ALL'))
                rfSel = sum(obj.ID);
            else
                if(length(rfSel) >= nodeInd)
                    rfSel = rfSel(nodeInd);
                elseif(length(rfSel)>1)
                    error(generatemsgid('AmbiguousInputDimensions'),'RF selection must be a scalar or row vector of length equal to the number of nodes')
                end
            end
            
            %Check to make sure this rfSel actually applies to me
            if(bitand(rfSel,sum(obj.ID))~=rfSel)
               error(generatemsgid('InvalidIfcSelection'),'Invalid interface selection'); 
            end
            
            switch(lower(cmdStr))                
                case 'tx_en'
                    % Enable transmit mode for selected interfaces
                    %
                    % Arguments: none
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_TX_EN),rfSel);
                    node.sendCmd(myCmd);
                case 'rx_en'
                    % Enable receive mode for selected interfaces
                    %
                    % Arguments: none
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_RX_EN),rfSel);
                    node.sendCmd(myCmd);
                case 'tx_rx_dis'
                    % Disable transmita and receive for selected interfaces (standby mode)
                    %
                    % Arguments: none
                    % Returns: none
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_TX_RX_DIS),rfSel);
                    node.sendCmd(myCmd);
                case 'channel'
                    % Tune selected interfaces to the specified band and channel
                    %
                    % Arguments: (float BAND, int CHAN)
                    %  BAND: Must be 2.4 or 5, to select 2.4GHz or 5GHz channels
                    %  CHAN: Must be integer in [1,11] for BAND=2.4, [1,23] for BAND=5
                    % Returns: none
                    %
                    % BAND and CHAN must be scalars (same values for all specified interfaces) or
                    %  1-D vectors (one value per interface) with length equal to the length of the interface ID vector
                    %
                    % Band/Channel - Center Frequency Map:
                    %   2.4GHz	   5GHz
                    % Chan Freq  Chan Freq
                    % 1    2412	 1    5180
                    % 2    2417	 2    5200
                    % 3    2422	 3    5220
                    % 4    2427	 4    5240
                    % 5    2432	 5    5260
                    % 6    2437	 6    5280
                    % 7    2442	 7    5300
                    % 8    2447	 8    5320
                    % 9    2452	 9    5500
                    % 10   2457	 10   5520
                    % 11   2462	 11   5540
                    %          	 12   5560
                    %          	 13   5580
                    %          	 14   5600
                    %            15   5620
                    %            16   5640
                    %            17   5660
                    %            18   5680
                    %            19   5700
                    %            20   5745
                    %            21   5765
                    %            22   5785
                    %            23   5805
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_CHANNEL),rfSel);
                    if(isempty(varargin)) %read-back mode
                        error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': channel readback not yet implemented', cmdStr);
                    elseif(length(varargin)==2) %write mode
                        band = varargin{1};
                        channel = varargin{2};
                        
                        if(length(band)>=nodeInd)
                            band = band(nodeInd);
                        elseif(length(band)~=1)
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects band selection to be a scalar or vector of length equal to the number of nodes', cmdStr);
                        end
                        
                        if(length(channel)>=nodeInd)
                            channel = channel(nodeInd);
                        elseif(length(band)~=1)
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects channel selection to be a scalar or vector of length equal to the number of nodes', cmdStr);
                        end
                        
                        if(band==2.4)
                            band = 0;
                            if(channel<1 || channel>14)
                                error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects channel selection to be between [1,14] for the 2.4GHz band', cmdStr);
                            end
                        elseif(band==5)
                            band = 1;
                            if(channel<1 || channel>23)
                                error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects channel selection to be between [1,23] for the 5GHz band', cmdStr);
                            end
                        else
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects band selection 2.4 or 5', cmdStr);
                        end
                        myCmd.addArgs(band,channel);
                        node.sendCmd(myCmd);
                    else
                        error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects two arguments: a band and a channel', cmdStr);
                    end
                case 'tx_gains'
                    % Sets the gains for the variable gain amplifiers in the MAX2829 Tx path
                    % Refer to MAX2829 datasheet for curves of gain value vs actual gain at 2.4 and 5GHz
                    %
                    % Arguments: (int BB_GAIN, int RF_GAIN)
                    %  BB_GAIN: Must be integer in [0,1,2,3] for approx [-5, -3, -1.5, 0]dB baseband gain
                    %  RF_GAIN: Must be integer in [0:63] for approx [0:31]dB RF gain
                    % Returns: none
                    %
                    % BB_GAIN and RF_GAIN must be scalars (same values for all specified interfaces) or
                    %  1-D vectors (one value per interface) with length equal to the length of the interface ID vector
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_TX_GAINS),rfSel);
                    if(isempty(varargin)) %read-back mode
                        error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': Tx gain readback not yet implemented', cmdStr);
                    elseif(length(varargin)==2) %write mode
                        bbGain = varargin{1};
                        rfGain = varargin{2};
                        if(length(rfGain)>=nodeInd)
                            rfGain = rfGain(nodeInd);
                        elseif(length(rfGain)~=1)
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects rfGain selection to be a scalar or vector of length equal to the number of nodes', cmdStr);
                        end

                        if(length(bbGain)>=nodeInd)
                            bbGain = bbGain(nodeInd);
                        elseif(length(bbGain)~=1)
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects bbGain selection to be a scalar or vector of length equal to the number of nodes', cmdStr);
                        end
                      
                        if(bbGain>3 || rfGain>63)
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': bbGain must be in [0,3] and rfGain must be in [0,63]', cmdStr);
                        end
                        myCmd.addArgs(bbGain,rfGain);
                        node.sendCmd(myCmd);
                    else
                        error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects two arguments: a baseband gain and an RF gain', cmdStr);
                    end

                case 'rx_gains'
                    % Sets the gains for the variable gain amplifiers in the MAX2829 Rx path
                    % Refer to MAX2829 datasheet for curves of gain value vs actual gain at 2.4 and 5GHz
                    %
                    % Arguments: (int BB_GAIN, int RF_GAIN)
                    %  BB_GAIN: Must be integer in [0:31] for approx [0:63]dB baseband gain
                    %  RF_GAIN: Must be integer in [1,2,3] for approx [0,15,30]dB RF gain
                    % Returns: none
                    %
                    % BB_GAIN and RF_GAIN must be scalars (same values for all specified interfaces) or
                    %  1-D vectors (one value per interface) with length equal to the length of the interface ID vector
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_RX_GAINS),rfSel);
                    if(isempty(varargin)) %read-back mode
                        error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': readback of Rx gains not yet implemented', cmdStr);
                    elseif(length(varargin)==2) %write mode
                        rfGain = varargin{1};
                        bbGain = varargin{2};
                        if(length(rfGain)>=nodeInd)
                            rfGain = rfGain(nodeInd);
                        elseif(length(rfGain)~=1)
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects rfGain selection to be a scalar or vector of length equal to the number of nodes', cmdStr);
                        end

                        if(length(bbGain)>=nodeInd)
                            bbGain = bbGain(nodeInd);
                        elseif(length(bbGain)~=1)
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects bbGain selection to be a scalar or vector of length equal to the number of nodes', cmdStr);
                        end
                      
                        if(bbGain>31 || rfGain>3)
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': rfGain must be in [0,3] and bbGain must be in [0,31]', cmdStr);
                        end
                        myCmd.addArgs(rfGain,bbGain);
                        node.sendCmd(myCmd);
                        
                    else
                        error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects two arguments: an RF gain and a baseband gain', cmdStr);
                    end
                case 'tx_lpf_corn_freq'
                    % Sets the corner frequency for the MAX2829 Tx path low pass filter
                    % Refer to MAX2829 datasheet for curves of the frequency response with each setting
                    %
                    % Arguments: (int FILT)
                    %  FILT: Must be integer in [1,2,3] for approx [12,18,24]MHz corner frequencies ([24,36,48]MHz bandwidths)
                    % Returns: none
                    %
                    % FILT must be scalar (same value for all specified interfaces) or 1-D vector (one value per interface) 
                    %  with length equal to the length of the interface ID vector
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_TX_LPF_CORN_FREQ),rfSel);
                    if(isempty(varargin)) %read-back mode
                        error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': readback of Tx LPF not yet implemented', cmdStr);
                    elseif(length(varargin)==1) %write mode
                        cornFreq = varargin{1};                      
                        if(length(cornFreq)>=nodeInd)
                            cornFreq = cornFreq(nodeInd);
                        elseif(length(cornFreq)~=1)
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects cornFreq selection to be a scalar or vector of length equal to the number of nodes', cmdStr);
                        end
                      
                        if(cornFreq==0 || cornFreq>3)
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': cornFreq must be in [1,3]', cmdStr);
                        end
                        
                        myCmd.addArgs(cornFreq);
                        node.sendCmd(myCmd);
                        
                    else
                        error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects one argument', cmdStr);
                    end  
                case 'rx_lpf_corn_freq'
                    % Sets the corner frequency for the MAX2829 Rx path low pass filter
                    % Refer to MAX2829 datasheet for curves of the frequency response with each setting
                    %
                    % Arguments: (int FILT)
                    %  FILT: Must be integer in [0,1,2,3] for approx [7.5,9.5,14,18]MHz corner 
                    %   frequencies ([15,19,28,36]MHz bandwidths)
                    % Returns: none
                    %
                    % FILT must be scalar (same value for all specified interfaces) or 1-D vector (one value per interface) 
                    %  with length equal to the length of the interface ID vector
                    myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_RX_LPF_CORN_FREQ),rfSel);
                    if(isempty(varargin)) %read-back mode
                        error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': readback of Rx LPF not yet implemented', cmdStr);
                    elseif(length(varargin)==1) %write mode
                        cornFreq = varargin{1};                      
                        if(length(cornFreq)>=nodeInd)
                            cornFreq = cornFreq(nodeInd);
                        elseif(length(cornFreq)~=1)
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects cornFreq selection to be a scalar or vector of length equal to the number of nodes', cmdStr);
                        end
                      
                        if(cornFreq>3)
                            error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': cornFreq must be in [1,3]', cmdStr);
                        end
                        
                        myCmd.addArgs(cornFreq)
                        node.sendCmd(myCmd);
                        
                    else
                        error('wl_interface_group_X245:wl_ifc_procCmd', '''%s'': expects one argument', cmdStr);
                    end      
                case 'rx_gain_mode'
                    % Sets the gain selection mode
                    %
                    % Arguments: (string MODE)
                    %  MODE: 'automatic' for AGC, or 'manual' for manual gain control
                    % Returns: none

                     if(strcmp(lower(varargin{1}) , 'automatic'))
                            myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_RX_GAINCTRL_SRC),rfSel,1);
                     elseif(strcmp(lower(varargin{1}) , 'manual'))
                            myCmd = wl_cmd(node.calcCmd(obj.GRP,obj.CMD_RX_GAINCTRL_SRC),rfSel,0);
                     else
                            error(generatemsgid('InvalidArgument', 'Invalid rx_gain_mode: %s (must be ''automatic'' or ''manual''', varargin{1}));       
                     end
                    node.sendCmd(myCmd);
                otherwise
                    error(generatemsgid('InvalidRange'),'unknown command ''%s''', cmdStr);
            end
            
            if(iscell(out)==0 && numel(out)~=1)
                out = {out}; 
            end
            
        end 
        
    end %methods
end %classdef
