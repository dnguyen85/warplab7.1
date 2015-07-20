% Params
LTS_CORR_THRESH = 0.8;  % Normalized threshold for LTS correlation

% Processing data
rx_I_10msps_out = sign(rx_I_10msps.signals.values(1:8:end));
rx_Q_10msps_out = sign(rx_Q_10msps.signals.values(1:8:end));
rx_IQ_10msps = rx_I_10msps_out + j * rx_Q_10msps_out;

% Correlation
% lag is the lag of 1st sequence compared to 2nd
[corr, lag] = xcorr(rx_IQ_10msps, lts_time);
lts_corr = abs(corr);

% find the zero-lag index
zero_lag_index = find(~lag);

% Get the peak index in correlation result
lts_peaks = find(lts_corr > LTS_CORR_THRESH*max(lts_corr));
% Adjust peak index to get the actual sample indexes at which matches occur
lts_peaks = lts_peaks - zero_lag_index + 1;

%% Plotting
figure(1); clf;
% correlation results - plot the 1st 1000 results
lts_to_plot = lts_corr(zero_lag_index:zero_lag_index+1999); 
plot(lts_to_plot, '.-b', 'Linewidth', 1);
% plot the LTS corr threshold
hold on;
grid on;
line([1 length(lts_to_plot)], LTS_CORR_THRESH*max(lts_to_plot)*[1 1], ...
    'LineStyle', '--', 'Color', 'r', 'Linewidth', 2);
title('LTS Correlation and Threshold')
xlabel('Sample Index')



