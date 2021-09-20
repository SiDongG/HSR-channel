P=43;
N=10;
t=1:1:100;
y=43-20*log10(4*pi*0.04*t*3.1)-10;
S1=0.5+0.5*erf((4.34*log(2)-y)/5.7);
S2=0.5+0.5*erf((4.34*log(100)-y)/5.7)-S1;
S3=1-S1-S2;
plot(t,S1);
hold on
plot(t,S2);
hold on
plot(t,S3);
xlabel('time slot number-->N'); 
ylabel('y--> Steady State Probabilities'); 
title('SSP model for 3-state FSMC');

