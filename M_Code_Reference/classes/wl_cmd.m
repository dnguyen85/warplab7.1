classdef wl_cmd < handle_light
   properties(SetAccess = public)
      cmd;
   end
   
   properties(SetAccess = protected)
      len;
      numArgs;
   end
   
   properties(SetAccess = protected, Hidden=true)
      args; 
   end
   
   methods
       function obj = wl_cmd(varargin)
            obj.cmd = uint32(0); 
            obj.len = uint16(0); 
            obj.numArgs = uint16(0);  
           
            if(nargin > 0)
                obj.cmd = uint32(varargin{1});
            end
           
            if(nargin > 1)
                obj.setArgs(varargin{2:end});
            end         
       end
       
       function setArgs(obj,varargin)
            %delete old args
            obj.len = uint16(0);
            obj.numArgs = uint16(0);
            obj.addArgs(varargin{:});
       end
       
       function addArgs(obj,varargin)
           for index = length(varargin):-1:1
                if(min(size(varargin{index}))~=1)
                    error(generatemsgid('InvalidDimensions'),'argument %d must be a scalar or 1-dimenstional vector',index)
                end
                newArg = uint32(varargin{index}(:).');
                obj.args{index + (obj.numArgs)} = newArg;
                obj.len = obj.len + (length(newArg)*4);
            end
            obj.numArgs = obj.numArgs + length(varargin);
       end
       
       function output = getArgs(obj)
            if(isempty(obj.args)==0)
                output = cat(2,obj.args{:});
            else
                output = [];
            end
       end
       
       function output = sizeof(obj)
            output = length(obj.serialize)*4;
       end
           
       function output = serialize(obj)
           %Return a uint32 array, ready for packaging into a transport packet
           output(1) = obj.cmd;
           output(2) = bitor(bitshift(uint32(obj.len),16),uint32(obj.numArgs));
           output = [output,obj.getArgs];
       end
   end
end