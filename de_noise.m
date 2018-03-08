function [E] = de_noise(k)

b1=fir1(20,[48/200 52/200],'stop');
b2=fir1(20,[0.5 60]/200,'bandpass');
E1=filtfilt(b1,1,k);
E=filtfilt(b2,1,E1);
