clc
clear all
close all
 
img=imread('rice.png');
figure(1)
imshow(img)
img=double(img(:))';
 
 
p=img(1,1:80);
 
net=newsom(minmax(p),[1 2]);
net1=train(net,p);
 
y=sim(net1,img);
 
final=reshape(y(1,:)*256,[256 256]);
figure(2)
imshow(final)
