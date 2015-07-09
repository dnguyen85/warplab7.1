classdef wl_baseband < handle_light
    properties (Abstract, SetAccess = protected)
        description;        
    end
    methods (Abstract)
        out = procCmd(varargin);
    end 
end
