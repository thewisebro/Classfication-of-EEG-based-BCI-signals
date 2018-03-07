function MD = mean_derivative(F)
s = size(F);
MD = zeros(1,s(2));
for i = 2:s(1)
    for j = 1:s(2)
        MD(j) = MD(j) + F(i,j) - F(i-1,j);
    end
end
MD = MD/s(1);