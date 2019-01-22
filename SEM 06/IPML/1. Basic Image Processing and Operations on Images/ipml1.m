clc
clear all
close all

img=imread('djsanghvilogo.jpg');
figure(1)
imshow(img);

resize=imresize(img,[256,256]);
figure(2)
imshow(resize)

grayimg= rgb2gray(img);
figure(3)
imshow(grayimg)

binary= im2bw(img,0.5);
figure(4)
imshow(binary)

red=img(:,:,1);
figure(5)
imshow(red)

blue=img(:,:,2);
figure(6)
imshow(blue)

green=img(:,:,3);
figure(7)
imshow(green)

rgbimage=cat(3,red,blue,green);
figure(8)
imshow(rgbimage)

rotate= imrotate(img,-45,'bilinear','crop');
%rotate= imrotate(img,-45,'loose');
figure(9)
imshow(rotate)

tform = maketform('affine',[1 0.7 0; 0.7 1 0; 1 1 1]);
shear = imtransform(img,tform);
figure(10)
imshow(shear)

