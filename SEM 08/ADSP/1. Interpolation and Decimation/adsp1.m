clc
clear all
close all

t=0:0.1:10;
pi = 3.14
y=sin(2*pi*t);

y1 = interp(y, 2);
t1 = interp(t, 2);

y2=decimate(y,2);
t2=decimate(t,2);

figure(1)
subplot(3,2,1)
stem(t,y )
title('original signal')
subplot(3,2,2)
stem(t1,y1)
title('using interp function')
subplot(3,2,3)
stem(t2,y2)
title('using decimate function')


hold on
index=1
for i=1:length(t)
    if mod(i,2)~=0
        y3(index)=y(i);
        index=index+1;
    end
end

subplot(3,2,4)
stem(y3)
title('decimate using for loop')


index=1;
for i=1:length(t)-1
        y4(index)=y(i);
        y4(index+1)=(y(i)+y(i+1))/2;
        index=index+2;
end

subplot(3,2,5)
stem(y4)
title('interp using for loop')




