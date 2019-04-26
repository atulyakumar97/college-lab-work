clc;
clear all;
close all;

t=0:0.01:2*3.14;
figure(1)
polar(t,abs(sin(t)))
title('E plane pattern')

z=0:0.01:2*3.14;
figure(2)
polar(z,cos(z).^2+sin(z).^2)
title('H plane pattern')

x=0:0.01:2*3.14;
figure(3)
polar(x,abs(cos(x)))
title('Horizontal plane pattern')
 