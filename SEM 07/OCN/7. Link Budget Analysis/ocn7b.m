clc;
clear all;
close all;
pr=-32;
pt=3;
sm=6;
alpha=0.3;
c_loss=2;
j_loss=2;
L=60;
f_loss=L*alpha;
pl=pt-pr;
totalp_loss=f_loss+(2*(j_loss+c_loss)+sm+c_loss)

x=0:1:L;
for i=0:L
    y(i+1)=2-0.3*i;
end
plot(x,y)
grid on
title('Attenuation v/s Length')
xlabel('Length')
ylabel('Attenuation')