function wl_setup

fprintf('Setting up WARPLab Paths...\n');

done = false;
while(~done)
    [wl_path,ig,ig] = fileparts(which('wl_node'));
    if(~isempty(wl_path))
        fprintf('   removing path ''%s''\n',wl_path);
        rmpath(wl_path)
    else
        done = true;
    end
end

done = false;
while(~done)
    [wl_path,ig,ig] = fileparts(which('wl_ver'));
    if(~isempty(wl_path))
        fprintf('   removing path ''%s''\n',wl_path);
        rmpath(wl_path)
    else
        done = true;
    end
end

done = false;
while(~done)
    [wl_path,ig,ig] = fileparts(which('warplab_defines'));
    if(~isempty(wl_path))
        fprintf('   removing path ''%s''\n',wl_path);
        rmpath(wl_path)
    else
        done = true;
    end
end

done = false;
while(~done)
    [wl_path,ig,ig] = fileparts(which('inifile'));
    if(~isempty(wl_path))
        fprintf('   removing path ''%s''\n',wl_path);
        rmpath(wl_path)
    else
        done = true;
    end
end

done = false;
while(~done)
    [wl_path,ig,ig] = fileparts(which('wl_config.ini'));
    if(~isempty(wl_path))
        fprintf('   removing path ''%s''\n',wl_path);
        rmpath(wl_path)
    else
        done = true;
    end
end

myPath = sprintf('%s%sclasses',pwd,filesep);
fprintf('   adding path ''%s''\n',myPath);
addpath(myPath)

myPath = sprintf('%s%sutil',pwd,filesep);
fprintf('   adding path ''%s''\n',myPath);
addpath(myPath)

myPath = sprintf('%s%sutil%sinifile',pwd,filesep,filesep);
fprintf('   adding path ''%s''\n',myPath);
addpath(myPath)

configPath = sprintf('%s%sconfig',pwd,filesep);
fprintf('   adding path ''%s''\n',configPath);
addpath(configPath) 

configFile = sprintf('%s%swl_config.ini',configPath,filesep);


fprintf('   saving path\n\n\n');
savepath

IP = '';
host = '';
port_unicast = '';
port_bcast = '';
transport = '';
jumbo = '';

if(exist(configFile)) %Read existing config file for defaults
    fprintf('A wl_config.ini file was found in your path. Values specified in this\n');
    fprintf('configuration file will be used as defaults in the construction of the\n');
    fprintf('new file.\n');
    readKeys = {'network','','host_address',''};
    IP = inifile(configFile,'read',readKeys);
    IP = IP{1};
    
    readKeys = {'network','','host_ID',''};
    host = inifile(configFile,'read',readKeys);
    host = host{1};
    
    readKeys = {'network','','unicast_starting_port',''};
    port_unicast = inifile(configFile,'read',readKeys);
    port_unicast = port_unicast{1}; 
    
    readKeys = {'network','','bcast_port',''};
    port_bcast = inifile(configFile,'read',readKeys);
    port_bcast = port_bcast{1}; 
    
    readKeys = {'network','','transport',''};
    transport = inifile(configFile,'read',readKeys);
    transport = transport{1}; 
    
    readKeys = {'network','','jumbo',''};
    jumbo = inifile(configFile,'read',readKeys);
    jumbo = jumbo{1}; 
end

%Sane Defaults
if(isempty(IP))
    IP = '10.0.0.250';
end    
if(isempty(host))
    host = '250';
end    
if(isempty(port_unicast))
    port_unicast = '9000';
end    
if(isempty(port_bcast))
    port_bcast = '10000';
end    
if(isempty(transport))
    transport = 'java';
end    
if(isempty(jumbo))
    jumbo = 'false';
end   

inifile(configFile,'new')

writeKeys = {'config_info','','date_created',date};
inifile(configFile,'write',writeKeys,'tabbed')

[MAJOR,MINOR,REVISION] = wl_ver();
writeKeys = {'config_info','','wl_ver',sprintf('%d.%d.%d',MAJOR,MINOR,REVISION)};
inifile(configFile,'write',writeKeys,'tabbed')

fprintf('\n\n')
fprintf('------------------------------------------------------------\n')
fprintf('Please enter a WARPLab Ethernet interface address.\n\n')
fprintf('Pressing enter without typing an input will use a default\n')
fprintf('IP address of: %s\n\n',IP);

temp = input('WARPLab Ethernet Interface Address: ','s');
if(isempty(temp))
   temp = IP; 
   fprintf('   defaulting to %s\n',temp);
else
   fprintf('   setting to %s\n',temp); 
end

if(ispc)
   [status, tempret] = system('ipconfig /all');
elseif(ismac||isunix)
   [status, tempret] = system('ifconfig -a');
end
tempret = strfind(tempret,temp);

if(isempty(tempret))
   warning('No interface found. Please ensure that your network interface is connected and configured with static IP %s',temp);
   pause(1)
end

writeKeys = {'network','','host_address',temp};
inifile(configFile,'write',writeKeys,'tabbed')

fprintf('\n\n')
fprintf('------------------------------------------------------------\n')
fprintf('Please enter a WARPLab host ID.\n\n')
fprintf('Pressing enter without typing an input will use a default\n')
fprintf('host ID of: %s\n\n',host);

temp = input('WARPLab Host ID: ','s');
if(isempty(temp))
   temp = host; 
   fprintf('   defaulting to %s\n',temp);
else
   fprintf('   setting to %s\n',temp); 
end

writeKeys = {'network','','host_ID',temp};
inifile(configFile,'write',writeKeys,'tabbed')

fprintf('\n\n')
fprintf('------------------------------------------------------------\n')
fprintf('Please enter a unicast starting port.\n\n')
fprintf('Pressing enter without typing an input will use a default\n')
fprintf('unicast starting port of: %s\n\n',port_unicast);

temp = input('Unicast Starting Port: ','s');
if(isempty(temp))
   temp = port_unicast; 
   fprintf('   defaulting to %s\n',temp);
else
   fprintf('   setting to %s\n',temp); 
end

writeKeys = {'network','','unicast_starting_port',temp};
inifile(configFile,'write',writeKeys,'tabbed')


fprintf('\n\n')
fprintf('------------------------------------------------------------\n')
fprintf('Please enter a broadcast port.\n\n')
fprintf('Pressing enter without typing an input will use a default\n')
fprintf('broadcast port of: %s\n\n',port_bcast);

temp = input('Broadcast Port: ','s');
if(isempty(temp))
   temp = port_bcast; 
   fprintf('   defaulting to %s\n',temp);
else
   fprintf('   setting to %s\n',temp); 
end

writeKeys = {'network','','bcast_port',temp};
inifile(configFile,'write',writeKeys,'tabbed')


fprintf('\n\n')
fprintf('------------------------------------------------------------\n')
%%%%%%%% Transport Setup %%%%%%%%
I_PNET = 1;
I_JAVA = 2;

TRANS_NAME_LONG{I_PNET} = 'PNET UDP Toolbox';
TRANS_NAME_SHORT{I_PNET} = 'pnet';
TRANS_NAME_LONG{I_JAVA} = 'Java UDP';
TRANS_NAME_SHORT{I_JAVA} = 'java';

TRANS_AVAIL(I_PNET) = false;
TRANS_AVAIL(I_JAVA) = true;

if(isempty('pnet')==0)
    try
        version = pnet('version');
        version = sscanf(version,'%d.%d.%d%c');
        
        version_req = [2,0,6,sscanf(sprintf('%d','d'),'%d')];
        %verCompare = version(:)>=version_req(:);
        
        if(version(1)>version_req(1))
            TRANS_AVAIL(I_PNET) = true;
        elseif(version(1)==version_req(1) && version(2)>version_req(2))
            TRANS_AVAIL(I_PNET) = true;
        elseif(version(1)==version_req(1) && version(2)==version_req(2) && version(3)>version_req(2))
            TRANS_AVAIL(I_PNET) = true;
        elseif(version(1)==version_req(1) && version(2)==version_req(2) && version(3)==version_req(2) && version(4)>=version_req(4))
            TRANS_AVAIL(I_PNET) = true;
        end
        
    catch me
        TRANS_AVAIL(I_PNET) = false;
end

if(any(TRANS_AVAIL)==0)
   error('no supported transports were found installed on your computer'); 
end

fprintf('Select from the following available transports:\n')

sel = 1;
for k = 1:length(TRANS_AVAIL)
    if(TRANS_AVAIL(k))
        if(strcmp(TRANS_NAME_SHORT{k},transport))
            defaultSel = sel;
            fprintf('[%d] (default) %s\n',sel,TRANS_NAME_LONG{k})
        else
            fprintf('[%d]           %s\n',sel,TRANS_NAME_LONG{k})
        end
        selectionToIndex(sel) = k;
        sel = sel+1;
    end
end

temp = input('Selection: ');
if(isempty(temp))
   temp = defaultSel;
end

if(temp>(sel-1))
   error('invalid selection') 
end

transport = TRANS_NAME_SHORT{selectionToIndex(temp)};

fprintf('   setting to %s\n',transport);

writeKeys = {'network','','transport',transport};
inifile(configFile,'write',writeKeys,'tabbed')

fprintf('\n\n')
fprintf('------------------------------------------------------------\n')
%%%%%%%% Transport Setup %%%%%%%%
NAME_SHORT{1} = 'false';
NAME_SHORT{2} = 'true';


fprintf('Enable jumbo frame support? (experimental)\n')

sel = 1;
for k = 1:2
        if(strcmp(NAME_SHORT{k},jumbo))
            defaultSel = sel;
            fprintf('[%d] (default) %s\n',sel,NAME_SHORT{k})
        else
            fprintf('[%d]           %s\n',sel,NAME_SHORT{k})
        end
        selectionToIndex(sel) = k;
        sel = sel+1;    
end

temp = input('Selection: ');
if(isempty(temp))
   temp = defaultSel;
end

if(temp>(sel-1))
   error('invalid selection') 
end

jumbo = NAME_SHORT{selectionToIndex(temp)};

fprintf('   setting to %s\n',jumbo);

writeKeys = {'network','','jumbo',jumbo};
inifile(configFile,'write',writeKeys,'tabbed')




fprintf('\n\n')
fprintf('------------------------------------------------------------\n')
fprintf('\n\nSetup Complete\nwl_ver():\n');
wl_ver()

end