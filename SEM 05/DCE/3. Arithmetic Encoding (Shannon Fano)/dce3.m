clear all
close all
clc
format long
string='SWISS_MISS';
range=[0 0.5 0.6 0.8 0.9 1];
low=0;
high=1;
for i=1:length(string)
newrange=high-low;
switch string(i)
case 'S'
high=low+newrange*range(2);
low=low+newrange*range(1);
case 'W'
high=low+newrange*range(3);
low=low+newrange*range(2);
case 'I'
high=low+newrange*range(4);
low=low+newrange*range(3);
case 'M'
high=low+newrange*range(5);
low=low+newrange*range(4);
case '_'
high=low+newrange*range(6);
low=low+newrange*range(5);
end
end
disp('Low = ')
disp(low)
disp('High = ')
disp(high)
disp('TAG = ')
disp((low+high)/2)