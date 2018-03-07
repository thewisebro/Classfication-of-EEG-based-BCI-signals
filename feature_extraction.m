function [MD, xmean, xstd, ystd] = feature_extraction(F)
MD = mean_derivative(F);

%Hilbert transformation
y = hilbert(F);
xmean = mean(real(y));
xstd = std(real(y));
ystd = std(imag(y));
end