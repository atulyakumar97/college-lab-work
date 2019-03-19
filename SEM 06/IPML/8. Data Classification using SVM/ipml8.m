clc
clear all
close all

iris=xlsread('irisdataset.xlsx');
features=xlsread('meas.xlsx');
species=xlsread('species_num.xlsx');

rand_num=randperm(100);

x=features(rand_num(1:100),:);
y=species(rand_num(1:100),:);

x_train=x(1:80,:);
x_test=x(81:end,:);

y_train=y(1:80,:);
y_test=y(81:end,:);

SvmModel=fitcsvm(x_train,y_train);

[labels]=predict(SvmModel,x_test);

idx=(y_test()==1); % idx becomes 1 if predicted value is 1 otherwise 0
idx1=(y_test()==2);

p=length(y_test(idx));
n=length(y_test(idx1));

N=p+n;

tp=sum(y_test(idx)==labels(idx));
tn=sum(y_test(idx1)==labels(idx1));

accuracy=(tp+tn)*100/N
[cm,order]=confusionmat(y_test,labels)
