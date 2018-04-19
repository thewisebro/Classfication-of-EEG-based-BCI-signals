function [y] = PCA(E)
P = pca(E);
y = E*P;
%plot(y), title('Principal Component Analysis(PCA) of Filtered signals'), xlabel('time in milliseconds(ms)'), ylabel('amplitude in microVolts(uV)');
%bar(std(y)), title('Bar graph of Standard Deviations of the Pricinpal Components'), xlabel('channel number'), ylabel('amplitude in microVolts(uV)');
