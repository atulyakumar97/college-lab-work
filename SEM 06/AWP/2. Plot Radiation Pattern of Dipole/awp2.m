clc;
close all;
clear all;
t = 0:0.01:3.14*2;
figure(1)
polar(t,abs(sin(t)))
title('E plane pattern');
z = 0:0.001:3.14*2;
figure(2)
polar(z,0.5*(cos(z).^2+sin(z).^2))
title('H plane pattern')
figure(3)
x=0:0.001:3.14*2;
polar(x,abs(cos(x)))
title('Horizontal pattern');