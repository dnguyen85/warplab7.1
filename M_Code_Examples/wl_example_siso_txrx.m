%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% wl_example_siso_txrx.m
%
% In this example, we send the short symbols from the
% 802.11 PHY specification as a preamble to a simple sinusoidal payload.
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

%Get IDs for the interfaces on the boards. Since this example assumes each
%board has the same interface capabilities, we only need to get the IDs
%from one of the boards
[RFA,RFB] = wl_getInterfaceIDs(nodes(1));

%Set up the interface for the experiment
wl_interfaceCmd(nodes,'RF_ALL','tx_gains',3,30);
wl_interfaceCmd(nodes,'RF_ALL','channel',2.4,11);

if(USE_AGC)
    wl_interfaceCmd(nodes,'RF_ALL','rx_gain_mode','automatic');
    wl_basebandCmd(nodes,'agc_target',-10);
    wl_basebandCmd(nodes,'agc_trig_delay', 511);
else
    wl_interfaceCmd(nodes,'RF_ALL','rx_gain_mode','manual');
    RxGainRF = 1; %Rx RF Gain in [1:3]
    RxGainBB = 15; %Rx Baseband Gain in [0:31]
    wl_interfaceCmd(nodes,'RF_ALL','rx_gains',RxGainRF,RxGainBB);
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
Ts_RSSI = 1/(wl_basebandCmd(nodes(1),'rx_rssi_clk_freq'));
t = [0:Ts:((txLength-length(preamble)-1))*Ts].'; % Create time vector(Sample Frequency is Ts (Hz))

payload = .6*exp(t*j*2*pi*5e6); %5 MHz sinusoid as our "payload"

txData = [preamble;payload];

node_tx = nodes(1);
node_rx = nodes(2);
RF_TX = RFA;
RF_RX = RFA;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Transmit and receive signal using WARPLab
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

wl_basebandCmd(node_tx,[RF_TX], 'write_IQ', txData(:));
wl_interfaceCmd(node_tx,RF_TX,'tx_en');
wl_interfaceCmd(node_rx,RF_RX,'rx_en');

wl_basebandCmd(node_tx,RF_TX,'tx_buff_en');
wl_basebandCmd(node_rx,RF_RX,'rx_buff_en');

eth_trig.send();

rx_IQ = wl_basebandCmd(node_rx,[RF_RX],'read_IQ', 0, txLength);
rx_RSSI = wl_basebandCmd(node_rx,[RF_RX],'read_RSSI',0,txLength/(Ts_RSSI/Ts));
rx_gains = wl_basebandCmd(node_rx,[RF_RX],'agc_state');

wl_basebandCmd(nodes,'RF_ALL','tx_rx_buff_dis');
wl_interfaceCmd(nodes,'RF_ALL','tx_rx_dis');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Visualize results
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1);clf;
ax(1) = subplot(2,2,1);
plot(0:(length(rx_IQ)-1),real(rx_IQ))
xlabel('Sample Index')
title('Received I')
axis tight;

ax(2) = subplot(2,2,2);
plot(0:(length(rx_IQ)-1),imag(rx_IQ))
xlabel('Sample Index')
title('Received Q')
axis tight

linkaxes(ax,'xy')

subplot(2,1,2)
plot(0:(length(rx_RSSI)-1),rx_RSSI)
axis tight
xlabel('Sample Index')
if(USE_AGC)
   RxGainRF = rx_gains(1);
   RxGainBB = rx_gains(2);
end
title(sprintf('Received RSSI, Gains Selected -- RF: %d, BB: %d',RxGainRF,RxGainBB))