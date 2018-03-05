function F = preprocess(k,ws)
s = size(k);
F = zeros(s(1)-ws+1,s(2));
for i = ws:s(1)
    for j = 1:s(2)
        i_ = i-ws+1;
        for l = 0:ws-1
            F(i_,j) = F(i_,j) + k(i-l,j);
        end
        F(i_,j) = F(i_,j)/ws;
    end
end