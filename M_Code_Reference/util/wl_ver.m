function varargout = wl_ver()
    MAJOR       = 7;
    MINOR       = 1;
    REVISION    = 0;
    XTRA        = '';
    
    outputs = {MAJOR,MINOR,REVISION,XTRA};
    
    if(nargout == 0)
        fprintf('WARPLab v%d.%d.%d %s\n',MAJOR,MINOR,REVISION,XTRA);
    else
        varargout(1:nargout) = outputs(1:nargout);
    end
    
end