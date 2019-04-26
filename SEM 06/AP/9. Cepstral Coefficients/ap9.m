%Cepstral Coefficients and Linear Prediction Cepstral Coefficients
clc
clear all
close all

[y,fs]=audioread('s1.wav');
length(y)
window_len=10;

for i = 1:length(y)-10
    SpeechFrame=y(i:i+10);
    PowerSpectrum = abs(fft(SpeechFrame,1024)).^2;
    AutoCorrelation = ifft(PowerSpectrum,1024);
    Cepstrum1 = ifft(log(PowerSpectrum),1024);    
    
    [lp,g] = lpc(SpeechFrame,10);
    ARPowerSpectrum = g ./ abs(fft(lp,1024)).^2;
    Cepstrum2 =  ifft(log(ARPowerSpectrum),1024);
end

figure(1)
plot(Cepstrum1(1:10),'DisplayName','Autocorrelation')

hold on;
plot(Cepstrum2(1:10),'r','DisplayName','LPC Coefficients')