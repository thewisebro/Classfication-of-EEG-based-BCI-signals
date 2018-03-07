clear all;
subjects = 1;
ws=6;

for sub = 1:subjects
    [k,motion] = get_input(sub);
    %F = preprocess(k,ws);
    %MD, xmean, xstd, ystd] = feature_extraction(F);    
end