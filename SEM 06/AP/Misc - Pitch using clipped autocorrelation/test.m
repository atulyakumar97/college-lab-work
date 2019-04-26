%New

clc;
clear all;
close all;
Fs = 8000;
 x=audioread('OSR_us_000_0010_8k.wav');

x=x-mean(x);
%  Then find the minimum and maximum samples and center clip to 
%  75% of those values (`cclip') . . .
l = length(x);

cmax=0.75*max(x);
cmin=0.75*min(x);

for i=1:1
   if x(i)>cmax
       x(i)=cmax
   if x(i)<cmin
           x(i)=cmin
       end
   end
end
   [c,lags] = xcorr(x,l,'coeff');

% Find the maximum peak following Rx[0] (`peak') . . .
peak = 0;
peakindex = 0;
for i = (l+2):(2*l-1);
    if(c(i) > c(i-1) && c(i) > c(i+1)) %% this is a peak
        if(c(i)>peak)
            peak = c(i);
            peakindex = i;
        end
    end
end %end for loop
if(peak < 0.25) %then unvoiced
    pitch = 0;
else %voiced
   pitch = Fs/(peakindex-l);
end
