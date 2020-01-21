clc
clear all
close all

p = [1 1 -1 -1; 1 -1 1 -1];
t = [1 -1 -1 -1];

w=[rand;rand]';
b=0;
alpha=0.1;
theta=0.2;
flag=1;

hold on
axis([-2 2 -2 2])
plot(p(1,1),p(2,1),'or')
plot(p(1,2),p(2,2),'xb')
plot(p(1,3),p(2,3),'xb')
plot(p(1,4),p(2,4),'xb')
linehandle=plotpc(w,b);
pause

while(flag==1)
  match=0;  
  for i=1:size(p,2)
    yin=(w(1)*p(1,i))+(w(2)*p(2,i))+b;
    if(yin>theta)
        y = 1;
    elseif(yin<-theta)
        y=-1;
    elseif(yin<=theta && yin>=-theta)
        y=0;
    end
    if(y~=t(i))
        w(1)=w(1)+alpha*p(1,i)*t(i);
        w(2)=w(2)+alpha*p(2,i)*t(i);
        b=b+alpha*t(i);
        linehandle=plotpc(w,b,linehandle)
        pause
    elseif(y==t(i))
        % if target and output match
        match=match+1
        if(match==4)  
            flag=0;
        end
    end
  end
end

linehandle=plotpc(w,b,linehandle)
pause