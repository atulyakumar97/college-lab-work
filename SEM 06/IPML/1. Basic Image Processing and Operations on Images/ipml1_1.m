clc
clear all
close all

img=imread('djsanghvilogo.jpg');
imshow(img);

resize=imresize(img,[256,256]);
figure(1)
subplot(3,3,1)
imshow(resize)
title('resized')

grayimg= rgb2gray(img);
subplot(3,3,2)
imshow(grayimg)
title('gray level image')

binary= im2bw(img,0.5);
subplot(3,3,3)
imshow(binary)
title('binary image')

red=img(:,:,1);
subplot(3,3,4)
imshow(red)
title('red layer')

blue=img(:,:,2);
subplot(3,3,5)
imshow(blue)
title('blue layer')

green=img(:,:,3);
subplot(3,3,6)
imshow(green)
title('green layer')

rgbimage=cat(3,red,blue,green);
subplot(3,3,7)
imshow(rgbimage)
title('RGB Image')

rotate= imrotate(img,-45,'bilinear','crop');
%rotate= imrotate(img,-45,'loose');
subplot(3,3,8)
imshow(rotate)
title('rotated image')

tform = maketform('affine',[1 0.7 0; 0.7 1 0; 1 1 1]);
shear = imtransform(img,tform);
subplot(3,3,9)
imshow(shear)
title('sheared image')

