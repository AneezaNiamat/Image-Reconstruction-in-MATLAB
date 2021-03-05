clc; clear all; close all;
I=zeros(100,100);
I(41:60,31:70)=1;
figure(1)
subplot(1,6,1)
imagesc(I); %scale data and display image object
xlabel('0-179 degrees')
ylabel('x')
title('shape')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
theta = 0:180;
R=radon(I) %radon transform
[R,xp] = radon(I,theta);
colormap(gray)
subplot(1,6,2)
imagesc(theta,xp,R);
xlabel('0-179 degrees')
ylabel('x')
title('Projections')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i1=iradon(R,theta,'linear','none');
subplot(1,6,3)
imagesc(i1);
xlabel('0-179 degrees')
ylabel('x (linear interpolation)')
title('Un-filtered Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i2=iradon(R,theta,'nearest','none');
subplot(1,6,4)
imagesc(i2);
xlabel('0-179 degrees')
ylabel('x (nearest interpolation)')
title('Unfiltered Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i3=iradon(R,theta,'spline','none');
subplot(1,6,5)
imagesc(i3); %legend('spline interpolation')
xlabel('0-179 degrees')
ylabel('x (spline interpolation')
title('Un-filtered Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i4=iradon(R,theta,'pchip','none');
subplot(1,6,6)
imagesc(i4);
xlabel('0-179 degrees')
ylabel('x (pchip interpolation)')
title('Un-filtered Back projection')
figure(2)
img=cat(4,i1,i2,i3,i4);
montage(img,'Size',[1 4]);
