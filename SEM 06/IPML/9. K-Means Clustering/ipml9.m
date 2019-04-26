clc
close all
clear all
data=xlsread('meas.xlsx');
data=data(:,3:4);
[ind c]=kmeans(data,3);
figure
for i=1:length(ind)
   if ind(i)==1 
    plot(data(i,1),data(i,2),'k^')
   end
   if ind(i)==2 
    plot(data(i,1),data(i,2),'k*')
   end
   if ind(i)==3 
    plot(data(i,1),data(i,2),'k+')
   end
   hold on
end
plot(c(:,1),c(:,2),'ro')
