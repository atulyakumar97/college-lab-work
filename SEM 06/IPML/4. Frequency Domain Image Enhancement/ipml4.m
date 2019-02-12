clc
clear all
close all

img=imread('cameraman.tif');
img=imresize(img,[256,256]);
figure(1)
subplot(2,2,1)
imshow(img);
title('Original Image')

double_img=im2double(img);
fft_image=fft2(double_img);
subplot(2,2,2)
imshow((fft_image));
title('FFT of Original Image')

for i=1:256
    for j=1:256
        translated(i,j)=img(i,j)*((-1)^(i+j));
    end
end
subplot(2,2,3)
imshow(translated);
title('Translated Image')

subplot(2,2,4)
fft_translated=fft2(translated);
imshow(fft_translated);
title('FFT of Translated Image')


%Low pass Filtering

D0 = 20;
D0_high = 20
n=2;

for u=1:256
    for v=1:256
    D(u,v)=sqrt((u-128)^2 + (v-128)^2 );
    if D(u,v)<=D0 
        H1(u,v)=1;                          %Ideal Low Pass
        H2(u,v)=1/(1+(D(u,v)/D0)^(2*n));     %Butterworth Filter
        H3(u,v)=exp(-((D(u,v))^2)/(2*D0*D0)); %Gaussian Filter 
    else
        H1(u,v)=0;
        H2(u,v)=0;
        H3(u,v)=0;
    end
    
    end
end

%high pass Filtering

for u=1:256
    for v=1:256
    D(u,v)=sqrt((u-128)^2 + (v-128)^2 );
    if D(u,v)>D0_high 
        H1_high(u,v)=1;                          %Ideal High Pass
        H2_high(u,v)=1/(1+(D(u,v)/D0_high)^(2*n));     %Butterworth Filter
        H3_high(u,v)=exp(-((D(u,v))^2)/(2*D0_high*D0_high)); %Gaussian Filter 
    else
        H1_high(u,v)=0;
        H2_high(u,v)=0;
        H3_high(u,v)=0;
    end
    
    end
end

%Ideal LPF
figure(2)
subplot(2,2,1)
imshow(H1);
title('Transfer Function - Ideal LPF')

lpf_img=fft_translated.*H1; 
ifft_lpf_img=ifft2(lpf_img);

for i=1:256
    for j=1:256
        lpf_filtered(i,j)=ifft_lpf_img(i,j)*((-1)^(i+j));
    end
end

subplot(2,2,2)
imshow(uint8(lpf_filtered));
title('Ideal Low pass filtered image')

%Ideal HPF
subplot(2,2,3)
imshow(H1_high);
title('Transfer Function - Ideal HPF')

hpf_img=fft_translated.*H1_high; 
ifft_hpf_img=ifft2(hpf_img);

for i=1:256
    for j=1:256
        hpf_filtered(i,j)=ifft_hpf_img(i,j)*((-1)^(i+j));
    end
end

subplot(2,2,4)
imshow(uint8(hpf_filtered));
title('Ideal High pass filtered image')


%%Butterworth Filtering
%LPF
figure(3)
subplot(2,2,1)
imshow(H2);
title('Transfer Function - Butterworth Low')

butt_img=fft_translated.*H2; 
ifft_butt_img=ifft2(butt_img);

for i=1:256
    for j=1:256
        butt_filtered(i,j)=ifft_butt_img(i,j)*((-1)^(i+j));
    end
end

subplot(2,2,2)
imshow(uint8(butt_filtered));
title('Butterworth low filtered image')

%HPF
figure(3)
subplot(2,2,3)
imshow(H2_high);
title('Transfer Function - Butterworth High')

butt_high_img=fft_translated.*H2_high; 
ifft_butt_high_img=ifft2(butt_high_img);

for i=1:256
    for j=1:256
        butt_high_filtered(i,j)=ifft_butt_high_img(i,j)*((-1)^(i+j));
    end
end

subplot(2,2,4)
imshow(uint8(butt_high_filtered));
title('Butterworth high filtered image')

%%Gaussian Filtering
%LPF
figure(4)
subplot(2,2,1)
imshow(H3);
title('Transfer Function - Gaussian Low')

gaus_img=fft_translated.*H3; 
ifft_gaus_img=ifft2(gaus_img);

for i=1:256
    for j=1:256
        gaus_filtered(i,j)=ifft_gaus_img(i,j)*((-1)^(i+j));
    end
end

subplot(2,2,2)
imshow(uint8(gaus_filtered));
title('Gaussian low filtered image')

%HPF
subplot(2,2,3)
imshow(H3_high);
title('Transfer Function - Gaussian High')

gaus_high_img=fft_translated.*H3_high; 
ifft_gaus_high_img=ifft2(gaus_high_img);

for i=1:256
    for j=1:256
        gaus_high_filtered(i,j)=ifft_gaus_high_img(i,j)*((-1)^(i+j));
    end
end

subplot(2,2,4)
imshow(uint8(gaus_high_filtered));
title('Gaussian high filtered image')
