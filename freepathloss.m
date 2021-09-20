P=43;
N=10;
t=1:1:100;
y=43-20*log10(4*pi*0.04*t*3.1)-10;
plot(t,y)
xlabel('time slot number-->N'); 
ylabel('y--> received average SNR'); 
