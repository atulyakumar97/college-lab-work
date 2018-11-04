clc;
clear all;
x=input('enter the string:','s');
n=length(x);
x=[x,'p'];
counta=0;
countb=0;
y=[];
 
if x(1)~='a'
    y=[y,counta];
end
 
for i=1:n
    if x(i)=='a'
        counta=counta+1;
    else if x(i)=='b'
            countb=countb+1;
       
    end
    end
 
if x(i)=='a' && x(i+1)~='a'
    y=[y,counta];
    counta=0;
end
 
if x(i)=='b' && x(i+1)~='b'
    y=[y,countb];
    countb=0;
end
end
 
disp('Runlength Code is : ')
disp(y)
 
z=[];
 
for i =1:length(y)
    if rem(i,2)~=0 %for a
        while y(i)~=0
            z=[z,'a'];
            y(i)=y(i)-1;
        end
    else %for b
        while y(i)~=0
            z=[z,'b'];
            y(i)=y(i)-1;
        end
    end
end
disp('decoded message is :')
disp(z)
