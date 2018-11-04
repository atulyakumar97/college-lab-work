clc
pi=3.14;
f=[240 254 302 320 358.5 381 470];

N=1:1000;
fs=4000;
temp=[]
y=[]

for i=1:length(f)
    y=sin(2*pi*(f(i)/fs)*N)
    temp=[temp y]
end

for i=length(f):-1:1
    y=sin(2*pi*(f(i)/fs)*N)
    temp=[temp y]
end
    sound(temp,fs)

