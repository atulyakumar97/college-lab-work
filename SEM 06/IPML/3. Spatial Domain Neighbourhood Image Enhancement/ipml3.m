close all
clear all
clc

img=imread('cameraman.tif');
figure(1)
subplot(3,3,1)
imshow(img);
title('Original image');

%Low Pass Filter
lp_mask=[1 1 1; 1 1 1; 1 1 1]./9;
img=double(img);
for i=2:255
    for j=2:255
    lp_image(i,j)=sum(sum(lp_mask.*img(i-1:i+1, j-1:j+1)));
    end
end

subplot(3,3,2)
imshow(uint8(lp_image))
title('Low pass filter image');
    
%High Pass Filter
hp_mask=[-1 -1 -1; -1 8 -1; -1 -1 -1];
for i=2:255
    for j=2:255
    hp_image(i,j)=sum(sum(hp_mask.*img(i-1:i+1, j-1:j+1)));
    end
end

subplot(3,3,3)
imshow(uint8(hp_image))
title('High pass filter image');

%High Boost
hb_mask=[-1 -1 -1; -1 8.9 -1; -1 -1 -1];
for i=2:255
    for j=2:255
    hb_image(i,j)=sum(sum(hb_mask.*img(i-1:i+1, j-1:j+1)));
    end
end

subplot(3,3,4)
imshow(uint8(hb_image))
title('High Boost filter image');

%Median Filter
noisy_img=imnoise(uint8(img),'salt & pepper', 0.1);
med=medfilt2(noisy_img);

subplot(3,3,5)
imshow(noisy_img)
title('Salt and Pepper noise');

subplot(3,3,6)
imshow(uint8(med))
title('Median filter image');

%Weighted Average
wa_mask=[1 2 1; 2 4 2; 1 2 1]./16;
for i=2:255
    for j=2:255
    wa_image(i,j)=sum(sum(wa_mask.*img(i-1:i+1, j-1:j+1)));
    end
end

subplot(3,3,7)
imshow(uint8(wa_image))
title('Weighted Average image');

%Low Pass Filter 5x5
lp_mask5=ones(5,5)./25;

for i=3:254
    for j=3:254
    lp_image5(i,j)=sum(sum(lp_mask5.*img(i-2:i+2, j-2:j+2)));
    end
end

subplot(3,3,8)
imshow(uint8(lp_image5))
title('Low pass filter image for 5x5 mask');
    
%High Pass Filter 5x5
hp_mask5=[-1 -1 -1 -1 -1; -1 -1 -1 -1 -1; -1 -1 24 -1 -1; -1 -1 -1 -1 -1;-1 -1 -1 -1 -1];
for i=3:254
    for j=3:254
    hp_image5(i,j)=sum(sum(hp_mask5.*img(i-2:i+2, j-2:j+2)));
    end
end

subplot(3,3,9)
imshow(uint8(hp_image5))
title('High pass filter image for 5x5 mask');


