% Dual-slope pathloss model
f = 930;
c = 300;
d1=1:1:40;
d2=41:1:400;
d3=401:1:1000;
d0=40;
dc=400;
a=10/log(10);
Lp =20*log((4*pi*d2*f)/c);
L1=10*2.412*log(d2/d0);
L2=10*5.668*log(d3/dc);
subplot(2,1,1); 
plot(d1,20*log((4*pi*d1*f)/c),'b');
hold on
plot(d2,Lp+L1);
hold on
%plot(d2,Lp+L1+a*exp(-(a*log(d2)+1.1029)^2/18)/(3*sqrt(2*pi)*d2));
hold on
plot(d3,20*log((4*pi*d3*f)/c)+10*2.412*log(d3/d0)+L2);
xlabel('x--> D (Distance in meter)'); 
ylabel('y--> Pathloss'); 
title('Dual-slope pathloss model'); 
grid on
subplot(2,1,2); 
plot(log(d1/d0),20*log((4*pi*d1*f)/c),'r');
hold on
plot(log(d2/d0),Lp+L1);
hold on
plot(log(d3/d0),20*log((4*pi*d3*f)/c)+10*2.412*log(d3/d0)+L2);
xlabel('x--> D (Log (D/D0))'); 
ylabel('y--> Pathloss'); 
title('Dual-slope pathloss model'); 
grid on;
%piecewise(d<d0,Pt,d0<d,Pt-Lp-L1,d>dc,