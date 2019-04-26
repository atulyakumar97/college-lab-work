clc
clear all
close all

%Image segmentation using code

rx = [1 0; 0 -1]; %robert's mask
ry = [0 1; -1 0];
px = [-1 -1 -1; 0 0 0; 1 1 1]; %prewitt's mask
py = [-1 0 1; -1 0 1; -1 0 1];
sx = [-1 -2 -1; 0 0 0; 1 2 1]; %sobel's mask
sy = [-1 0 1; -2 0 2; -1 0 1];
lx = [0 1 0; 0 -2 0; 0 1 0]; %laplacian mask
ly = [0 0 0; 1 -2 1; 0 0 0]

img=imread('peppers.png');

figure(1)
subplot(3,2,1)
imshow(img)
title('Color Image')

img=rgb2gray(img);
subplot(3,2,2)
imshow(img)
title('Grayscale Image')

img=imresize(img, [256 256]);
img=im2double(img);
subplot(3,2,3)
imshow(img)
title('Resized Image')

for i=2:256
    for j=2:256
    x=img(i-1: i, j-1:j).*rx;  
    y=img(i-1: i, j-1:j).*ry;
    r_final(i,j)=sum(sum(x))+sum(sum(y));
      
   end
end

subplot(3,2,4)
imshow(r_final)
title('Robert Mask')


for i=2:255
    for j=2:255
    x=img(i-1: i+1, j-1:j+1).*sx;  
    y=img(i-1: i+1, j-1:j+1).*sy;
    s_final(i,j)=sum(sum(x))+sum(sum(y));
    
    x=img(i-1: i+1, j-1:j+1).*px;  
    y=img(i-1: i+1, j-1:j+1).*py;
    p_final(i,j)=sum(sum(x))+sum(sum(y));
    
   end
end

subplot(3,2,5)
imshow(s_final)
title('Sobels Mask')

subplot(3,2,6)
imshow(p_final)
title('Prewitts Mask')

%Image segmentation using Inbuilt Functions
figure(2)
img = imread('peppers.png');
subplot(3,2,1)
imshow(img)
title('Original Image')
img=imresize(im2double(rgb2gray(img)), [256 256]);


subplot(3,2,2)
s_final = edge(img,'sobel');
imshow(s_final);
title('Sobels Mask')

subplot(3,2,3)
r_final = edge(img,'prewitt');
imshow(r_final);
title('Prewitt Mask')

subplot(3,2,4)
c_final = edge(img,'canny',0.2);
imshow(c_final);
title('Canny Mask')

subplot(3,2,5)
r_final = edge(img,'roberts');
imshow(r_final);
title('Roberts Mask')

subplot(3,2,6)
l_final = edge(img,'log');
imshow(l_final);
title('Log Mask')

