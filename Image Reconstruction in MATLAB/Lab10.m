figure(1)
I=zeros(100,100);
I(41:60,31:70)=1;
imagesc(I)
figure(2)
theta1=0
R1=radon(I)
[R,xp]=radon(I,theta1);
imagesc(R1)
plot(I)
figure(3)
theta2=45
R2=radon(I)
[R2,xp]=radon(I,theta2);
imagesc(R2)
plot(R2)
figure(4)
theta3=60
R3=radon(I)
[R3,xp]=radon(I,theta3);
imagesc(R3)
plot(R3)
figure(5)
theta4=90
R4=radon(I)
[R4,xp]=radon(I,theta4);
imagesc(R4)
plot(R4)
figure(6)
theta5=135
R5=radon(I)
[R5,xp]=radon(I,theta5);
imagesc(R5)
plot(R5)
figure(10)
theta9=135
R9=radon(I)
[R5,xp]=radon(I,theta9);
imagesc(R9)
plot(R9)

figure(7)
theta6=180
R6=radon(I)
[R6,xp]=radon(I,theta6);
imagesc(R6)
plot(R6)
figure(7)
theta=0:180;
R7=radon(I)
[R7,xp]=radon(I,theta);
imagesc(R7)
plot(R7)
figure(8)
i1=iradon(R7,theta,'linear','none');
subplot(2,4,1)
imagesc(i1);
i2=iradon(R7,theta,'spline','Ram-Lak');
subplot(2,4,2)
imagesc(i2);
i3=iradon(R7,theta,'pchip','Hann');
subplot(2,4,3)
imagesc(i3);
i4=iradon(R7,theta,'nearest','shepp-logan');
subplot(2,4,4)
imagesc(i4);
i5=iradon(R7,theta,'pchip','Cosine');
subplot(2,4,5)
imagesc(i5);




