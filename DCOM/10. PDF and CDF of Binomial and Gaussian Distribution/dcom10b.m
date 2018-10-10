clc
close all
clear all

u=1
sigma=0.5
for x=-10:1:10
    g(x+11)=exp(-(1/2)*((x-u)^2)/(sigma^2))/(sigma*sqrt(2*3.14));
end

plot(g)