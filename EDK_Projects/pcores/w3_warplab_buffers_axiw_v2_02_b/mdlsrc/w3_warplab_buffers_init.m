%IMPORTANT: if you change any of the NumSamps values, you must update the 
% EDK Processor block with the new shared memory sizes. We recommend
% deleting the existing EDK Processor block and re-adding it, to ensure
% all changes are reflected
NumSamps_Rx_IQ = 2^15;
NumSamps_Tx_IQ = 2^15;
NumSamps_Rx_RSSI = 2^13;
