y=-10:0.1:10;
f=((10/log(10))/4.033*sqrt(2*pi)*y).*exp(-(10/log(10)*log(y)+1.866).^2/32.53);
plot(y,f);