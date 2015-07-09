classdef wl_samples < wl_msg_helper   
    properties(SetAccess = public)
        buffSel;
        flags;
        startSamp;
    end
    properties(Hidden = true)
        reserved; 
    end
    properties(SetAccess = protected, Hidden=true)
        samps 
    end
    properties(SetAccess = protected)
        numSamp;
        CHKSUMRESET; 
    end
    
    methods
        function obj = wl_samples(varargin)
           obj.buffSel = uint16(0); 
           obj.flags = uint8(0); 
           obj.reserved = uint8(0); 
           obj.startSamp = uint32(0);
           obj.numSamp = uint32(0);
           obj.samps = [];
           
           obj.CHKSUMRESET = 1;
           
           if(length(varargin)==1) 
               obj.deserialize(varargin{1});
           end
           
        end
        
        function setFlags(obj,flags)
           flags = uint8(flags);
           obj.flags = bitor(obj.flags,flags);
        end
        
        function clearFlags(obj,flags)
           flags = uint8(flags);
           obj.flags = bitand(obj.flags,bitcmp(flags));
        end
        
        function setSamples(obj,samples)
           obj.numSamp = length(samples);
           obj.samps = samples(:).';
        end
        
        function output = getSamples(obj)
           output = obj.samps; 
        end
        
        function output = serialize(obj)
           temp = bitor(bitshift(uint32(obj.flags),8),uint32(obj.reserved));
           output(1) = bitor(bitshift(uint32(obj.buffSel),16),temp); 
           output(2) = obj.startSamp;
           output(3) = obj.numSamp;
           output = cat(2,output,obj.samps);
        end
        
        function deserialize(obj,vec)
           vec = uint32(vec);
           obj.buffSel = bitshift(bitand(vec(1),4294901760),-16);
           obj.flags = bitshift(bitand(vec(1),65280),-8);
           obj.startSamp = vec(2);
           obj.numSamp = vec(3);
           
           if(length(vec)>3)
              obj.samps = vec(4:end);
           end
           
        end
        
        function output = sizeof(obj)
            persistent wl_samples_length;
            if(isempty(wl_samples_length))
                wl_samples_length = length(obj.serialize)*4;
            end
            output = wl_samples_length;
        end
    end
end