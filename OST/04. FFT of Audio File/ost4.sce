Z=wavread('S1.wav');
sound(Z)

[y,fs]=wavread('S1.wav');
n=length(y)
t=1:1:n;
figure
plot(t,y)
xlabel('Time')
ylabel('Amplitude')

[y,fs]=wavread('S1.wav',[6000,8000]);
n=length(y)
t=1:1:n;
figure
plot(t,y)
xlabel('Time')
ylabel('Amplitude')

k=1:1:n
fk=k*(fs/n)
ft=fft(y)

figure
plot(k,abs(ft))
xlabel('Frequency')
ylabel('Amplitude')

figure
plot(fk,abs(ft))
xlabel('Frequency in Hz')
ylabel('Amplitude')
