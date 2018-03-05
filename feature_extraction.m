function [MD, xmean, xstd, ystd] = feature_extraction(F)
MD = mean_derivative(F);

%Hilbert transformation
xmean = 0;
xtsd = 0;
ystd = 0;
end