%% 2-D Isotropic Scattering with Jake's deterministic model
N=17*2; %Number of arriving waves
M=0.5*(N/2-1);
theta_n=2*pi*n/N;%Angle of Arrival
T=1; %Simulation Stepsize
fm=0.1/T; %Maximum doppler frequency
fn=fm*cos(theta_n);
alpha=0;
beta=pi*n/N;
n2=1:200;
t=n2*T;

%Calculate Summation terms
n=1;
sum=0;sum2=0;
while n<M+1
    k=cos(beta)*cos(2*pi*fn*t);
    k2=sin(beta)*cos(2*pi*fn*t);
    sum=sum+k;
    sum2=sum2+k2;
    n=n+1;
end
gi(t)=(1/sqrt(38))*sqrt(2/N)*2*sum+sqrt(2)*cos(2*pi*fm*t);
gq(t)=(1/sqrt(38))*sqrt(2/N)*2*sum2;

n2=1:200;
g(t)=sqrt(gi(t).^2+gq(t).^2);

plot(n2,20*log(g(t)))

%% Mean-square envelop Estimator
W=[50,100,150,200,250,300];
% Find the mean-square matrix
Mean=[];
count=1;
while count<7
    Estimate=1;
    total_omega=0;
    while Estimate<1001
        Window=1;
        total=0;
        while Window<W(count)+1
            sample=g(Window*T);
            total=total+sample;
            Window=Window+1;
        end
        total_omega=total_omega+total/W(count);
        Estimate=Estimate+1;
    end
    Mean(count)=total_omega/1000;
    count=count+1;
end

% Find the Variance Matrix
Var=[];
count=1;
while count<7
    Estimate=1;
    sum=0;
    while Estimate<1001
        Window=1;
        total=0;
        while Window<W(count)+1
            sample=g(Window*T);
            total=total+sample;
            Window=Window+1;
        end
        sum=sum+(abs(Mean(count)-total/W(count)))^2;  % Sum of square difference
        Estimate=Estimate+1;
    end
    Var(count)=sum/1000;
    count=count+1;
end
figure()
plot(W,Var)





