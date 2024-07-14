% % Q 1-1
% clc;                                % Reset
% clear;
% 
% b0=1;                               % Numerator
% a1=[1 -1.4*exp(-i*5*pi/7)];         % Denominator
% a2=[1 -1.4*exp(i*5*pi/7)];
% 
% b=b0;
% a=conv(a1,a2);
% 
% [h,w]=freqz(b,a,'whole',1024);      % Frequency Response
% N=length(h);
% h=circshift(h,fix(N/2));
% 
% figure(1)                           % Spectral Magnitude Response
% plot(w-pi,abs(h));
% xlabel('Frequency');
% ylabel('Magnitude');
% 
% figure(2)                           % Phase Response
% plot(w-pi,angle(h));
% xlabel('Frequency');
% ylabel('Phase');



% % Q 1-2
% clc;                                % Reset
% clear;
% 
% n=0:1023;
% N=length(n);
% x=sin(0.9*pi*n)+cos(0.7*pi*n)+cos(0.2*pi*n);
% X=fftshift(fft(x));
% X_m=abs(X);
% X_a=angle(X);
% w=2*pi*(-N/2:N/2-1)/N;
% 
% figure(1)                           % x[n]
% stem(n,x);
% xlabel('n');
% ylabel('x[n]');
% 
% figure(2)                           % Spectral Magnitude Response
% plot(w,X_m);
% xlabel('Frequency');
% ylabel('Magnitude');
% 
% figure(3)                           % Phase Response
% plot(w,X_a);
% xlabel('Frequency');
% ylabel('Phase');



% % Q 1-3
% clc;                                % Reset
% clear;
% 
% n=0:1023;
% N=length(n);
% w=2*pi*(-N/2:N/2-1)/N;
% z=exp(i*w);
% 
% H_n=1;
% H_d=(1-1.4*exp(-i*5*pi/7)*z.^(-1)).*(1-1.4*exp(i*5*pi/7)*z.^(-1));
% H=H_n./H_d;
% 
% x=sin(0.9*pi*n)+cos(0.7*pi*n)+cos(0.2*pi*n);
% X=fftshift(fft(x));
% 
% Y1=X.*H;
% y1=ifft(Y1);
% 
% figure(1)                           % y1[n]
% stem(n,y1);
% xlabel('n');
% ylabel('y1[n]');
% 
% figure(2)                           % Spectral Magnitude Response
% plot(w,abs(Y1));
% xlabel('Frequency');
% ylabel('Magnitude');
% 
% figure(3)                           % Phase Response
% plot(w,angle(Y1));
% xlabel('Frequency');
% ylabel('Phase');



% % Q 1-4
% clc;                                % Reset
% clear;
% 
% b1=[1 -1.4*exp(-i*5*pi/7)];         % Numerator
% b2=[1 -1.4*exp(i*5*pi/7)];
% a0=1;                               % Denominator
% b=conv(b1,b2);
% a=a0;
% 
% [hi,w]=freqz(b,a,'whole',1024);     % Frequency Response
% N=length(hi);
% hi=circshift(hi,fix(N/2));
% 
% figure(1)                           % Spectral Magnitude Response
% plot(w-pi,abs(hi));
% xlabel('Frequency');
% ylabel('Magnitude');
% 
% figure(2)                           % Phase Response
% plot(w-pi,angle(hi));
% xlabel('Frequency');
% ylabel('Phase');



% % Q 1-5
% clc;                                    % Reset
% clear;
% 
% n=0:1023;
% N=length(n);
% w=2*pi*(-N/2:N/2-1)/N;
% z=exp(i*w);
% 
% H_n=1;
% H_d=(1-1.4*exp(-i*5*pi/7)*z.^(-1)).*(1-1.4*exp(i*5*pi/7)*z.^(-1));
% H=H_n./H_d;
% x=sin(0.9*pi*n)+cos(0.7*pi*n)+cos(0.2*pi*n);
% X=fftshift(fft(x));
% Y1=X.*H;
% y1=ifft(Y1);
% 
% Hi=(1-1.4*exp(-i*5*pi/7)*z.^(-1)).*(1-1.4*exp(i*5*pi/7)*z.^(-1));
% X_i=Y1.*Hi;
% x_i=ifft(X_i);
% 
% figure(1)                               % x'[n]
% stem(n,x_i);
% xlabel('n');
% ylabel("x'[n]");
% 
% figure(2)                               % Spectral Magnitude Response
% plot(w,abs(X_i));
% xlabel('Frequency');
% ylabel('Magnitude');
% 
% figure(3)                               % Phase Response
% plot(w,angle(X_i));
% xlabel('Frequency');
% ylabel('Phase');



% % Q 1-6
% clc;                                    % Reset
% clear;
% 
% N=1024;
% b0=(1.4)^2;                             % Numerator
% b1=[1 -1/(1.4*exp(i*5*pi/7))];
% b2=[1 -1/(1.4*exp(-i*5*pi/7))];
% a1=[1 -1.4*exp(-i*5*pi/7)];             % Denominator
% a2=[1 -1.4*exp(i*5*pi/7)];
% b=b0*conv(b1,b2);
% a=conv(a1,a2);
% [H_ap,w_ap]=freqz(b,a,'whole',1024);
% H_ap=circshift(H_ap,fix(N/2));
% 
% b0_m=1;                                 % Numerator
% a0_m=(1.4)^2;
% a1_m=[1 -1/(1.4*exp(i*5*pi/7))];        % Denominator
% a2_m=[1 -1/(1.4*exp(-i*5*pi/7))];
% b_m=b0_m;
% a_m=a0_m*conv(a1_m,a2_m);
% [H_min,w_min]=freqz(b_m,a_m,'whole',1024);
% H_min=circshift(H_min,fix(N/2));
% 
% figure(1)                               % Hap(z)
% subplot(2,1,1)                          % Spectral Magnitude Response
% plot(w_ap-pi,abs(H_ap));
% xlabel('Frequency');
% ylabel('Magnitude');
% 
% subplot(2,1,2)                          % Phase Response
% plot(w_ap-pi,angle(H_ap));
% xlabel('Frequency');
% ylabel('Phase');
% 
% figure(2)                               % Hmin(z)
% subplot(2,1,1)                          % Spectral Magnitude Response
% plot(w_min-pi,abs(H_min));
% xlabel('Frequency');
% ylabel('Magnitude');
% 
% subplot(2,1,2)                          % Phase Response
% plot(w_min-pi,angle(H_min));
% xlabel('Frequency');
% ylabel('Phase');



% % Q 1-7
% clc;                                    % Reset
% clear;
% 
% n=0:1023;
% N=length(n);
% w=2*pi*(-N/2:N/2-1)/N;
% z=exp(i*w);
% 
% H_n=1;
% H_d=(1.4)^2*(1-(1/(1.4*exp(i*5*pi/7)))*z.^(-1)).*(1-(1/(1.4*exp(-i*5*pi/7)))*z.^(-1));
% H_min=H_n./H_d;
% 
% x=sin(0.9*pi*n)+cos(0.7*pi*n)+cos(0.2*pi*n);
% X=fftshift(fft(x));
% 
% Y2=X.*H_min;
% y2=ifft(Y2);
% 
% figure(1)                               % y2[n]
% stem(n,y2);
% xlabel('n');
% ylabel('y2[n]');
% 
% figure(2)                               % Spectral Magnitude Response
% plot(w,abs(Y2));
% xlabel('Frequency');
% ylabel('Magnitude');
% 
% figure(3)                               % Phase Response
% plot(w,angle(Y2));
% xlabel('Frequency');
% ylabel('Phase');
