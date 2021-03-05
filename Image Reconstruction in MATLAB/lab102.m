clc; clear all; close all;
figure(1)
A= zeros(40,40);
A(11:30,11:30)=1;
imagesc(A);
figure(2);
theta =0;
t=0:0.1:0;
S1=radon(A)
[S1,xp] = radon(A,theta);
imagesc(S1)
plot(S1)
xlabel('0 degrees')
ylabel('x')
title('Projection of square')
figure(3)
theta2=90
t=0:1:90;
S2=radon(A)
[S2,xp] = radon(A,theta2);
imagesc(S2);
plot(S2)
xlabel('90 degrees')
ylabel('x')
title('Projection of Square')
figure(4)
theta3=45
t=0:1:45;
S3=radon(A)
[S3,xp] = radon(A,theta3);
imagesc(S3);
plot(S3)
xlabel('45 degrees')
ylabel('x')
title('Projection of Square')
figure(5)
I=zeros(100,100);
I(41:60,31:70)=1;
imagesc(I)

figure(6)
theta4=0
t=0:0.1:0;
R1=radon(I)
[R1,xp]=radon(I,theta4);
imagesc(R1)
plot(R1)
xlabel('0 degrees')
ylabel('x')
title('Projection of Rectangle')
figure(7)
theta5=45
R2=radon(I);
[R2,xp]=radon(I,theta5);
imagesc(R2)
plot(R2)
xlabel('45 degrees')
ylabel('x')
title('Projection of Rectangle')
figure(8)
theta6=90
R4=radon(I)
[R4,xp]=radon(I,theta6);
imagesc(R4)
plot(R4)
xlabel('90 degrees')
ylabel('x')
title('Projection of Rectangle')
figure(10)
imshowpair(A,I,'montage')
figure(12)
imshowpair(S1,R1,'montage')
normS1=S1/max(S1);
normR1=R1/max(R1);
figure(13)
plot( normS1,'r' );
hold on
plot( normR1,'g' );
legend('Square projection','rectangle projection');
xlabel('0 degree')
ylabel('x')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
normS2=S2/max(S2);
normR4=R4/max(R4);
figure(14)
plot( normS2,'r' );
hold on
plot( normR4,'g' );
legend('Square projection','rectangle projection');
xlabel('90 degree')
ylabel('x')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
normS3=S3/max(S3);
normR2=R2/max(R2);
figure(15)
plot( normS3,'r' );
hold on
plot( normR2,'g' );
legend('Square projection','rectangle projection');
xlabel('45 degree')
ylabel('x')




