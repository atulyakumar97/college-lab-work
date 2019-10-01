clc
clear all
close all

w_h = 0.1:0.05:5;
w = 2.5;
er = 10.5;
h = w./w_h;

for i = 1:length(w_h)
if (w_h(i)<=1)
    eff0(i) = (er+1)/2 + ((er-1)/2)*((1+12*(1/w_h(i)))^(-1/2)+0.04*(1-w_h(i))^2);
    z0(i) = (60)/(sqrt(eff0(i)))*log((8/(w_h(i)))+ w_h(i)/4);
else
    eff0(i) = (er+1)/(2) + (er-1)/(2)*(1 + 12*(1/w_h(i)))^(-1/2);
    z0(i) = (120*pi)/((sqrt(eff0(i)))*(w_h(i) + 1.393 + 0.667*log((w_h(i)+1.444))));
end 
end

w_h = 0.1:0.05:5;
w = 2.5;
er = 4.4;
h = w./w_h;

for i = 1:length(w_h)
if (w_h(i)<=1)
    eff1(i) = (er+1)/2 + ((er-1)/2)*((1+12*(1/w_h(i)))^(-1/2)+0.04*(1-w_h(i))^2);
    z1(i) = (60)/(sqrt(eff1(i)))*log((8/(w_h(i)))+ w_h(i)/4);
else
    eff1(i) = (er+1)/(2) + (er-1)/(2)*(1 + 12*(1/w_h(i)))^(-1/2);
    z1(i) = (120*pi)/((sqrt(eff1(i)))*(w_h(i) + 1.393 + 0.667*log((w_h(i)+1.444))));
end 
end

figure(3)
plot(h,z1)
xlabel('h')
ylabel('characteristic impedence')

w_h = 0.1:0.05:5;
w = 2.5;
er = 2.2;
h = w./w_h;

for i = 1:length(w_h)
if (w_h(i)<=1)
    eff2(i) = (er+1)/2 + ((er-1)/2)*((1+12*(1/w_h(i)))^(-1/2)+0.04*(1-w_h(i))^2);
    z2(i) = (60)/(sqrt(eff2(i)))*log((8/(w_h(i)))+ w_h(i)/4);
else
    eff2(i) = (er+1)/(2) + (er-1)/(2)*(1 + 12*(1/w_h(i)))^(-1/2);
    z2(i) = (120*pi)/((sqrt(eff2(i)))*(w_h(i) + 1.393 + 0.667*log((w_h(i)+1.444))));
end 
end

figure(1)
plot(w_h,z0,w_h,z1,w_h,z2)
xlabel('w/h')
ylabel('characteristic impedence')

w_h = 0.1:0.05:5;
h = 1.6;
w = w_h.*h;
er = 10.5;

for i = 1:length(w_h)
if (w_h(i)<=1)
    eff3(i) = (er+1)/2 + ((er-1)/2)*((1+12*(1/w_h(i)))^(-1/2)+0.04*(1-w_h(i))^2);
    z3(i) = (60)/(sqrt(eff3(i)))*log((8/(w_h(i)))+ w_h(i)/4);
else
    eff3(i) = (er+1)/(2) + (er-1)/(2)*(1 + 12*(1/w_h(i)))^(-1/2);
    z3(i) = (120*pi)/((sqrt(eff3(i)))*(w_h(i) + 1.393 + 0.667*log((w_h(i)+1.444))));
end 
end

figure(2)
hold on 
plot(w_h,z3)
xlabel('w/h')
ylabel('characteristic impedence')