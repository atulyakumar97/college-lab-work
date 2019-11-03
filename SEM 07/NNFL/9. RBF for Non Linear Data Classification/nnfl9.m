clc;
clear all;
close all;
A = [rand(1,100);rand(1,100)];
B = [-1.*rand(1,100);rand(1,100)];
C = [-1.*rand(1,100);-1.*rand(1,100)];
D = [rand(1,100);-1.*rand(1,100)];

hold on
scatter(A(1,:), A(2,:),'x','r')
scatter(B(1,:), B(2,:),'o','b')
scatter(C(1,:), C(2,:),'.','g')
scatter(D(1,:), D(2,:),'^','k')

P=[A(:,1:80) B(:,1:80) C(:,1:80) D(:,1:80)];
At = repmat([1 0 0 0], 80, 1);
Bt = repmat([0 1 0 0], 80, 1);
Ct = repmat([0 0 1 0], 80, 1);
Dt = repmat([0 0 0 1], 80, 1);
T = [At' Bt' Ct' Dt'];

size(P)
size(T)

net = newrb(P,T);
y=round(sim(net,A(:,81:100)));
view(net);

