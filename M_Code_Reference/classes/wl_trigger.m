classdef wl_trigger < handle_light
    properties (Abstract,SetAccess = protected)
        description;
    end
    methods (Abstract)
        out = send(varargin);
    end 
end
