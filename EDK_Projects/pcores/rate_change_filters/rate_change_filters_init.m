%% Filter coefficients                             {{{1
%h64 = firpm(63, [0 0.7813*.25 1.28*.25 1], [1 1 0 0], [1 .2]);
h64 = [0.00043825,6.8602e-005,-0.0003624,-0.00080296,-0.00076294,4.6351e-005,0.0013095,0.0020978,0.0014367,-0.00081082,-0.0034401,-0.004377,-0.0021085,0.0028058,0.007402,0.0078539,0.0022706,-0.0071082,-0.014269,-0.012862,-0.0010126,0.015777,0.026355,0.020374,-0.003844,-0.035111,-0.052571,-0.035887,0.022576,0.11064,0.1992,0.25461,0.25461,0.1992,0.11064,0.022576,-0.035887,-0.052571,-0.035111,-0.003844,0.020374,0.026355,0.015777,-0.0010126,-0.012862,-0.014269,-0.0071082,0.0022706,0.0078539,0.007402,0.0028058,-0.0021085,-0.004377,-0.0034401,-0.00081082,0.0014367,0.0020978,0.0013095,4.6351e-005,-0.00076294,-0.00080296,-0.0003624,6.8602e-005,0.00043825];
h64 = 0.99*(h64./max(h64));% .* filter_coeff_scaling;
h64_rs = permute(reshape(h64(1:64),4,4,4),[2 1 3]);

%h32 = firpm(31, [0 .75*.25 1.25*.25 1], [1 1 0 0], [1 .2]);
h32 = [0.0088567,-0.0081257,-0.010322,-0.0083903,0.00062604,0.013513,0.021548,0.015718,-0.0059593,-0.033833,-0.048831,-0.031674,0.025367,0.11093,0.19707,0.25107,0.25107,0.19707,0.11093,0.025367,-0.031674,-0.048831,-0.033833,-0.0059593,0.015718,0.021548,0.013513,0.00062604,-0.0083903,-0.010322,-0.0081257,0.0088567];
h32 = 0.95*h32./(max(h32));
h32_rs = h32;

%% Generate input test for TX interpolation path   {{{1
% Define the preamble                                                           {{{2
% Short training sequence
sts_freq = zeros(1, 64);
% Layout the ifft vector as [DC, pos. subcarriers, neg. subcarriers] 
% Ex: [DC, SC2, ..., SC27, SC28-32 (0), SC-32,..., SC-1] 
sts_freq(1:27) = [0 0 0 0 -1-1i 0 0 0 -1-1i 0 0 0 1+1i 0 0 0 1+1i 0 0 0 1+1i 0 0 0 1+1i 0 0];
sts_freq(28:38) = 0;
sts_freq(39:64) = [0 0 1+1i 0 0 0 -1-1i 0 0 0 1+1i 0 0 0 -1-1i 0 0 0 -1-1i 0 0 0 1+1i 0 0 0];
% Scale factor to normalize the resulting OFDM symbol
sts_freq = sqrt(13/6).*sts_freq;
sts_time = ifft(sts_freq, 64);
% Get just 1 repeated sequence of STS
sts_time = sts_time(1:16);

% Long training sequence - used for CFO and channel estimation                  {{{2
% Layout the ifft vector as [DC, SC2, ..., SC27, SC28-32 (0), SC-32,..., SC-1] 
lts_freq = [0 1 -1 -1 1 1 -1 1 -1 1 -1 -1 -1 -1 -1 1 1 -1 -1 1 -1 1 -1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 1 1 -1 -1 1 1 -1 1 -1 1 1 1 1 1 1 -1 -1 1 1 -1 1 -1 1 1 1 1];
lts_time = ifft(lts_freq, 64);

% For TX packet, use 30 copies (instead of 10) of the 16-sample STS for extra   {{{2
% AGC settling margin, and 5 copies of the (non-repetitive) LTS 
preamble = [repmat(sts_time, 1, 30) lts_time(33:64) lts_time lts_time];
tx_vec = [preamble preamble];

% Scaling
tx_signal = tx_vec ./ max(abs(tx_vec));


% TX signal - from workspace vectors                                            {{{2
tx_I_10msps.time = []';
tx_Q_10msps.time = []';
tx_I_10msps.signals.values = real(tx_signal)';
tx_Q_10msps.signals.values = imag(tx_signal)';

% RX test data vector
load('test_data/tx_IQ_40msps.mat');
rx_I = tx_I_40msps;
rx_Q = tx_Q_40msps;


% Test data vector
% load('test_data/rxIQSamples.mat');
% rx_I.time = [];
% rx_Q.time = [];
% rx_I.signals.values = real(rx_IQ);
% rx_Q.signals.values = imag(rx_IQ);
