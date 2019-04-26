% This program quantizes a sound signal using uniform quantization
% Yao Wang, Polytechnic University, 2/11/2004

function []=quant_uniform(inname,outname, N);
if nargin < 3
   disp('Usage: quant_uniform(inname,outname, N)');
   disp('inname: input .wav file name');
   disp('outname: output .wav file name');
   disp('N: quantization level, N should be a positive integer');
   return;
end;

%read in input  signal
[x,fs,R]=wavread(inname);

magmax=max(abs(x));
xmin=-magmax, xmax=magmax;
Q=(xmax-xmin)/N;
disp('R,xmin,xmax,N,Q');
disp([R,xmin,xmax,N,Q]);

%apply uniform quantization on each sample

xq=floor((x-xmin)/Q)*Q+Q/2+xmin;

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

%quant_uniform('mozart.wav','test_uniform.wav',16)
