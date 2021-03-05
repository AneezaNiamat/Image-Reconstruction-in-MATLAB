clc; clear all; close all;
I=zeros(100,100);
I(41:61,31:71)=1;

figure(1)
subplot(5,6,1)
imagesc(I); %scale data and display image object
xlabel('theta degrees')
ylabel('x')
title('shape')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
theta = 0:180;
0:5:180;
R=radon(I) %radon transform
[R,xp] = radon(I,theta);
colormap(gray)
subplot(5,6,2)
imagesc(theta,xp,R);
xlabel('0-179 degrees')
ylabel('x')
title('Projections')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i1=iradon(R,theta,'linear','none');
subplot(5,6,3)
imagesc(i1);
xlabel('0-179 degrees')
ylabel('x linear')
title('Un-filtered Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i2=iradon(R,theta,'linear','ram-lak');
subplot(5,6,4)
imagesc(i2);
xlabel('0-179 degrees')
ylabel('x linear')
title('Ram-lak filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i3=iradon(R,theta,'linear','cosine');
subplot(5,6,5)
imagesc(i3);
xlabel('0-179 degrees')
ylabel('x linear')
title('Cosine filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i4=iradon(R,theta,'linear','hamming');
subplot(5,6,6)
imagesc(i4);
xlabel('0-179 degrees')
ylabel('x linear')
title('Hamming filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i5=iradon(R,theta,'linear','hann');
subplot(5,6,7)
imagesc(i5);
xlabel('0-179 degrees')
ylabel('x linear')
title('Hann filter Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i12=iradon(R,theta,'linear','shepp-logan');
subplot(5,6,8)
imagesc(i12);
xlabel('0-179 degrees')
ylabel('x linear')
title('Shepp-logan filter back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i6=iradon(R,theta,'nearest','none');
subplot(5,6,9)
imagesc(i2);
xlabel('0-179 degrees')
ylabel('x nearest')
title('Unfiltered')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i7=iradon(R,theta,'nearest','ram-lak');
subplot(5,6,10)
imagesc(i7);
xlabel('0-179 degrees')
ylabel('x nearest')
title('Ram-lak filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i8=iradon(R,theta,'nearest','cosine');
subplot(5,6,11)
imagesc(i8);
xlabel('0-179 degrees')
ylabel('x nearest')
title('Cosine filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i9=iradon(R,theta,'nearest','hamming');
subplot(5,6,12)
imagesc(i9);
xlabel('0-179 degrees')
ylabel('x nearest')
title('Hamming filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i10=iradon(R,theta,'nearest','hann');
subplot(5,6,13)
imagesc(i10);
xlabel('0-179 degrees')
ylabel('x nearest')
title('Hann filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i11=iradon(R,theta,'nearest','shepp-logan');
subplot(5,6,14)
imagesc(i11);
xlabel('0-179 degrees')
ylabel('x nearest')
title('Shepp-logan filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i13=iradon(R,theta,'spline','none');
subplot(5,6,15)
imagesc(i13); %legend('spline interpolation')
xlabel('0-179 degrees')
ylabel('x spline')
title('Un-filtered Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i14=iradon(R,theta,'spline','ram-lak');
subplot(5,6,16)
imagesc(i14);
xlabel('0-179 degrees')
ylabel('x spline')
title('Ram-lak filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i15=iradon(R,theta,'spline','cosine');
subplot(5,6,17)
imagesc(i15);
xlabel('0-179 degrees')
ylabel('x spline')
title('Cosine filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i16=iradon(R,theta,'spline','hamming');
subplot(5,6,18)
imagesc(i16);
xlabel('0-179 degrees')
ylabel('x spline')
title('Hamming filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i17=iradon(R,theta,'spline','hann');
subplot(5,6,19)
imagesc(i17);
xlabel('0-179 degrees')
ylabel('x spline')
title('Hann filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i18=iradon(R,theta,'spline','shepp-logan');
subplot(5,6,20)
imagesc(i18);
xlabel('0-179 degrees')
ylabel('x spline')
title('Shepp-logan filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i19=iradon(R,theta,'pchip','none');
subplot(5,6,21)
imagesc(i19);
xlabel('0-179 degrees')
ylabel('x pchip')
title('Un-filtered Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i20=iradon(R,theta,'pchip','ram-lak');
subplot(5,6,22)
imagesc(i20);
xlabel('0-179 degrees')
ylabel('x pchip')
title('Ram-lak filter Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i21=iradon(R,theta,'pchip','cosine');
subplot(5,6,23)
imagesc(i21);
xlabel('0-179 degrees')
ylabel('x pchip')
title('Cosine filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i22=iradon(R,theta,'pchip','hamming');
subplot(5,6,24)
imagesc(i22);
xlabel('0-179 degrees')
ylabel('x pchip')
title('Hamming filter')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i23=iradon(R,theta,'pchip','hann');
subplot(5,6,25)
imagesc(i23);
xlabel('0-179 degrees')
ylabel('x pchip')
title('Hann filter Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i24=iradon(R,theta,'pchip','shepp-logan');
subplot(5,6,26)
imagesc(i24);
xlabel('0-179 degrees')
ylabel('x pchip')
title('Shepp-logan filter')
colormap(jet)

figure(3)
img=cat(4,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24);
montage(img,'Size',[1 24]);
%imshowpair(i1,i2,i3,i4,'montage')

%montage (i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12)