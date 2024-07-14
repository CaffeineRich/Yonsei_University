clc
clear;
close all;
%%%%%%%%%%%% 1-1 %%%%%%%%%%%%

w=-pi:(2*pi/1023):pi; % w축을 -pi:pi로 나타내며, 1-2에서 1024 points를 사용
z=exp(1i*w);
Hn=1; % 분자
Hd=(1-1.4*exp(-1i*5*pi/7)*z.^(-1)).*(1-1.4*exp(1i*5*pi/7)*z.^(-1)); % 분모
H_z=Hn./Hd; % H_z [-pi:pi]
H_mag=abs(H_z); % magnitude response [-pi:pi]
H_phz=angle(H_z); % phase response [-pi:pi]

figure
subplot(2,1,1)
plot(w,H_mag) % spectral magnitude response
title('Spectral magnitude response of H(z)')
xlabel('w')
subplot(2,1,2)
plot(w,H_phz) % phase response
title('Phase response of H(z)') 
xlabel('w')

%%%%%%%%%%%% 1-2 %%%%%%%%%%%%

n=0:1023; % 1024 points
x_n=sin(9*pi*n/10)+cos(7*pi*n/10)+cos(pi*n/5); % x_n

X_z=fftshift(fft(x_n)); % fft를 한 뒤 pi만큼 이동 [-pi:pi]
X_mag=abs(X_z); % magnitude response [-pi:pi]
X_phz=angle(X_z); % phase response [-pi:pi]

figure
subplot(3,1,1)
plot(n,x_n) % 시간 축에서 x_n 그리기
title('x[n]')
xlabel('n')
subplot(3,1,2)
plot(w,X_mag) % spectral magnitude response
title('Spectral magnitude response of X(z)')
xlabel('w')
subplot(3,1,3)
plot(w,X_phz) % phase response
title('Phase response of X(z)')
xlabel('w')

%%%%%%%%%%%% 1-3 %%%%%%%%%%%%

Y_z=X_z.*H_z; % [-pi:pi]
y_n=ifft(fftshift(Y_z));
Y_mag=abs(Y_z); % magnitude response [-pi:pi]
Y_phz=angle(Y_z); % phase response [-pi:pi]

figure
subplot(3,1,1)
plot(n,y_n) % 시간 축에서 y_n 그리기
title('y_1[n]')
xlabel('n')
subplot(3,1,2)
plot(w,Y_mag) % spectral magnitude response
title('Spectral magnitude response of Y(z)')
xlabel('w')
subplot(3,1,3)
plot(w,Y_phz) % phase response
title('Phase response of Y(z)')
xlabel('w')

%%%%%%%%%%%% 1-4 %%%%%%%%%%%%

Hi_z=1./H_z; % [-pi:pi]
Hi_mag=abs(Hi_z); % [-pi:pi]
Hi_phz=angle(Hi_z); % [-pi:pi]

figure
subplot(2,1,1)
plot(w,Hi_mag) % spectral magnitude response
title('Spectral magnitude response of H_i(z)')
xlabel('w')
subplot(2,1,2)
plot(w,Hi_phz) % phase response
title('Phase response of H_i(z)') 
xlabel('w')

%%%%%%%%%%%% 1-5 %%%%%%%%%%%%

X2_z=Y_z.*Hi_z; % X'(z)=Y(z)Hi(z) [-pi:pi]
x2_n=ifft(fftshift(X2_z));
X2_mag=abs(X2_z); % [-pi:pi]
X2_phz=angle(X2_z); % [-pi:pi]

figure
subplot(3,2,1)
plot(n,x_n) % 시간 축에서 x_n 그리기
title('x[n]')
xlabel('n')
subplot(3,2,3)
plot(w,X_mag) % spectral magnitude response
title('Spectral magnitude response of X(z)')
xlabel('w')
subplot(3,2,5)
plot(w,X_phz) % phase response
title('Phase response of X(z)')
xlabel('w')
subplot(3,2,2)
plot(n,x2_n) % 시간 축에서 x'_n 그리기
title('x''[n]')
xlabel('n')
subplot(3,2,4)
plot(w,X2_mag) % spectral magnitude response
title('Spectral magnitude response of X''(z)')
xlabel('w')
subplot(3,2,6)
plot(w,X2_phz) % phase response
title('Phase response of X''(z)')
xlabel('w')

%%%%%%%%%%%% 1-6 %%%%%%%%%%%%

a1=1.4*exp(-1i*5*pi/7); % pole 1 which is out of the unit circle
a1_conj=conj(a1); % a1*
a2=1.4*exp(1i*5*pi/7); % pole 2 which is out of the unit circle
a2_conj=conj(a2); % a2*

Hap_z=((z.^(-1)-a1_conj).*(z.^(-1)-a2_conj))./((1-a1*z.^(-1)).*(1-a2*z.^(-1)));
% poles are at a1, a2 and zeros are at 1/(a1*), 1/(a2*)
Hmin_z=H_z./Hap_z; % H_min(z)=H(z)/H_ap(z)

Hap_mag=abs(Hap_z); % spectral magnitude response [-pi:pi]
Hap_phz=angle(Hap_z); % phase response [-pi:pi]
Hmin_mag=abs(Hmin_z); % spectral magnitude response [-pi:pi]
Hmin_phz=angle(Hmin_z); % phase response [-pi:pi]

figure
subplot(2,2,1)
plot(w,Hap_mag) % spectral magnitude response
title('Spectral magnitude response of H_a_p(z)')
xlabel('w')
subplot(2,2,3)
plot(w,Hap_phz) % phase response
title('Phase response of H_a_p(z)') 
xlabel('w')

subplot(2,2,2)
plot(w,Hmin_mag) % spectral magnitude response
title('Spectral magnitude response of H_m_i_n(z)')
xlabel('w')
subplot(2,2,4)
plot(w,Hmin_phz) % phase response
title('Phase response of H_m_i_n(z)') 
xlabel('w')

%%%%%%%%%%%% 1-7 %%%%%%%%%%%%

Y2_z=X_z.*Hmin_z; % Y_2(z)=X(z)*H_min(z) [-pi:pi]
y2_n=ifft(fftshift(Y2_z));
Y2_mag=abs(Y2_z); % [-pi:pi]
Y2_phz=angle(Y2_z); % [-pi:pi]

figure
subplot(3,1,1)
plot(n,y2_n) % 시간 축에서 y2_n 그리기
title('y_2[n]')
xlabel('n')
subplot(3,1,2)
plot(w,Y2_mag) % spectral magnitude response
title('Spectral magnitude response of Y_2(z)')
xlabel('w')
subplot(3,1,3)
plot(w,Y2_phz) % phase response
title('Phase response of Y_2(z)')
xlabel('w')