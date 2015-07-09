classdef wl_user_ext < handle_light
   properties(Hidden = true,Constant = true)
       GRP = 'user_extension';
   end
   methods
       function obj = wl_user_ext()
           if(strcmp(class(obj),mfilename))
               error(generatemsgid('SuperclassInvokedDirectly'),'%s is not intended to be constructed directly',mfilename)
           end
       end
       function out = procCmd(obj,varargin);
          out = [];
          error(generatemsgid('MissingProcCmd'),'User extension failed to implement the ''procCmd'' method'); 
       end
   end
end