clc
close all
clear all

a=imread('cameraman.tif');
img=imresize(a,[256,256]);
figure(1)
subplot(2,2,1)
imshow(img);
title('Original Image');

double_img=im2double(img);
fft_img=fft2(double_img);
subplot(2,2,2)
imshow(fft_img);
title('FFT of Original Image');

for i=1:256
    for j=1:256
        translated_img(i,j)=img(i,j)*((-1)^(i+j));
    end
end
subplot(2,2,3)
imshow(translated_img);
title('Translated Image');

fft_translated=fft2(translated_img);
subplot(2,2,4)
imshow(fft_translated);
title('FFT of Translated Image');

%low pass filtering
D0=50;
n=2;
for u=1:256
    for v=1:256
        D(u,v)=sqrt((u-128)^2 + (v-128)^2);
        if D(u,v)<=D0
            HL1(u,v)=1;
            HL2(u,v)=1/(1+((D(u,v))/(D0))^(2*n));
            HL3(u,v)=exp(-(D(u,v)^2)/(2*D0*D0));
        else
            HL1(u,v)=0;
            HL2(u,v)=0;
            HL3(u,v)=0;
        end
    end
end


%Ideal LPF
figure(2)
subplot(3,2,1)
imshow(HL1);
title('Transfer Function - Ideal LPF')

lpf_img=fft_translated.*HL1; 
ifft_lpf_img=ifft2(lpf_img);

for i=1:256
    for j=1:256
        lpf_filtered(i,j)=ifft_lpf_img(i,j)*((-1)^(i+j));
    end
end

subplot(3,2,2)
imshow(uint8(lpf_filtered));
title('Ideal Low pass filtered image');

%Butterworth LPF
subplot(3,2,3)
imshow(HL2);
title('Transfer Function - Butterworth LPF');

bwf_img=fft_translated.*HL2;
ifft_bwf_img=ifft2(bwf_img);
for i=1:256
    for j=1:256
        bwf_filtered(i,j)=ifft_bwf_img(i,j)*((-1)^(i+j));
    end
end
subplot(3,2,4)
imshow(uint8(bwf_filtered));
title('Butterworth LPF');

%Guassian Filter
subplot(3,2,5)
imshow(HL3);
title('Transfer Function - Guassian LPF');

gf_img=fft_translated.*HL3;
ifft_gf_img=ifft2(gf_img);
for i=1:256
    for j=1:256
        gf_filtered(i,j)=ifft_gf_img(i,j)*((-1)^(i+j));
    end
end
subplot(3,2,6)
imshow(uint8(gf_filtered));
title('Gaussian LPF');

%High pass filtering
D0_h=20;
for u=1:256
    for v=1:256
        D(u,v)=sqrt((u-128)^2 + (v-128)^2);
        if D(u,v)>D0_h
            HH1(u,v)=1;
            HH2(u,v)=1/(1+((D0_h)/(D(u,v)))^(2*n));
            HH3(u,v)=1-exp(-((D(u,v)^2)/(2*D0_h*D0_h)));
        else
            HH1(u,v)=0;
            HH2(u,v)=0;
            HH3(u,v)=0;
        end
    end
end

%Ideal HPF
figure(3)
subplot(3,2,1)
imshow(HH1);
title('Transfer Function - Ideal HPF')

hpf_img=fft_translated.*HH1; 
ifft_hpf_img=ifft2(hpf_img);

for i=1:256
    for j=1:256
        hpf_filtered(i,j)=ifft_hpf_img(i,j)*((-1)^(i+j));
    end
end

subplot(3,2,2)
imshow(uint8(hpf_filtered));
title('Ideal High pass filtered image')

%Butterworth Hpf
subplot(3,2,3)
imshow(HH2);
title('Transfer Function - Butterworth HPF')

bwfh_img=fft_translated.*HH2; 
ifft_bwfh_img=ifft2(bwfh_img);

for i=1:256
    for j=1:256
        bwfh_filtered(i,j)=ifft_bwfh_img(i,j)*((-1)^(i+j));
    end
end

subplot(3,2,4)
imshow(uint8(bwfh_filtered));
title('Butterworth HPF image')

%Gaussian Hpf
subplot(3,2,5)
imshow(HH3);
title('Transfer Function - Gaussian HPF')

gfh_img=fft_translated.*HH3; 
ifft_gfh_img=ifft2(gfh_img);

for i=1:256
    for j=1:256
        gfh_filtered(i,j)=ifft_gfh_img(i,j)*((-1)^(i+j));
    end
end

subplot(3,2,6)
imshow(uint8(gfh_filtered));
title('Gaussian HPF image')