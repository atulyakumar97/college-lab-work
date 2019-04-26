clc
clear all;
close all;
NSR = 0;
a=imread('peppers.png');
a=imresize(a, [256 256]);
a=im2double(a);
subplot(2,2,1)
imshow(a)
title('Original Image')
PSF=fspecial('motion',21,11);
m_img=imfilter(a,PSF,'conv','circular');
subplot(2,2,2)
imshow(m_img)
title('Convolved Image')
d_img = deconvwnr(m_img, PSF);
subplot(2,2,3)
imshow(d_img)
title('Deconvolved Image with Wiener Filter')
 
%Part II%
sp_img = imnoise(m_img,'salt & pepper');
figure()
subplot(2,3,1)
imshow(sp_img)
title('Image added with Salt & Pepper Noise')
d1 = deconvwnr(sp_img, PSF);
subplot(2,3,2)
imshow(d1)
title('Reconstructed Image with Wiener Filter')
 
g_img = imnoise(m_img,'gaussian',0, 0.0001);
subplot(2,3,3)
imshow(g_img)
title('Image added with Gaussian Noise and NSR 0.0001')
NSR = (0.0001/var(a(:)));
d2 = deconvwnr(g_img, PSF, NSR);
subplot(2,3,4)
imshow(d2)
title('Reconstructed Image with Wiener Filter')
 
median_fil=medfilt3(sp_img);
subplot(2,3,5)
imshow(median_fil)
title('Median Filtering on Salt & Pepper Image')
