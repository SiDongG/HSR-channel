P=43;
N=10;
t=1:1:400;
t1=400:1:500;
y=63-20*log10(4*pi*(0.1*t)*3.1)-10;
y1=63-20*log10(4*pi*(0.1*t1)*3.1)-10-10*2.412*log10(0.1*t1/40);
S1=0.5+0.5*erf((4.34*log(0.1)-y)/5.7);
S11=0.5+0.5*erf((4.34*log(0.1)-y1)/5.7);
S2=0.5+0.5*erf((4.34*log(0.316)-y)/5.7)-S1;
S21=0.5+0.5*erf((4.34*log(0.316)-y1)/5.7)-S11;
S3=0.5+0.5*erf((4.34*log(1)-y)/5.7)-S2-S1;
S31=0.5+0.5*erf((4.34*log(0.316)-y1)/5.7)-S11-S21;
S4=0.5+0.5*erf((4.34*log(3.16)-y)/5.7)-S2-S1-S3;
S41=0.5+0.5*erf((4.34*log(3.16)-y1)/5.7)-S21-S11-S31;
S5=0.5+0.5*erf((4.34*log(10)-y)/5.7)-S2-S1-S3-S4;
S51=0.5+0.5*erf((4.34*log(10)-y1)/5.7)-S21-S11-S31-S41;
S6=0.5+0.5*erf((4.34*log(31.62)-y)/5.7)-S2-S1-S3-S4-S5;
S61=0.5+0.5*erf((4.34*log(31.62)-y1)/5.7)-S21-S11-S31-S41-S51;
S7=0.5+0.5*erf((4.34*log(100)-y)/5.7)-S2-S1-S3-S4-S5-S6;
S71=0.5+0.5*erf((4.34*log(100)-y1)/5.7)-S21-S11-S31-S41-S51-S61;
S8=1-S2-S1-S3-S4-S5-S6-S7;
S81=1-S21-S11-S31-S41-S51-S61-S71;
plot(t,S1);
hold on
plot(t1,S11);
hold on
plot(t,S2);
hold on
plot(t1,S21);
hold on
plot(t,S3);
hold on
plot(t1,S31);
hold on
plot(t,S4);
hold on
plot(t1,S41);
hold on
plot(t,S5);
hold on
plot(t1,S51);
hold on
plot(t,S6);
hold on
plot(t1,S61);
hold on
plot(t,S7);
hold on
plot(t1,S71);
hold on
plot(t,S8);
hold on
plot(t1,S81);
xlabel('time slot number-->N'); 
ylabel('y--> Steady State Probabilities'); 
title('SSP model for 8-state FSMC');

