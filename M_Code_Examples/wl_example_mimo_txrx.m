%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% wl_example_mimo_txrx.m
%
% In this example, we send the short symbols from the
% 802.11 PHY specification as a preamble to a simple sinusoidal payload.
% Two radios are used to send sinusoids of different frequencies.
% If enabled by the USE_AGC variable at the top of the code, the AGC core 
% running on the WARP hardware will adjust RF and baseband gains as well as
% subtract off any DC offset that might be present in the reception.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
USE_AGC = true;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Set up the WARPLab experiment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NUMNODES = 2;

%Create a vector of node objects
nodes = wl_initNodes(NUMNODES);


%Create a UDP broadcast trigger and tell each node to be ready for it
eth_trig = wl_trigger_eth_udp_broadcast;
wl_triggerManagerCmd(nodes,'add_ethernet_trigger',[eth_trig]);

%%

%Get IDs for the interfaces on the boards. Since this example assumes each
%board has the same interface capabilities, we only need to get the IDs
%from one of the boards
[RFA,RFB] = wl_getInterfaceIDs(nodes(1));

%Set up the interface for the experiment
wl_interfaceCmd(nodes,RFA+RFB,'tx_gains',3,30);
wl_interfaceCmd(nodes,RFA+RFB,'channel',2.4,11);

if(USE_AGC)
    wl_interfaceCmd(nodes,RFA+RFB,'rx_gain_mode','automatic');
    wl_basebandCmd(nodes,'agc_target',-10);
    wl_basebandCmd(nodes,'agc_trig_delay', 500);
    wl_basebandCmd(nodes,'agc_dco', true);
else
    wl_interfaceCmd(nodes,RFA+RFB,'rx_gain_mode','manual');
    RxGainRF = 1; %Rx RF Gain in [1:3]
    RxGainBB = 15; %Rx Baseband Gain in [0:31]
    wl_interfaceCmd(nodes,RFA+RFB,'rx_gains',RxGainRF,RxGainBB);
end


%We'll use the transmitter's I/Q buffer size to determine how long our
%transmission can be
txLength = nodes(1).baseband.txIQLen;

%Set up the baseband for the experiment
wl_basebandCmd(nodes,'tx_delay',0);
wl_basebandCmd(nodes,'tx_length',txLength);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Signal processing to generate transmit signal
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% First generate the preamble for AGC. The preamble corresponds to the
% short symbols from the 802.11a PHY standard
shortSymbol_freq = [0 0 0 0 0 0 0 0 1+i 0 0 0 -1+i 0 0 0 -1-i 0 0 0 1-i 0 0 0 -1-i 0 0 0 1-i 0 0 0 0 0 0 0 1-i 0 0 0 -1-i 0 0 0 1-i 0 0 0 -1-i 0 0 0 -1+i 0 0 0 1+i 0 0 0 0 0 0 0].';
shortSymbol_freq = [zeros(32,1);shortSymbol_freq;zeros(32,1)];
shortSymbol_time = ifft(fftshift(shortSymbol_freq));
shortSymbol_time = (shortSymbol_time(1:32).')./max(abs(shortSymbol_time));
shortsyms_rep = repmat(shortSymbol_time,1,30);

preamble = shortsyms_rep;
preamble = preamble(:);

Ts = 1/(wl_basebandCmd(nodes(1),'tx_buff_clk_freq'));
t = [0:Ts:((txLength-length(preamble)-1))*Ts].'; % Create time vector(Sample Frequency is Ts (Hz))

payload_A = .6*exp(t*j*2*pi*5e6); %5 MHz sinusoid as our "payload" for RFA
payload_B = .6*exp(t*j*2*pi*8e6); %8 MHz sinusoid as our "payload" for RFB

txData_A = [preamble;payload_A];
txData_B = [preamble;payload_B];
txData = [txData_A,txData_B];

node_tx = nodes(1);
node_rx = nodes(2);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Transmit and receive signal using WARPLab
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

wl_basebandCmd(node_tx,[RFA,RFB], 'write_IQ', txData);
wl_interfaceCmd(node_tx,RFA+RFB,'tx_en');
wl_interfaceCmd(node_rx,RFA+RFB,'rx_en');

wl_basebandCmd(node_tx,RFA+RFB,'tx_buff_en');
wl_basebandCmd(node_rx,RFA+RFB,'rx_buff_en');

eth_trig.send();

rx_IQ = wl_basebandCmd(node_rx,[RFA,RFB],'read_IQ', 0, txLength);
rx_RSSI = wl_basebandCmd(node_rx,[RFA,RFB],'read_RSSI');

wl_basebandCmd(nodes,RFA+RFB,'tx_rx_buff_dis');
wl_interfaceCmd(nodes,RFA+RFB,'tx_rx_dis');



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Visualize results
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);clf;
ax(1) = subplot(3,2,1);
plot(0:(length(rx_IQ)-1),real(rx_IQ(:,1)))
xlabel('Sample Index')
title('RFA: Received I')
axis tight;

ax(2) = subplot(3,2,2);
plot(0:(length(rx_IQ)-1),imag(rx_IQ(:,1)))
xlabel('Sample Index')
title('RFB: Received Q')
axis tight

bx(1) = subplot(3,2,3);
plot(0:(length(rx_IQ)-1),real(rx_IQ(:,2)),'r')
xlabel('Sample Index')
title('RFA: Received I')
axis tight;

bx(2) = subplot(3,2,4);
plot(0:(length(rx_IQ)-1),imag(rx_IQ(:,2)),'r')
xlabel('Sample Index')
title('RFB: Received Q')
axis tight

linkaxes([ax,bx],'x')


subplot(3,1,3)
plot(0:(length(rx_RSSI)-1),rx_RSSI(:,1))
hold on
plot(0:(length(rx_RSSI)-1),rx_RSSI(:,2),'r')
hold off
legend('RFA','RFB','location','southeast')
axis tight
xlabel('Sample Index')
title('Received RSSI')