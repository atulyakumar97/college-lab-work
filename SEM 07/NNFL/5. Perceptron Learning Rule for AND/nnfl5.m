clc; clear; close all;

p=[1 1 -1 -1; 1 -1 1 -1]
t=[1 -1 -1 -1]
[n1, n2]=size(p);
w1=randi([0 1]);
w2=randi([0 1]);
w=[w1; w2]'
b=0;
alpha=input('Enter the value of alpha: ');
theta=input('Enter the value of theta: ');
linehandle=plotpc(w,b);
pause;
flag=1;

while (flag==1)
    for i=1:n2
        yin=p(1,i)*w1 + p(2,i)*w2 + b;
        if(yin>theta)
            y=1;
        elseif(yin<-theta)
            y=-1;
        elseif(-theta<=yin && yin<=theta)
            y=0;
        end
        if(y~=t(i))
            w1=w1+alpha*t(i)*p(1,i)
            w2=w2+alpha*t(i)*p(2,i)
            b=b+alpha+t(i)
            linehandle=plotpc(w,b,linehandle);
        else
            flag=0;
        end
        pause;
    end
end    





