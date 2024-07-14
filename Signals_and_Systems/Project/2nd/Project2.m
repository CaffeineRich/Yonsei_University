% Q 1-1
% fs=1000;                            % Sampling frequency 설정
% t1=-5:1/fs:5;                       % x1(t)의 범위
% f1=0.5;                             % f1=0.5Hz 설정
% L1=length(t1);                      % x1(t) 범위의 길이
% x1=cos(2*pi*f1*t1);                 % x1(t) 설정
% 
% X1=fft(x1)./L1;                     % x1(t)의 FT 및 Normalization
% P1=abs(fftshift(X1));               % X1(f) 재배열
% f1=linspace(-fs/2, fs/2, L1);       % P1(f)의 범위
% 
% figure(1)                           % x1(t) 그래프
% plot(t1,x1)
% 
% figure(2)                           % P1(f) 그래프
% plot(f1,P1)
% xlim([-15 15])                      % 그래프 x축 표시 제한
% ylim([0 1])                         % 그래프 y축 표시 제한
% 
% 
% 
% t2=-0.25:1/fs:0.25;                 % x2(t)의 범위
% f2=10;                              % f2=10Hz 설정
% L2=length(t2);                      % x2(t) 범위의 길이
% x2=cos(2*pi*f2*t2);                 % x2(t) 설정
% 
% X2=fft(x2)./L2;                     % x2(t)의 FT 및 Normalization
% P2=abs(fftshift(X2));               % X2(f) 재배열
% f2=linspace(-fs/2, fs/2, L2);       % P2(f)의 범위
% 
% figure(3)                           % x2(t) 그래프
% plot(t2,x2)
% 
% figure(4)                           % P2(f) 그래프
% plot(f2,P2)
% xlim([-300 300])                    % 그래프 x축 표시 제한
% ylim([0 1])                         % 그래프 y축 표시 제한







% Q 1-2-Linearity
% fs=1000;                            % Sampling frequency 설정
% a=1;                                % 상수a=1 설정
% b=2;                                % 상수b=2 설정
% t=-5:1/fs:5;                        % x1(t), x2(t)의 범위
% f1=0.5;                             % f1=0.5Hz 설정
% f2=10;                              % f2=10Hz 설정
% L=length(t);                        % x1(t), x2(t) 범위의 길이
% x1=cos(2*pi*f1*t);                  % x1(t) 설정
% x2=cos(2*pi*f2*t);                  % x2(t) 설정
% x=a*x1+b*x2;                        % x(t)=ax1(t)+bx2(t) 설정
% 
% X1=fft(x1)./L;                      % x1(t)의 FT 및 Normalization
% P1=abs(fftshift(X1));               % X1(f) 재배열
% X2=fft(x2)./L;                      % x2(t)의 FT 및 Normalization
% P2=abs(fftshift(X2));               % X2(f) 재배열
% X=fft(x)./L;                        % x(t)의 FT 및 Normalization
% PX=abs(fftshift(X));                % X(f) 재배열
% f=linspace(-fs/2, fs/2, L);         % P1(f), P2(f), PX(f)의 범위
% 
% figure(1)                           % PX(f) 그래프
% plot(f,PX)
% xlim([-30 30])                      % 그래프 x축 표시 제한
% ylim([0 1])                         % 그래프 y축 표시 제한
% 
% figure(2)                           % aP1(f)+bP2(f) 그래프
% plot(f,a*P1+b*P2)
% xlim([-30 30])                      % 그래프 x축 표시 제한
% ylim([0 1])                         % 그래프 y축 표시 제한







% Q 1-2-Scale Change
% fs1=1000;                               % Sampling frequency 설정1
% fs2=100;                                % Sampling frequency 설정2
% a=10;                                   % 상수a=10 설정
% f=0.5;                                  % f=0.5Hz 설정
% t1=-5:1/fs1:5;                          % x(t)의 범위
% t2=-5:1/fs2:5;                          % xa(t)의 범위
% L1=length(t1);                          % x(t) 범위의 길이
% L2=length(t2);                          % xa(t) 범위의 길이
% x=cos(2*pi*f*t1);                       % x(t) 설정
% xa=cos(2*pi*a*f*t2);                    % xa(t) 설정
% 
% X=fft(x)./L1;                           % x(t)의 FT 및 Normalization
% PX=abs(fftshift(X));                    % X(f) 재배열
% f1=linspace(-fs1/2, fs1/2, L1);         % PX(f)의 범위
% XA=fft(xa)./L1;                         % xa(t)의 FT 및 Normalization
% PXA=abs(fftshift(XA));                  % XA(f) 재배열
% f2=linspace(-fs2/2, fs2/2, L2);         % PXA(f)의 범위
% 
% figure(1)                               % PXA(f) 그래프
% plot(f2,PXA)
% xlim([-50 50])                          % 그래프 x축 표시 제한
% ylim([0 0.1])                           % 그래프 y축 표시 제한
% 
% figure(2)                               % PX(f/a)/a 그래프
% plot(f1.*a,PX./a)
% xlim([-50 50])                          % 그래프 x축 표시 제한
% ylim([0 0.1])                           % 그래프 y축 표시 제한    







% Q 2-1
% fs=1000;                            % Sampling frequency 설정
% t=-5:1/fs:5;                        % x(t)의 범위
% L=length(t);                        % x(t) 범위의 길이
% x=sinc(t);                          % x(t) 설정
%  
% X=fft(x)./fs;                       % x(t)의 FT 및 Normalization
% P=abs(fftshift(X));                 % X(f) 재배열
% f=linspace(-fs/2, fs/2, L);         % P(f)의 범위
%  
% figure(1)                           % x(t) 그래프
% plot(t,x)
%  
% figure(2)                           % P(f) 그래프
% plot(f,P)
% xlim([-4 4])                        % 그래프 x축 표시 제한
% ylim([0 1.5])                       % 그래프 y축 표시 제한







% Q 2-2-Modulation
% fs=1000;                            % Sampling frequency 설정
% f0=10;                              % f0=10Hz 설정
% t=-5:1/fs:5;                        % x(t)의 범위
% L=length(t);                        % x(t) 범위의 길이
% x=sinc(t);                          % x(t) 설정
% xc=x.*cos(2*pi*f0*t);               % xc(t) 설정
%  
% X=fft(x)./fs;                       % x(t)의 FT 및 Normalization
% P=abs(fftshift(X));                 % X(f) 재배열
% XC=fft(xc)./fs;                     % xc(t)의 FT 및 Normalization
% PC=abs(fftshift(XC));               % XC(f) 재배열
% f=linspace(-fs/2, fs/2, L);         % P(f), PC(f)의 범위
%  
% figure(1)                           % PC(f) 그래프
% plot(f,PC)
% xlim([-50 50])                      % 그래프 x축 표시 제한
% ylim([0 1.5])                       % 그래프 y축 표시 제한
% 
% figure(2)                           % P(f-f0)/2+P(f+f0)/2 그래프
% plot(f-f0,P./2)                     % P(f-f0)/2
% hold on
% plot(f+f0,P./2)                     % P(f+f0)/2
% xlim([-50 50])                      % 그래프 x축 표시 제한
% ylim([0 1.5])                       % 그래프 y축 표시 제한







% Q 2-2-Scale Change
% fs1=1000;                               % Sampling frequency 설정1
% fs2=500;                                % Sampling frequency 설정2
% a=2;                                    % 상수a=2 설정
% t1=-5:1/fs1:5;                          % x(t)의 범위
% t2=-5:1/fs2:5;                          % xa(t)의 범위
% L1=length(t1);                          % x(t) 범위의 길이
% L2=length(t2);                          % xa(t) 범위의 길이
% x=sinc(t1);                             % x(t) 설정
% xa=sinc(a*t2);                          % xa(t) 설정
%  
% X=fft(x)./fs1;                          % x(t)의 FT 및 Normalization
% PX=abs(fftshift(X));                    % X(f) 재배열
% f1=linspace(-fs1/2, fs1/2, L1);         % PX(f)의 범위
% XA=fft(xa)./fs2;                        % xa(t)의 FT 및 Normalization
% PXA=abs(fftshift(XA));                  % XA(f) 재배열
% f2=linspace(-fs2/2, fs2/2, L2);         % PXA(f)의 범위
%  
% figure(1)                               % PXA(f) 그래프
% plot(f2,PXA)
% xlim([-10 10])                          % 그래프 x축 표시 제한
% ylim([0 1])                             % 그래프 y축 표시 제한
% 
% figure(2)                               % PX(f/a)/a 그래프
% plot(f1.*a,PX./a)
% xlim([-10 10])                          % 그래프 x축 표시 제한
% ylim([0 1])                             % 그래프 y축 표시 제한 







% Q 3-1-1
% syms t;
% u=heaviside(t);     % u(t) 설정
% U=laplace(u);       % U(f) 설정
% 
% figure(1)           % u(t) 그래프
% fplot(u)
% 
% figure(2)           % U(f) 그래프
% fplot(U)







% Q 3-1-2
% syms t;
% y=(exp(t)+exp(-5*t)-2*cos(2*t))*heaviside(t);   % y(t) 설정
% Y=laplace(y);                                   % Y(f) 설정
% 
% figure(1)                                       % y(t) 그래프
% fplot(y)
% 
% figure(2)                                       % Y(f) 그래프
% fplot(Y)







% Q 3-2-1
% syms t;
% vc=(1-exp(-t))*heaviside(t);    % vc(t) 설정
% 
% figure(1)                       % vc(t) 그래프
% fplot(vc)







% Q 3-2-2
% syms t;
% h=exp(-t)*heaviside(t);     % h(t) 설정
% H=tf([1],[1 1]);            % H(s) 설정
% 
% figure(1)                   % h(t) 그래프
% fplot(h)
% 
% figure(2)                   % H(s) bode plot
% bode(H)







% Q 3-2-3
% H=tf([1],[1 1]);        % H(s)=1/(s+1) 설정
% pzmap(H)                % H(s) pole-zero plot
% grid on







% Q 4-1
% t=0:0.001:1;    % x(t)의 범위
% x=myfunc(t);    % x(t) 설정
% 
% figure(1)       % x(t) 그래프
% plot(t,x)







% Q 4-2
% fs=1000;                        % Sampling frequency 설정
% t=0:1/fs:1;                     % x(t)의 범위
% L=length(t);                    % x(t) 범위의 길이
% x=myfunc(t);                    % x(t) 설정
% 
% X=fft(x)./L;                    % x(t)의 FT 및 Normalization
% P=abs(fftshift(X));             % X(f) 재배열
% f=linspace(-fs/2,fs/2,L);       % P(f)의 범위
% 
% figure(1)                       % P(f) 그래프
% plot(f,P)







% Q 4-3-a
% fs=1000;                        % Sampling frequency 설정
% t=0:1/fs:1;                     % x(t)의 범위
% L=length(t);                    % x(t) 범위의 길이
% x=myfunc(t);                    % x(t) 설정
%  
% X=fft(x)./L;                    % x(t)의 FT 및 Normalization
% Xi=ifft(X).*L;                  % X(t)의 IFT
%  
% figure(1)                       % x(t) 그래프
% plot(t,x)
% ylim([-10 15])                  % 그래프 y축 표시 제한
%  
% figure(2)                       % Xi(t) 그래프
% plot(t,Xi)
% ylim([-10 15])                  % 그래프 y축 표시 제한







% Q 4-3-b
% fs1=1000;                           % Sampling frequency 설정1
% fs2=150;                            % Sampling frequency 설정2
% t1=0:1/fs1:1;                       % x1(t)의 범위
% t2=0:1/fs2:1;                       % x2(t)의 범위
% L1=length(t1);                      % x1(t) 범위의 길이
% L2=length(t2);                      % x2(t) 범위의 길이
% x1=myfunc(t1);                      % x1(t) 설정
% x2=myfunc(t2);                      % x2(t) 설정
% 
% X1=fft(x1)./L1;                     % x1(t)의 FT 및 Normalization
% X2=fft(x2)./L2;                     % x2(t)의 FT 및 Normalization
% X1i=ifft(X1).*L1;                   % X1(f)의 IFT
% X2i=ifft(X2).*L2;                   % X2(f)의 IFT
% P1=abs(fftshift(X1));               % X1(f) 재배열
% P2=abs(fftshift(X2));               % X2(f) 재배열
% f1=linspace(-fs1/2,fs1/2,L1);       % P1(f)의 범위
% f2=linspace(-fs2/2,fs2/2,L2);       % P2(f)의 범위
% 
% figure(1)                           % P1(t) 그래프
% plot(f1,P1)
%  
% figure(2)                           % P2(t) 그래프
% plot(f2,P2)
% 
% figure(3)                           % X1i(t) 그래프
% plot(t1,X1i)
%  
% figure(4)                           % X2i(t) 그래프
% plot(t2,X2i)