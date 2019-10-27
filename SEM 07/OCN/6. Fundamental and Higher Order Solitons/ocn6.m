clc; clear all; close all;

t=-5:0.0005:5;
z=0:pi/8:pi/2;
for k=1:length(t)
    for m=1:length(z)
        u(k,m)=sech(t(k))*exp(1i*z(m)/2);       %% 1i - one i
        v(k,m)=4*(cosh(3*t(k))+3*exp(4*1i*z(m))*cosh(t(k)))*exp(1i*z(m)/2)/(cosh(4*t(k))+4*cosh(2*t(k))+3*cos(4*z(m)));
    end
end

u=abs(u);
v=abs(v);
figure
ribbon(t,u,0.01)
xlabel('Time')
ylabel('Amplitude')
zlabel('Intensity')
figure
ribbon(t,v,0.01)
xlabel('Time')
ylabel('Amplitude')
zlabel('Intensity')