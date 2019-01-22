clc
close all
clear all 
img1=imread('c1.jpg');
img2=imread('c2.jpg');
img3=imread('c3.jpg');

sub=imsubtract(img2,img1);
add=imadd(img3,sub) ;

figure(1)
sub1=img2-img1;
add1=img3+sub1;

subplot(3,3,1)
imshow(img1)
title('Image 1')

subplot(3,3,2)
imshow(img2)
title('Image 2')

subplot(3,3,3)
imshow(img3)
title('Image 3')

subplot(3,3,5)
imshow(sub)
title('Subtraction using imsub')

subplot(3,3,6)
imshow(add)
title('Addition using imadd')

subplot(3,3,8)
imshow(sub1)
title('Subtraction using -')

subplot(3,3,9)
imshow(add1)
title('Addition using +')

subplot(3,3,4)
imshow(img1+50)
title('Image 1 + 50')

subplot(3,3,7)
imshow(img1-80)
title('Image 1 - 80')

p=ones(3,3);
q=zeros(3,3);

A=[p q p q ; p q p q; p q p q; p q p q];
B=A';

AND=A&B;
OR=A|B;
XOR=xor(A,B);
NOT=~XOR;

figure(2)
subplot(3,2,1)
imshow(A)
title('Image A')

subplot(3,2,2)
imshow(B)
title('Image B')

subplot(3,2,3)
imshow(AND)
title('AND Operation')

subplot(3,2,4)
imshow(OR)
title('OR Operation')

subplot(3,2,5)
imshow(XOR)
title('XOR Operation')

subplot(3,2,6)
imshow(NOT)
title('NOT on XOR Operation')