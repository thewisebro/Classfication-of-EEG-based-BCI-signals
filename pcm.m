function [Y] = pcm(E)
P = pca(E);
y = E*P;
Y = y(:, [1 2]);