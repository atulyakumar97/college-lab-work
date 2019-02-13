% This program quantizes a sound signal using mu-law quantization
% Yao Wang, Polytechnic University, 2/11/2004

function []=quant_mulaw(inname,outname, N,mu);

if nargin < 3
   disp('Usage: quant_mulaw(inname,outname, N, mu)');
   disp('inname: input .wav file name');
   disp('outname: output .wav file name');
   disp('N: quantization level, N should be a positive integer');
   disp('mu:  1<=mu <=255')
   return;
end;

%read in input  signal
[x,fs,R]=wavread(inname);
xmin=min(x); xmax=max(x);

magmax=max(abs(x));
xmin=-magmax, xmax=magmax;
Q=(xmax-xmin)/N;
disp('R,xmin,xmax,N,Q,mu');
disp([R,xmin,xmax,N,Q,mu]);

%apply mu-law transform to original sample
y=xmax*log10(1+abs(x)*(mu/xmax))/log10(1+mu);

%apply uniform quantization on the absolute value each sample
yq=floor((y-xmin)/Q)*Q+Q/2+xmin;

%apply inverse mu-law transform to the quantized sequence
%also use the original sign
xq=(xmax/mu)*(10.^((log10(1+mu)/xmax)*yq)-1).*sign(x);


%compare sound quality
wavwrite(xq,fs,R,outname);
sound(x,fs);
fprintf('\n Hit a key to continue');
pause;
sound(xq,fs);

%plot waveforms over the entire period
t=1:length(x);
figure(1); plot(t,x,'r:');
hold on; plot(t,xq,'b-');
axis tight; grid on;
legend('original','quantized')
%plot waveform over a selected period
t=2000:2200;
figure(2); plot(t,x(2000:2200),'r:');
hold on; plot(t,xq(2000:2200),'b-');
axis tight; grid on;
figure(3); hist(x);
figure(4); hist(xq);
% Calculate the MSE
D=x-xq;
MSE=mean(D.^2);
fprintf('\n Error between original and quantized = %g\n\n',MSE )

%quant_mulaw('mozart.wav','test_mulaw_8.wav',128,8)
%quant_mulaw('mozart.wav','test_mulaw_255.wav',128,255)
