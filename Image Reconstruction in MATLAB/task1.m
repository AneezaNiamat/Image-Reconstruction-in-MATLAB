clc; clear all; close all;
I=zeros(100,100);
I(41:60,31:70)=1;
figure(1)
subplot(2,5,1)
imagesc(I); %scale data and display image object
xlabel('theta degrees')
ylabel('x')
title('shape')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
theta = 0:180;
R=radon(I) %radon transform
[R,xp] = radon(I,theta);
colormap(gray)
subplot(2,5,2)
imagesc(theta,xp,R);
xlabel('0-180 degrees')
ylabel('x')
title('Projections')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
theta1=0
i1=iradon(R,theta1,'linear','none');
subplot(2,5,3)
imagesc(i1);
xlabel('0 degrees')
ylabel('x')
title('Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
theta2=45
i2=iradon(R,theta2,'linear','none');
subplot(2,5,4)
imagesc(i2);
xlabel('45 degrees')
ylabel('x')
title('Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
theta3=90
i3=iradon(R,theta3,'linear','none');
subplot(2,5,5)
imagesc(i3);
xlabel('90 degrees')
ylabel('x')
title('Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
theta4=135
i4=iradon(R,theta4,'linear','none');
subplot(2,5,6)
imagesc(i4);
xlabel('135 degrees')
ylabel('x')
title('Back projection')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
theta5=180
i5=iradon(R,theta5,'linear','none');
subplot(2,5,7)
imagesc(i5);
xlabel('180 degrees')
ylabel('x')
title('Back projection')
