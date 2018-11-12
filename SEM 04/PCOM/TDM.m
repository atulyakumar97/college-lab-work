clc
close all
clear all

t=0:0.5:4*pi;
sig1=8*sin(t);
sig2=8*square(t);
l=length(t);

subplot(2,2,1)
plot(t,sig1)
xlabel('Time')
ylabel('Amplitude')
title('Sine wave')

subplot(2,2,2)
plot(t,sig2)
xlabel('Time')
ylabel('Amplitude')
title('Square wave')

subplot(2,2,3)
stem(t,sig1)
xlabel('Time')
ylabel('Amplitude')
title('Sampled Sine Wave')

subplot(2,2,4)
stem(t,sig2)
xlabel('Time')
ylabel('Amplitude')
title('Sampled Square Wave')

for i=1:l
   sig(1,i)=sig1(i)
   sig(2,i)=sig2(i)
end

tdmsig=reshape(sig,1,2*l)
figure
stem(tdmsig)
xlabel('Time')
ylabel('Amplitude')
title('TDM')

demux=reshape(tdmsig,2,l)

for i=1:l
    sig3(i)=demux(1,i)
    sig4(i)=demux(2,i)
end

figure
subplot(2,1,1)
stem(sig3)
xlabel('Time')
ylabel('Amplitude')
title('Recovered Sine')

subplot(2,1,2)
stem(sig4)
xlabel('Time')
ylabel('Amplitude')
title('Recovered Square')
