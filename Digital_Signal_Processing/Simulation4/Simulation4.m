% % Q 1-1
% clc;
% clear;
% 
% Fs=50000;
% y=readmatrix('y.txt');
% N=length(y);
% Y=fftshift(fft(y));
% PSD_y=abs(Y).^2;
% 
% n=1:N;
% w=2*pi*(-N/2:N/2-1)/N;
% 
% figure(1)
% stem(n,y);
% xlabel('n');
% ylabel('y[n]');
% 
% figure(2)
% plot(w,log(1+PSD_y));
% xlabel('w');
% ylabel('log(1+PSD_y)');



% % Q 1-2
% clc;
% clear;
% 
% y=readmatrix('y.txt');
% N_Y=length(y);
% h=readmatrix('h.txt');
% H=fftshift(fft(h,N_Y));
% H_2=abs(H).^2;
% w=2*pi*(-N_Y/2:N_Y/2-1)/N_Y;
% 
% figure(1)
% stem(h);
% xlabel('n');
% ylabel('h[n]');
% 
% figure(2)
% plot(w,H_2);
% xlabel('w');
% ylabel('|H(w)|^2');



% % Q 1-3
% clc;
% clear;
% 
% Fs=50000;
% u=readmatrix('u.txt');
% N=length(u);
% U=fftshift(fft(u));
% PSD_u=abs(U).^2;
% 
% n=1:N;
% w=2*pi*(-N/2:N/2-1)/N;
% 
% figure(1)
% stem(n,u);
% xlabel('n');
% ylabel('u[n]');
% 
% figure(2)
% plot(w,log(1+PSD_u));
% xlabel('w');
% ylabel('log(1+PSD_u)');



% % Q 1-4
% clc;
% clear;
% 
% Fs=50000;
% y=readmatrix('y.txt');
% h=readmatrix('h.txt');
% u=readmatrix('u.txt');
% N_Y=length(y);
% Y=fft(y);
% PSD_y=abs(Y).^2;
% H=fft(h,N_Y);
% H_2=abs(H).^2;
% U=fft(u);
% PSD_u=abs(U).^2;
% 
% H_w=conj(H)./(H_2+PSD_u./PSD_y);
% X=Y.*H_w;
% PSD_x=abs(X).^2;
% x=ifft(X);
% 
% PSD_x=circshift(PSD_x,N_Y/2);
% n=1:N_Y;
% w=2*pi*(-N_Y/2:N_Y/2-1)/N_Y;
% 
% figure(1)
% stem(n,x);
% xlabel('n');
% ylabel('x[n]');
% 
% figure(2)
% plot(w,log(1+PSD_x));
% xlabel('w');
% ylabel('log(1+PSD_x)');



% % Q 1-5
% clc;
% clear;
% 
% Fs=50000;
% y=readmatrix('y.txt');
% h=readmatrix('h.txt');
% u=readmatrix('u.txt');
% N_Y=length(y);
% Y=fft(y);
% PSD_y=abs(Y).^2;
% H=fft(h,N_Y);
% H_2=abs(H).^2;
% U=fft(u);
% PSD_u=abs(U).^2;
% 
% % x1
% H_w1=conj(H)./(H_2+PSD_u./PSD_y);
% X1=Y.*H_w1;
% PSD_x1=abs(X1).^2;
% x1=ifft(X1);
% 
% % x2
% H_w2=conj(H)./(H_2+PSD_u./PSD_x1);
% X2=Y.*H_w2;
% PSD_x2=abs(X2).^2;
% x2=ifft(X2);
% 
% % x3
% H_w3=conj(H)./(H_2+PSD_u./PSD_x2);
% X3=Y.*H_w3;
% PSD_x3=abs(X3).^2;
% x3=ifft(X3);
% 
% PSD_x3=circshift(PSD_x3,N_Y/2);
% n=1:N_Y;
% w=2*pi*(-N_Y/2:N_Y/2-1)/N_Y;
% 
% figure(1)
% stem(n,x3);
% xlabel('n');
% ylabel('x_3[n]');
% 
% figure(2)
% plot(w,log(1+PSD_x3));
% xlabel('w');
% ylabel('log(1+PSD_x_3)');



% % Q 1-6
% clc;
% clear;
% 
% Fs=50000;
% y=readmatrix('y.txt');
% h=readmatrix('h.txt');
% u=readmatrix('u.txt');
% N_Y=length(y);
% Y=fft(y);
% PSD_y=abs(Y).^2;
% H=fft(h,N_Y);
% H_2=abs(H).^2;
% U=fft(u);
% PSD_u=abs(U).^2;
% 
% % x1
% H_w1=conj(H)./(H_2+PSD_u./PSD_y);
% X1=Y.*H_w1;
% PSD_x1=abs(X1).^2;
% x1=ifft(X1);
% % x2
% H_w2=conj(H)./(H_2+PSD_u./PSD_x1);
% X2=Y.*H_w2;
% PSD_x2=abs(X2).^2;
% x2=ifft(X2);
% % x3
% H_w3=conj(H)./(H_2+PSD_u./PSD_x2);
% X3=Y.*H_w3;
% PSD_x3=abs(X3).^2;
% x3=ifft(X3);
% 
% sound(y,Fs);
% pause(2);
% sound(x1,Fs);
% pause(2);
% sound(x3,Fs);
