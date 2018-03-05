clear all;
subjects = 9;
ws=6;

for sub = 1:subjects
    k = get_input(sub);
    F = preprocess(k);
    [MD, xmean, xstd, ystd] = feature_extraction(F);    
end