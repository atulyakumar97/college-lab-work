clc
close all 
clear all

[y,fs]=audioread('s1.wav');
%y=y(1:1440000);
subplot(3,1,1)
plot(y)
title('Original Audio Signal')

div=length(y)/160;
rec_window=ones(1,160);

for i=1:2*div-1
    win=y((i-1)*80+1:(i*80)+80)
    z=rec_window*(win);
    
    e(i)=sum(z.^2);
    
    counter=0;
    for j=1:length(win)-1
    if win(j)<0 && win(j+1) > 0
        counter=counter+1;
        continue;   
    end    
    if win(j)>0 && win(j+1) < 0
        counter=counter+1;
        continue;
    end
    end  
    q(i)=counter;
end

subplot(3,1,2)
plot(e)
title('Energy')
AverageEnergy=mean(e)
subplot(3,1,3)
plot(q)
title('Zero Crossings')

AverageEnergy=mean(e)
counter=0;
for i=1:length(y)-1
    if y(i)<0 && y(i+1) > 0
        counter=counter+1;
        continue;   
    end    
    if y(i)>0 && y(i+1) < 0
        counter=counter+1;
        continue;
    end
end        
zcr = counter/length(y)
