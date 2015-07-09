classdef wl_interface_group < handle_light
    properties (Abstract, SetAccess = protected)
        num_interface;
        ID;
        label;
        description;        
    end
    methods (Abstract)
        out = wl_ifcValid(varargin);
        out = procCmd(varargin);
    end 
end
