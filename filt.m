k=500;
delay = (k-1)/2;
coeff = ones(1,k)/k;
fx = filter(coeff,1,x);
hold on;
ax = 1:20000;
plot(ax,x(1:20000),'--r');
plot(ax-delay,fx(1:20000),'-');