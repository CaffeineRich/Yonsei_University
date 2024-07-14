% % Q 1-1
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% n1=(0:N1-1)/Fs1;                    % x-axis in x1
% n2=(0:N2-1)/Fs2;                    % x-axis in x2
% 
% figure(1)                           % Waveform of x1
% stem(n1,y1);
% xlabel('n');
% ylabel('x1[n]');
% 
% figure(2)                           % Waveform of x2
% stem(n2,y2);
% xlabel('n');
% ylabel('x2[n]');



% % Q 1-2
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% n1=(-(N1-1)/2:(N1-1)/2)/Fs1;        % x-axis in x1
% n2=(-(N2-1)/2:(N2-1)/2)/Fs2;        % x-axis in x2
% 
% X1=fft(y1)./N1;                     % DFT & Normalization of x1
% m1=abs(fftshift(X1));               % Rearrangement of X1
% f1=Fs1*n1/N1;                       % x-axis in frequency
% w1=2*pi*f1;                         % x-axis in X1
% 
% X2=fft(y2)./N2;                     % DFT & Normalization of x2
% m2=abs(fftshift(X2));               % Rearrangement of X2
% f2=Fs2*n2/N2;                       % x-axis in frequency
% w2=2*pi*f2;                         % x-axis in X2
% 
% figure(1)                           % Waveform of X1
% plot(w1,log(m1));
% xlabel('w');
% ylabel('X1(w)');
% 
% figure(2)                           % Waveform of X2
% plot(w2,log(m2));
% xlabel('w');
% ylabel('X2(w)');



% % Q 1-3
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% sound(y1,Fs1);                      % Play Sample1
% pause(8);
% sound(y2,Fs2);                      % Play Sample2



% % Q 2-1
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% 
% L=4;                                % Gain=4
% Y1=zeros(1,N1*L);                   % xe1
% Y2=zeros(1,N2*L);                   % xe2
% 
% for i=0:N1-1                        % x1 Zero-padding
%     Y1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                        % x2 Zero-padding
%     Y2(j*L+1)=y2(j+1);
% end
% 
% sound(Y1*L,Fs1*L);
% pause(8);
% sound(Y2*L,Fs2*L);



% % Q 2-2
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% 
% L=4;                                % Gain=4
% Y1=zeros(1,N1*L);                   % xe1
% Y2=zeros(1,N2*L);                   % xe2
% 
% for i=0:N1-1                        % x1 Zero-padding
%     Y1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                        % x2 Zero-padding
%     Y2(j*L+1)=y2(j+1);
% end
% 
% X1=fft(Y1)./(N1*L);                 % DFT & Normalization of xe1
% m1=abs(fftshift(X1));               % Rearrangement of Xe1
% f1=((-N1*L/2):(N1*L/2)-1)/(N1*L);   % x-axis in frequency
% w1=2*pi*f1;                         % x-axis in Xe1
% 
% X2=fft(Y2)./(N2*L);                 % DFT & Normalization of xe2
% m2=abs(fftshift(X2));               % Rearrangement of Xe2
% f2=((-N2*L/2):(N2*L/2)-1)/(N2*L);   % x-axis in frequency
% w2=2*pi*f2;                         % x-axis in Xe2
% 
% figure(1)                           % Waveform of Xe1
% plot(w1,log(m1));
% xlabel('w');
% ylabel('Xe1(w)');
% 
% figure(2)                           % Waveform of Xe2
% plot(w2,log(m2));
% xlabel('w');
% ylabel('Xe2(w)');



% % Q 3-1
% clc;                    % Reset
% clear;
% 
% fs=1000;
% w=-pi:1/fs:pi;
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);
% 
% figure(1)
% plot(w,H);
% xlabel('w');
% ylabel('H(w)');
% ylim([0 5]);



% % Q 3-2
% clc;                        % Reset
% clear;
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);    % H(w)
% 
% h=ifft(H);                  % IDFT of H(w)
% hr=abs(ifftshift(h));       % Rearrangement of hr[n]
% n=(-W/2):((W/2)-1);         % x-axis of hr[n]
% 
% w3=1.*(-3<=n&n<=3);         % 3 points rectangular window
% hr3=w3.*hr;                 % hrL3[n]=w3[n]*hr[n]
% 
% w11=1.*(-11<=n&n<=11);      % 11 points rectangular window
% hr11=w11.*hr;               % hrL11[n]=w11[n]*hr[n]
% 
% figure(1)                   % Waveform of hrL3[n]
% stem(n,hr3);
% xlim([-15 15]);
% xlabel('n');
% ylabel('hrL3[n]');
% 
% figure(2)                   % Waveform of hrL11[n]
% stem(n,hr11);
% xlim([-15 15]);
% xlabel('n');
% ylabel('hrL11[n]');



% % Q 3-3
% clc;                        % Reset
% clear;
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);    % H(w)
% 
% h=ifft(H);                  % IFT of H(w)
% hr=abs(ifftshift(h));       % Rearrangement of hr[n]
% n=(-W/2):((W/2)-1);         % x-axis of hr[n]
% N=length(n);
% 
% w3=1.*(-3<=n&n<=3);         % 3 points rectangular window
% hr3=w3.*hr;                 % hrL3[n]=w3[n]*hr[n]
% 
% w11=1.*(-11<=n&n<=11);      % 11 points rectangular window
% hr11=w11.*hr;               % hrL11[n]=w11[n]*hr[n]
% 
% H3=fft(hr3)./N;             % DFT & Normalization of hrL3[n]
% Hr3=abs(fftshift(H3));      % Rearrangement of HrL3(w)
% 
% H11=fft(hr11)./N;           % DFT & Normalization of hrL11[n]
% Hr11=abs(fftshift(H11));    % Rearrangement of HrL11(w)
% 
% w_rad=2*pi*(-N/2:N/2-1)/N;  % x-axis of HrL3(w) & HrL11(w)
% 
% figure(1)                   % Waveform of HrL3(w)
% plot(w_rad,Hr3);
% xlim([-15 15]);
% xlabel('w');
% ylabel('HrL3(w)');
% 
% figure(2)                   % Waveform of HrL11(w)
% plot(w_rad,Hr11);
% xlim([-15 15]);
% xlabel('w');
% ylabel('HrL11(w)');



% % Q 4-1
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% 
% L=4;                                % Gain=4
% xe1=zeros(1,N1*L);                  % xe1
% xe2=zeros(1,N2*L);                  % xe2
% 
% for i=0:N1-1                        % x1 Zero-padding
%     xe1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                        % x2 Zero-padding
%     xe2(j*L+1)=y2(j+1);
% end
% 
% n1=(0:N1*L-1)/Fs1;                  % x-axis in xe1
% n2=(0:N2*L-1)/Fs2;                  % x-axis in xe2
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);            % H(w)
% 
% h=ifft(H);                          % IDFT of H(w)
% hr=abs(ifftshift(h));               % Rearrangement of hr[n]
% n=(-W/2):((W/2)-1);                 % x-axis of hr[n]
% 
% w3=1.*(-3<=n&n<=3);                 % 3 points rectangular window
% hr3=w3.*hr;                         % hrL3[n]=w3[n]*hr[n]
% 
% w11=1.*(-11<=n&n<=11);              % 11 points rectangular window
% hr11=w11.*hr;                       % hrL11[n]=w11[n]*hr[n]
% 
% xie1_L3=conv(xe1,hr3,'same');       % xie1L3[n]=xe1[n]*hrL3[n]
% xie1_L11=conv(xe1,hr11,'same');     % xie1L11[n]=xe1[n]*hrL11[n]
% xie2_L3=conv(xe2,hr3,'same');       % xie2L3[n]=xe2[n]*hrL3[n]
% xie2_L11=conv(xe2,hr11,'same');     % xie2L11[n]=xe2[n]*hrL11[n]
% 
% k1=(0:(N1*L-1))/Fs1;                % x-axis of xie1L3[n] & xie1L11[n]
% k2=(0:(N2*L-1))/Fs2;                % x-axis of xie2L3[n] & xie2L11[n]
% 
% figure(1)
% subplot(2,1,1);                     % Waveform of xie1L3[n]
% stem(k1,xie1_L3);
% xlabel('n');
% ylabel('xie1L3[n]');
% 
% subplot(2,1,2);                     % Waveform of xie1L11[n]
% stem(k1,xie1_L11);
% xlabel('n');
% ylabel('xie1L11[n]');
% 
% figure(2)
% subplot(2,1,1);                     % Waveform of xie2L3[n]
% stem(k2,xie2_L3);
% xlabel('n');
% ylabel('xie2L3[n]');
% 
% subplot(2,1,2);                     % Waveform of xie2L11[n]
% stem(k2,xie2_L11);
% xlabel('n');
% ylabel('xie2L11[n]');



% % Q 4-2
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% 
% L=4;                                % Gain=4
% xe1=zeros(1,N1*L);                  % xe1
% xe2=zeros(1,N2*L);                  % xe2
% 
% for i=0:N1-1                        % x1 Zero-padding
%     xe1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                        % x2 Zero-padding
%     xe2(j*L+1)=y2(j+1);
% end
% 
% n1=(0:N1*L-1)/Fs1;                  % x-axis in xe1
% n2=(0:N2*L-1)/Fs2;                  % x-axis in xe2
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);            % H(w)
% 
% h=ifft(H);                          % IDFT of H(w)
% hr=abs(ifftshift(h));               % Rearrangement of hr[n]
% n=(-W/2):((W/2)-1);                 % x-axis of hr[n]
% 
% w3=1.*(-3<=n&n<=3);                 % 3 points rectangular window
% hr3=w3.*hr;                         % hrL3[n]=w3[n]*hr[n]
% 
% w11=1.*(-11<=n&n<=11);              % 11 points rectangular window
% hr11=w11.*hr;                       % hrL11[n]=w11[n]*hr[n]
% 
% xie1_L3=conv(xe1,hr3,'same');       % xie1L3[n]=xe1[n]*hrL3[n]
% xie1_L11=conv(xe1,hr11,'same');     % xie1L11[n]=xe1[n]*hrL11[n]
% xie2_L3=conv(xe2,hr3,'same');       % xie2L3[n]=xe2[n]*hrL3[n]
% xie2_L11=conv(xe2,hr11,'same');     % xie2L11[n]=xe2[n]*hrL11[n]
% 
% k1=(0:(N1*L-1))/Fs1;                % x-axis of xie1L3[n] & xie1L11[n]
% k2=(0:(N2*L-1))/Fs2;                % x-axis of xie2L3[n] & xie2L11[n]
% K1=length(k1);
% K2=length(k2);
% 
% Xie1_L3=abs(fftshift(fft(xie1_L3)./K1));    % DFT of xie1_L3[n]
% Xie1_L11=abs(fftshift(fft(xie1_L11)./K1));  % DFT of xie1_L11[n]
% Xie2_L3=abs(fftshift(fft(xie2_L3)./K2));    % DFT of xie2_L3[n]
% Xie2_L11=abs(fftshift(fft(xie2_L11)./K2));  % DFT of xie2_L11[n]
% 
% w1_rad=2*pi*(-K1/2:K1/2-1)/K1;      % x-axis of Xie1L3(w) & Xie1L11(w)
% w2_rad=2*pi*(-K2/2:K2/2-1)/K2;      % x-axis of Xie2L3(w) & Xie2L11(w)
% 
% figure(1)
% subplot(2,1,1);                     % Waveform of Xie1L3(w)
% plot(w1_rad,Xie1_L3);
% xlabel('w');
% ylabel('Xie1L3(w)');
% 
% subplot(2,1,2);                     % Waveform of Xie1L11(w)
% plot(w1_rad,Xie1_L11);
% xlabel('w');
% ylabel('Xie1L11(w)');
% 
% figure(2)
% subplot(2,1,1);                     % Waveform of Xie2L3(w)
% plot(w2_rad,Xie2_L3);
% xlabel('w');
% ylabel('Xie2L3(w)');
% 
% subplot(2,1,2);                     % Waveform of Xie2L11(w)
% plot(w2_rad,Xie2_L11);
% xlabel('w');
% ylabel('Xie2L11(w)');



% % Q 4-3
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% 
% L=4;                                % Gain=4
% xe1=zeros(1,N1*L);                  % xe1
% xe2=zeros(1,N2*L);                  % xe2
% 
% for i=0:N1-1                        % x1 Zero-padding
%     xe1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                        % x2 Zero-padding
%     xe2(j*L+1)=y2(j+1);
% end
% 
% n1=(0:N1*L-1)/Fs1;                  % x-axis in xe1
% n2=(0:N2*L-1)/Fs2;                  % x-axis in xe2
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);            % H(w)
% 
% h=ifft(H);                          % IDFT of H(w)
% hr=abs(ifftshift(h));               % Rearrangement of hr[n]
% n=(-W/2):((W/2)-1);                 % x-axis of hr[n]
% 
% w3=1.*(-3<=n&n<=3);                 % 3 points rectangular window
% hr3=w3.*hr;                         % hrL3[n]=w3[n]*hr[n]
% 
% w11=1.*(-11<=n&n<=11);              % 11 points rectangular window
% hr11=w11.*hr;                       % hrL11[n]=w11[n]*hr[n]
% 
% xie1_L3=conv(xe1,hr3,'same');       % xie1L3[n]=xe1[n]*hrL3[n]
% xie1_L11=conv(xe1,hr11,'same');     % xie1L11[n]=xe1[n]*hrL11[n]
% xie2_L3=conv(xe2,hr3,'same');       % xie2L3[n]=xe2[n]*hrL3[n]
% xie2_L11=conv(xe2,hr11,'same');     % xie2L11[n]=xe2[n]*hrL11[n]
% 
% k1=(0:(N1*L-1))/Fs1;                % x-axis of xie1L3[n] & xie1L11[n]
% k2=(0:(N2*L-1))/Fs2;                % x-axis of xie2L3[n] & xie2L11[n]
% 
% sound(xe1,Fs1*L);                   % Play xe1[n]
% pause(8);
% sound(xie1_L11,Fs1*L);              % Play xie1_L11[n]
% pause(8);
% sound(xe2,Fs2*L);                   % Play xe2[n]
% pause(8);
% sound(xie2_L11,Fs2*L);              % Play xie2_L11[n]



% % Q 5-1
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% 
% L=4;                                % Gain=4
% xe1=zeros(1,N1*L);                  % xe1
% xe2=zeros(1,N2*L);                  % xe2
% 
% for i=0:N1-1                        % x1 Zero-padding
%     xe1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                        % x2 Zero-padding
%     xe2(j*L+1)=y2(j+1);
% end
% 
% n1=(0:N1*L-1)/Fs1;                  % x-axis in xe1
% n2=(0:N2*L-1)/Fs2;                  % x-axis in xe2
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);            % H(w)
% 
% h=ifft(H);                          % IDFT of H(w)
% hr=abs(ifftshift(h));               % Rearrangement of hr[n]
% n=(-W/2):((W/2)-1);                 % x-axis of hr[n]
% 
% w11=1.*(-11<=n&n<=11);              % 11 points rectangular window
% hr11=w11.*hr;                       % hrL11[n]=w11[n]*hr[n]
% 
% xie1_L11=conv(xe1,hr11,'same');     % xie1L11[n]=xe1[n]*hrL11[n]
% xie2_L11=conv(xe2,hr11,'same');     % xie2L11[n]=xe2[n]*hrL11[n]
% 
% k1=(0:(N1*L-1))/Fs1;                % x-axis of xie1L11[n]
% k2=(0:(N2*L-1))/Fs2;                % x-axis of xie2L11[n]
% K1=length(k1);
% K2=length(k2);
% 
% M=5;
% xp1=zeros(1,K1);                    % xp1
% xp2=zeros(1,K2);                    % xp2
% 
% for I=1:K1
%     if rem(I,M)==0
%         xp1(I)=xie1_L11(I);
%     end
% end
% 
% for J=1:K2
%     if rem(J,M)==0
%         xp2(J)=xie2_L11(J);
%     end
% end
% 
% p1=(0:K1-1)/Fs1;                    % x-axis in xp1
% p2=(0:K2-1)/Fs2;                    % x-axis in xp2
% 
% figure(1)                           % Waveform of xp1[n]
% stem(p1,xp1);
% xlabel('n');
% ylabel('xp1[n]');
% 
% figure(2)                           % Waveform of xp2[n]
% stem(p2,xp2);
% xlabel('n');
% ylabel('xp2[n]');



% % Q 5-2
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% 
% L=4;                                % Gain=4
% xe1=zeros(1,N1*L);                  % xe1
% xe2=zeros(1,N2*L);                  % xe2
% 
% for i=0:N1-1                        % x1 Zero-padding
%     xe1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                        % x2 Zero-padding
%     xe2(j*L+1)=y2(j+1);
% end
% 
% n1=(0:N1*L-1)/Fs1;                  % x-axis in xe1
% n2=(0:N2*L-1)/Fs2;                  % x-axis in xe2
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);            % H(w)
% 
% h=ifft(H);                          % IDFT of H(w)
% hr=abs(ifftshift(h));               % Rearrangement of hr[n]
% n=(-W/2):((W/2)-1);                 % x-axis of hr[n]
% 
% w11=1.*(-11<=n&n<=11);              % 11 points rectangular window
% hr11=w11.*hr;                       % hrL11[n]=w11[n]*hr[n]
% 
% xie1_L11=conv(xe1,hr11,'same');     % xie1L11[n]=xe1[n]*hrL11[n]
% xie2_L11=conv(xe2,hr11,'same');     % xie2L11[n]=xe2[n]*hrL11[n]
% 
% k1=(0:(N1*L-1))/Fs1;                % x-axis of xie1L11[n]
% k2=(0:(N2*L-1))/Fs2;                % x-axis of xie2L11[n]
% K1=length(k1);
% K2=length(k2);
% 
% M=5;
% xp1=zeros(1,K1);                    % xp1
% xp2=zeros(1,K2);                    % xp2
% 
% for I=1:K1
%     if rem(I,M)==0
%         xp1(I)=xie1_L11(I);
%     end
% end
% 
% for J=1:K2
%     if rem(J,M)==0
%         xp2(J)=xie2_L11(J);
%     end
% end
% 
% p1=(0:K1-1)/Fs1;                    % x-axis in xp1
% p2=(0:K2-1)/Fs2;                    % x-axis in xp2
% 
% Xp1=abs(fftshift(fft(xp1)./K1));    % DFT of xp1[n]
% Xp2=abs(fftshift(fft(xp2)./K2));    % DFT of xp2[n]
% 
% w1=2*pi*(-K1/2:K1/2-1)/K1;          % x-axis of Xp1(w)
% w2=2*pi*(-K2/2:K2/2-1)/K2;          % x-axis of Xp2(w)
% 
% figure(1)                           % Waveform of Xp1(w)
% plot(w1,Xp1);
% xlabel('w');
% ylabel('Xp1(w)');
% 
% figure(2)                           % Waveform of Xp2(w)
% plot(w2,Xp2);
% xlabel('w');
% ylabel('Xp2(w)');



% % Q 5-3
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% 
% L=4;                                % Gain=4
% xe1=zeros(1,N1*L);                  % xe1
% xe2=zeros(1,N2*L);                  % xe2
% 
% for i=0:N1-1                        % x1 Zero-padding
%     xe1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                        % x2 Zero-padding
%     xe2(j*L+1)=y2(j+1);
% end
% 
% n1=(0:N1*L-1)/Fs1;                  % x-axis in xe1
% n2=(0:N2*L-1)/Fs2;                  % x-axis in xe2
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);            % H(w)
% 
% h=ifft(H);                          % IDFT of H(w)
% hr=abs(ifftshift(h));               % Rearrangement of hr[n]
% n=(-W/2):((W/2)-1);                 % x-axis of hr[n]
% 
% w11=1.*(-11<=n&n<=11);              % 11 points rectangular window
% hr11=w11.*hr;                       % hrL11[n]=w11[n]*hr[n]
% 
% xie1_L11=conv(xe1,hr11,'same');     % xie1L11[n]=xe1[n]*hrL11[n]
% xie2_L11=conv(xe2,hr11,'same');     % xie2L11[n]=xe2[n]*hrL11[n]
% 
% k1=(0:(N1*L-1))/Fs1;                % x-axis of xie1L11[n]
% k2=(0:(N2*L-1))/Fs2;                % x-axis of xie2L11[n]
% K1=length(k1);
% K2=length(k2);
% 
% M=5;
% xp1=zeros(1,K1);                    % xp1
% xp2=zeros(1,K2);                    % xp2
% 
% for I=1:K1
%     if rem(I,M)==0
%         xp1(I)=xie1_L11(I);
%     end
% end
% 
% for J=1:K2
%     if rem(J,M)==0
%         xp2(J)=xie2_L11(J);
%     end
% end
% 
% sound(xie1_L11,Fs1*L);              % Play xie1_L11[n]
% pause(8);
% sound(xp1,Fs1*L);                   % Play xp1[n]
% pause(8);
% sound(xie2_L11,Fs2*L);              % Play xie2_L11[n]
% pause(8);
% sound(xp2,Fs2*L);                   % Play xp2[n]



% % Q 6-1
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% 
% L=4;                                % Gain=4
% xe1=zeros(1,N1*L);                  % xe1
% xe2=zeros(1,N2*L);                  % xe2
% 
% for i=0:N1-1                        % x1 Zero-padding
%     xe1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                        % x2 Zero-padding
%     xe2(j*L+1)=y2(j+1);
% end
% 
% n1=(0:N1*L-1)/Fs1;                  % x-axis in xe1
% n2=(0:N2*L-1)/Fs2;                  % x-axis in xe2
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);            % H(w)
% 
% h=ifft(H);                          % IDFT of H(w)
% hr=abs(ifftshift(h));               % Rearrangement of hr[n]
% n=(-W/2):((W/2)-1);                 % x-axis of hr[n]
% 
% w11=1.*(-11<=n&n<=11);              % 11 points rectangular window
% hr11=w11.*hr;                       % hrL11[n]=w11[n]*hr[n]
% 
% xie1_L11=conv(xe1,hr11,'same');     % xie1L11[n]=xe1[n]*hrL11[n]
% xie2_L11=conv(xe2,hr11,'same');     % xie2L11[n]=xe2[n]*hrL11[n]
% 
% k1=(0:(N1*L-1))/Fs1;                % x-axis of xie1L11[n]
% k2=(0:(N2*L-1))/Fs2;                % x-axis of xie2L11[n]
% K1=length(k1);
% K2=length(k2);
% 
% M=5;
% xp1=zeros(1,K1);                    % xp1
% xp2=zeros(1,K2);                    % xp2
% 
% for i=1:K1
%     if rem(i,M)==0
%         xp1(i)=xie1_L11(i);
%     end
% end
% 
% for j=1:K2
%     if rem(j,M)==0
%         xp2(j)=xie2_L11(j);
%     end
% end
% 
% d1=(0:(K1/M-1))/Fs1;                % x-axis of xd1[n]
% d2=(0:(K2/M-1))/Fs2;                % x-axis of xd2[n]
% D1=length(d1);
% D2=length(d2);
% xd1=zeros(1,D1);                    % xd1[n]
% xd2=zeros(1,D2);                    % xd2[n]          
% 
% for i=1:D1
%     xd1(i)=xp1(i*M);                % xd1[n]=xp1[Mn]
% end
% 
% for j=1:D2
%     xd2(j)=xp2(j*M);                % xd2[n]=xp2[Mn]
% end
% 
% figure(1)                           % Waveform of xd1[n]
% stem(d1,xd1);
% xlabel('n');
% ylabel('xd1[n]');
% 
% figure(2)                           % Waveform of xd2[n]
% stem(d2,xd2);
% xlabel('n');
% ylabel('xd2[n]');



% % Q 6-2
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% 
% L=4;                                % Gain=4
% xe1=zeros(1,N1*L);                  % xe1
% xe2=zeros(1,N2*L);                  % xe2
% 
% for i=0:N1-1                        % x1 Zero-padding
%     xe1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                        % x2 Zero-padding
%     xe2(j*L+1)=y2(j+1);
% end
% 
% n1=(0:N1*L-1)/Fs1;                  % x-axis in xe1
% n2=(0:N2*L-1)/Fs2;                  % x-axis in xe2
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);            % H(w)
% 
% h=ifft(H);                          % IDFT of H(w)
% hr=abs(ifftshift(h));               % Rearrangement of hr[n]
% n=(-W/2):((W/2)-1);                 % x-axis of hr[n]
% 
% w11=1.*(-11<=n&n<=11);              % 11 points rectangular window
% hr11=w11.*hr;                       % hrL11[n]=w11[n]*hr[n]
% 
% xie1_L11=conv(xe1,hr11,'same');     % xie1L11[n]=xe1[n]*hrL11[n]
% xie2_L11=conv(xe2,hr11,'same');     % xie2L11[n]=xe2[n]*hrL11[n]
% 
% k1=(0:(N1*L-1))/Fs1;                % x-axis of xie1L11[n]
% k2=(0:(N2*L-1))/Fs2;                % x-axis of xie2L11[n]
% K1=length(k1);
% K2=length(k2);
% 
% M=5;
% xp1=zeros(1,K1);                    % xp1
% xp2=zeros(1,K2);                    % xp2
% 
% for i=1:K1
%     if rem(i,M)==0
%         xp1(i)=xie1_L11(i);
%     end
% end
% 
% for j=1:K2
%     if rem(j,M)==0
%         xp2(j)=xie2_L11(j);
%     end
% end
% 
% d1=(0:(K1/M-1))/Fs1;                % x-axis of xd1[n]
% d2=(0:(K2/M-1))/Fs2;                % x-axis of xd2[n]
% D1=length(d1);
% D2=length(d2);
% xd1=zeros(1,D1);                    % xd1[n]
% xd2=zeros(1,D2);                    % xd2[n]          
% 
% for i=1:D1
%     xd1(i)=xp1(i*M);                % xd1[n]=xp1[Mn]
% end
% 
% for j=1:D2
%     xd2(j)=xp2(j*M);                % xd2[n]=xp2[Mn]
% end
% 
% w1=2*pi*(-D1/2:D1/2-1)/D1;          % x-axis of Xd1(w)
% w2=2*pi*(-D2/2:D2/2-1)/D2;          % x-axis of Xd2(w)
% Xd1=abs(fftshift(fft(xd1)./D1));    % DFT of xd1[n]
% Xd2=abs(fftshift(fft(xd2)./D2));    % DFT of xd2[n]
% 
% figure(1)                           % Waveform of Xd1(w)
% plot(w1,Xd1);
% xlabel('w');
% ylabel('Xd1(w)');
% 
% figure(2)                           % Waveform of Xd2(w)
% plot(w2,Xd2);
% xlabel('w');
% ylabel('Xd2(w)');



% % Q 6-3
% clc;                                % Reset
% clear;
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                      % The number of samples in x1
% N2=length(y2);                      % The number of samples in x2
% 
% L=4;                                % Gain=4
% xe1=zeros(1,N1*L);                  % xe1
% xe2=zeros(1,N2*L);                  % xe2
% 
% for i=0:N1-1                        % x1 Zero-padding
%     xe1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                        % x2 Zero-padding
%     xe2(j*L+1)=y2(j+1);
% end
% 
% n1=(0:N1*L-1)/Fs1;                  % x-axis in xe1
% n2=(0:N2*L-1)/Fs2;                  % x-axis in xe2
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);            % H(w)
% 
% h=ifft(H);                          % IDFT of H(w)
% hr=abs(ifftshift(h));               % Rearrangement of hr[n]
% n=(-W/2):((W/2)-1);                 % x-axis of hr[n]
% 
% w11=1.*(-11<=n&n<=11);              % 11 points rectangular window
% hr11=w11.*hr;                       % hrL11[n]=w11[n]*hr[n]
% 
% xie1_L11=conv(xe1,hr11,'same');     % xie1L11[n]=xe1[n]*hrL11[n]
% xie2_L11=conv(xe2,hr11,'same');     % xie2L11[n]=xe2[n]*hrL11[n]
% 
% k1=(0:(N1*L-1))/Fs1;                % x-axis of xie1L11[n]
% k2=(0:(N2*L-1))/Fs2;                % x-axis of xie2L11[n]
% K1=length(k1);
% K2=length(k2);
% 
% M=5;
% xp1=zeros(1,K1);                    % xp1
% xp2=zeros(1,K2);                    % xp2
% 
% for i=1:K1
%     if rem(i,M)==0
%         xp1(i)=xie1_L11(i);
%     end
% end
% 
% for j=1:K2
%     if rem(j,M)==0
%         xp2(j)=xie2_L11(j);
%     end
% end
% 
% d1=(0:(K1/M-1))/Fs1;                % x-axis of xd1[n]
% d2=(0:(K2/M-1))/Fs2;                % x-axis of xd2[n]
% D1=length(d1);
% D2=length(d2);
% xd1=zeros(1,D1);                    % xd1[n]
% xd2=zeros(1,D2);                    % xd2[n]          
% 
% for i=1:D1
%     xd1(i)=xp1(i*M);                % xd1[n]=xp1[Mn]
% end
% 
% for j=1:D2
%     xd2(j)=xp2(j*M);                % xd2[n]=xp2[Mn]
% end
% 
% sound(xp1,Fs1*L);                   % Play xp1[n]
% pause(8);
% sound(xd1,Fs1*L/M);                 % Play xd1[n]
% pause(8);
% sound(xp2,Fs2*L);                   % Play xp2[n]
% pause(8);
% sound(xd2,Fs2*L/M);                 % Play xd2[n]



% % Q 7-1
% clc;
% clear;
% 
% fs=1000;
% w=-pi:1/fs:pi;
% M=5;
% Ha=1.*(-pi/M<=w&w<=pi/M);
% 
% figure(1)
% plot(w,Ha);
% xlabel('w');
% ylabel('Ha(w)');
% ylim([0 1.5]);



% % Q 7-2
% clc;
% clear;
% 
% fs=1000;
% wa=-pi:1/fs:pi;
% Wa=length(wa);
% M=5;
% Ha=1.*(-pi/M<=wa&wa<=pi/M);             % Ha(w)
% ha=abs(ifftshift(ifft(Ha)));            % IDFT of Ha(w)
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                          % The number of samples in x1
% N2=length(y2);                          % The number of samples in x2
% 
% L=4;                                    % Gain=4
% xe1=zeros(1,N1*L);                      % xe1
% xe2=zeros(1,N2*L);                      % xe2
% 
% for i=0:N1-1                            % x1 Zero-padding
%     xe1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                            % x2 Zero-padding
%     xe2(j*L+1)=y2(j+1);
% end
% 
% n1=(0:N1*L-1)/Fs1;                      % x-axis in xe1
% n2=(0:N2*L-1)/Fs2;                      % x-axis in xe2
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);                % H(w)
% 
% hr=abs(ifftshift(ifft(H)));             % IDFT of H(w)
% n=(-W/2):((W/2)-1);                     % x-axis of hr[n]
% 
% w11=1.*(-11<=n&n<=11);                  % 11 points rectangular window
% hr11=w11.*hr;                           % hr11[n]=w11[n]*hr[n]
% 
% xi1=conv(xe1,hr11,'same');              % xi1[n]=xe1[n]*hr11[n]
% xi2=conv(xe2,hr11,'same');              % xi2[n]=xe2[n]*hr11[n]
% 
% k1=(0:(N1*L-1))/Fs1;                    % x-axis of xi1[n]
% k2=(0:(N2*L-1))/Fs2;                    % x-axis of xi2[n]
% K1=length(k1);
% K2=length(k2);
% 
% xf1=conv(xi1,ha,'same');                % xf1[n]=xi1[n]*ha[n]
% xf2=conv(xi2,ha,'same');                % xf2[n]=xi2[n]*ha[n]           
% 
% figure(1)                               % Waveform of xf1[n]
% stem(k1,xf1);
% xlabel('n');
% ylabel('xf1[n]');
% 
% figure(2)                               % Waveform of xf2[n]
% stem(k2,xf2);
% xlabel('n');
% ylabel('xf2[n]');



% % Q 7-3
% clc;
% clear;
% 
% fs=1000;
% wa=-pi:1/fs:pi;
% Wa=length(wa);
% M=5;
% Ha=1.*(-pi/M<=wa&wa<=pi/M);             % Ha(w)
% ha=abs(ifftshift(ifft(Ha)));            % IDFT of Ha(w)
% 
% [y1,Fs1]=audioread('Sample1.wav');
% [y2,Fs2]=audioread('Sample2.wav');
% N1=length(y1);                          % The number of samples in x1
% N2=length(y2);                          % The number of samples in x2
% 
% L=4;                                    % Gain=4
% xe1=zeros(1,N1*L);                      % xe1
% xe2=zeros(1,N2*L);                      % xe2
% 
% for i=0:N1-1                            % x1 Zero-padding
%     xe1(i*L+1)=y1(i+1);
% end
% 
% for j=0:N2-1                            % x2 Zero-padding
%     xe2(j*L+1)=y2(j+1);
% end
% 
% n1=(0:N1*L-1)/Fs1;                      % x-axis in xe1
% n2=(0:N2*L-1)/Fs2;                      % x-axis in xe2
% 
% fs=1000;
% w=-pi:1/fs:pi;
% W=length(w);
% L=4;
% H=L.*(-pi/L<=w&w<=pi/L);                % H(w)
% 
% hr=abs(ifftshift(ifft(H)));             % IDFT of H(w)
% n=(-W/2):((W/2)-1);                     % x-axis of hr[n]
% 
% w11=1.*(-11<=n&n<=11);                  % 11 points rectangular window
% hr11=w11.*hr;                           % hr11[n]=w11[n]*hr[n]
% 
% xi1=conv(xe1,hr11,'same');              % xi1[n]=xe1[n]*hr11[n]
% xi2=conv(xe2,hr11,'same');              % xi2[n]=xe2[n]*hr11[n]
% 
% k1=(0:(N1*L-1))/Fs1;                    % x-axis of xi1[n]
% k2=(0:(N2*L-1))/Fs2;                    % x-axis of xi2[n]
% K1=length(k1);
% K2=length(k2);
% 
% xf1=conv(xi1,ha,'same');                % xf1[n]=xi1[n]*ha[n]
% xf2=conv(xi2,ha,'same');                % xf2[n]=xi2[n]*ha[n]           
% 
% Xf1=abs(fftshift(fft(xf1)./K1));        % DFT of xf1[n]
% Xf2=abs(fftshift(fft(xf2)./K2));        % DFT of xf2[n]    
% 
% w1=2*pi*(-K1/2:K1/2-1)/K1;              % x-axis Xf1(w)
% w2=2*pi*(-K2/2:K2/2-1)/K2;              % x-axis Xf2(w)
% 
% figure(1)                               % Waveform of Xf1(w)
% plot(w1,Xf1);
% xlabel('w');
% ylabel('Xf1(w)');
% 
% figure(2)                               % Waveform of Xf2(w)
% plot(w2,Xf2);
% xlabel('w');
% ylabel('Xf2(w)');
