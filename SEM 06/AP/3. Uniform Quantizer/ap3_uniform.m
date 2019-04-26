clc
clear all 
close all

x = [1.2 -0.2 -0.5 0.4 0.89 1.3];
disp('input sequence')
disp(x)
n_levels = 4;
max=1.5;
min=-1.5;

steps=(max-min)/n_levels;

for i=0:n_levels
    boundary(i+1)=min+i*steps;
end

disp('boundary values')
disp(boundary)

for i=1:n_levels
    quantisation_levels(i)=(boundary(i)+boundary(i+1))/2;
end

disp('Quantised Values')
disp(quantisation_levels)

for i=1:length(x)
    for j=1:length(quantisation_levels)
    if x(i)>boundary(j) && x(i)<boundary(j+1)
        y(i)=quantisation_levels(j);
        bitstream(i)=j-1;
    end
    end    
end

disp('Quantised value sequence')
disp(y)
disp('Bitstream sequence')
dec2bin(bitstream)




