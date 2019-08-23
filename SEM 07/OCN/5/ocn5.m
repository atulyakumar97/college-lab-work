clc
clear all
close all

s0 = 0.0970;
n2 = 1.48;
lambda0 = 1310;
dn = 0.002;
c = 3*10^5; %km/s
const = 0.26; % Vd^2(Vb)/dV^2

lambda=1250:0.1:1600;
Dt=(s0.*lambda./4).*(1 - (lambda0./lambda).^4);
Dwg=-((n2*dn)./(c*lambda))*const*10^12;
Dm=Dt- Dwg;
zero= lambda.*0;     


figure(1)
hold all
grid on
plot(lambda,Dt)
plot(lambda, Dwg, '--')
plot(lambda, Dm, '--')
plot(lambda, zero, 'k')
legend('Dt','Dwg','Dm')
xlabel('wavelength (nm)')
ylabel('Dispersion')

figure(2)
s_0=0.70;
lambda_0=1550;
lambda=1250:0.1:1600;
Dt=(s_0.*lambda./4).*(1 - (lambda_0./lambda).^4);
plot(lambda,Dt)
grid on
legend('Dt')
xlabel('wavelength (nm)')
ylabel('Dispersion')