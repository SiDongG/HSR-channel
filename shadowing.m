% Dual-slope pathloss model with shadowing effect
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
X=lognrnd(-1.1029,3,1,1000);
Y=db(X);
subplot(2,1,1); 
plot(d1,20*log((4*pi*d1*f)/c)+Y(1:40),'b');
hold on
plot(d2,Lp+L1+Y(41:400));
hold on
plot(d3,20*log((4*pi*d3*f)/c)+10*2.412*log(d3/d0)+L2+Y(401:1000));
xlabel('x--> D (Distance in meter)'); 
ylabel('y--> Pathloss with shadowing'); 
title('Dual-slope pathloss model with shadowing'); 
grid on
subplot(2,1,2); 
plot(log(d1/d0),20*log((4*pi*d1*f)/c)+Y(1:40),'r');
hold on
plot(log(d2/d0),Lp+L1+Y(41:400));
hold on
plot(log(d3/d0),20*log((4*pi*d3*f)/c)+10*2.412*log(d3/d0)+L2+Y(401:1000));
xlabel('x--> D (Log (D/D0))'); 
ylabel('y--> Pathloss with shadowing'); 
title('Dual-slope pathloss model with shadowing'); 
grid on;
%piecewise(d<d0,Pt,d0<d,Pt-Lp-L1,d>dc,