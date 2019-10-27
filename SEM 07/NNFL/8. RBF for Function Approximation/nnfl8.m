clc;
clear all;
close all;
A=[rand(1,100);rand(1,100)];
B=[rand(1,100);-rand(1,100)];
C=[-rand(1,100);rand(1,100)];
D=[-rand(1,100);-rand(1,100)];
P=[A(:,1:80) B(:,1:80) C(:,1:80) D(:,1:80)];
Aout=[1;0;0;0];
Bout=[0;1;0;0];
Cout=[0;0;1;0];
Dout=[0;0;0;1];
axis([-1 1 -1 1])
hold on
plot(A(1,:),A(2,:),'*')
plot(B(1,:),B(2,:),'^')
plot(C(1,:),C(2,:),'O')
plot(D(1,:),D(2,:),'.')
text(0.5,0.5,'Class A')
text(0.5,-0.5,'Class B')
text(-0.5,0.5,'Class C')
text(-0.5,-0.5,'Class D')
for i=1:316
    if i<=79
        Aout=[Aout,[1;0;0;0]];
    elseif i<=158
        Bout=[Bout,[0;1;0;0]];
    elseif i<=237
        Cout=[Cout,[0;0;1;0]];
    else
        Dout=[Dout,[0;0;0;1]];
        end
end   
T=[Aout Bout Cout Dout];
net=newrbe(P,T);
A1=A(:,81:100);
y=sim(net,A1);
view(net);

