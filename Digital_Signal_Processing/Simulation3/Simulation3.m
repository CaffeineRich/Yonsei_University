% % Q 1-3
% clc;
% clear;
% 
% [x,Fs]=audioread('x.wav');
% N=length(x);
% 
% % rxx[0]
% n=1:N;
% z=x(n).*conj(x(n));
% rxx_0=mean(z);
% 
% % AR(3)
% p_3=3;
% r_3=r_xx(x,p_3);
% R_3=zeros(p_3,p_3);
% for i=1:p_3
%     for j=1:p_3
%         k=abs(i-j);
%         if k==0
%             R_3(i,j)=rxx_0;
%         else
%             R_3(i,j)=r_3(k);
%         end
%     end
% end
% a_3=inv(R_3)*r_3;
% 
% % AR(7)
% p_7=7;
% r_7=r_xx(x,p_7);
% R_7=zeros(p_7,p_7);
% for i=1:p_7
%     for j=1:p_7
%         k=abs(i-j);
%         if k==0
%             R_7(i,j)=rxx_0;
%         else
%             R_7(i,j)=r_7(k);
%         end
%     end
% end
% a_7=inv(R_7)*r_7;
% 
% % AR(12)
% p_12=12;
% r_12=r_xx(x,p_12);
% R_12=zeros(p_12,p_12);
% for i=1:p_12
%     for j=1:p_12
%         k=abs(i-j);
%         if k==0
%             R_12(i,j)=rxx_0;
%         else
%             R_12(i,j)=r_12(k);
%         end
%     end
% end
% a_12=inv(R_12)*r_12;
% 
% disp(a_3)
% disp(a_7)
% disp(a_12)



% % Q 1-4
% clc;
% clear;
% 
% [x,Fs]=audioread('x.wav');
% N=length(x);
% 
% % rxx[0]
% n=1:N;
% z=x(n).*conj(x(n));
% rxx_0=mean(z);   
% 
% % AR(3)
% p_3=3;
% r_3=r_xx(x,p_3);
% R_3=zeros(p_3,p_3);
% for i=1:p_3
%     for j=1:p_3
%         k=abs(i-j);
%         if k==0
%             R_3(i,j)=rxx_0;
%         else
%             R_3(i,j)=r_3(k);
%         end
%     end
% end
% a_3=inv(R_3)*r_3;
% 
% b=1;
% Az_3=[1 a_3.'];
% [Aw_3,w_3]=freqz(b,Az_3,'whole',Fs);
% Aw_3=circshift(Aw_3,fix(Fs/2));
% 
% s_3=zeros(p_3,1);
% for i=1:p_3
%     s_3(i)=a_3(i).*r_3(i);
% end
% beta_3=rxx_0+sum(s_3);
% 
% P_3=beta_3.*(abs(Aw_3).^2);
% alpha_3=1.5;
% 
% figure(1)                        
% plot(w_3-pi,log(1+alpha_3.*P_3));
% xlabel('w');
% ylabel('log(1+PSD_3)');
% 
% % AR(7)
% p_7=7;
% r_7=r_xx(x,p_7);
% R_7=zeros(p_7,p_7);
% for i=1:p_7
%     for j=1:p_7
%         k=abs(i-j);
%         if k==0
%             R_7(i,j)=rxx_0;
%         else
%             R_7(i,j)=r_7(k);
%         end
%     end
% end
% a_7=inv(R_7)*r_7;
% 
% b=1;
% Az_7=[1 a_7.'];
% [Aw_7,w_7]=freqz(b,Az_7,'whole',Fs);
% Aw_7=circshift(Aw_7,fix(Fs/2));
% 
% s_7=zeros(p_7,1);
% for i=1:p_7
%     s_7(i)=a_7(i).*r_7(i);
% end
% beta_7=rxx_0+sum(s_7);
% 
% P_7=beta_7.*(abs(Aw_7).^2);
% alpha_7=1.5;
% 
% figure(2)                        
% plot(w_7-pi,log(1+alpha_7.*P_7));
% xlabel('w');
% ylabel('log(1+PSD_7)');
% 
% % AR(12)
% p_12=12;
% r_12=r_xx(x,p_12);
% R_12=zeros(p_12,p_12);
% for i=1:p_12
%     for j=1:p_12
%         k=abs(i-j);
%         if k==0
%             R_12(i,j)=rxx_0;
%         else
%             R_12(i,j)=r_12(k);
%         end
%     end
% end
% a_12=inv(R_12)*r_12;
% 
% b=1;
% Az_12=[1 a_12.'];
% [Aw_12,w_12]=freqz(b,Az_12,'whole',Fs);
% Aw_12=circshift(Aw_12,fix(Fs/2));
% 
% s_12=zeros(p_12,1);
% for i=1:p_12
%     s_12(i)=a_12(i).*r_12(i);
% end
% beta_12=rxx_0+sum(s_12);
% 
% P_12=beta_12.*(abs(Aw_12).^2);
% alpha_12=1;
% 
% figure(3)                        
% plot(w_12-pi,log(1+alpha_12.*P_12));
% xlabel('w');
% ylabel('log(1+PSD_1_2)');



% % Q 1-5-a
% clc;
% clear;
% 
% [x,Fs]=audioread('x.wav');
% N=length(x);
% 
% % rxx[0]
% n=1:N;
% z=x(n).*conj(x(n));
% rxx_0=mean(z);   
% 
% p_7=7;
% r_7=r_xx(x,p_7+1);
% rs_7=zeros(p_7,1);
% for i=1:p_7
%     rs_7(i)=r_7(i+1);
% end
% 
% R_7=zeros(p_7,p_7);
% for i=1:p_7
%     for j=1:p_7
%         k=abs(1+i-j);
%         if k==0
%             R_7(i,j)=rxx_0;
%         else
%             R_7(i,j)=r_7(k);
%         end
%     end
% end
% 
% a_7=inv(R_7)*rs_7;
% disp(a_7);



% % Q 1-5-b
% clc;
% clear;
% 
% [x,Fs]=audioread('x.wav');
% N=length(x);
% 
% % rxx[0]
% n=1:N;
% z=x(n).*conj(x(n));
% rxx_0=mean(z);   
% 
% p_7=7;
% r_7=r_xx(x,p_7+2);
% rs_7=zeros(p_7,1);
% for i=1:p_7
%     rs_7(i)=r_7(i+2);
% end
% 
% R_7=zeros(p_7,p_7);
% for i=1:p_7
%     for j=1:p_7
%         k=abs(2+i-j);
%         if k==0
%             R_7(i,j)=rxx_0;
%         else
%             R_7(i,j)=r_7(k);
%         end
%     end
% end
% 
% a_7=inv(R_7)*rs_7;
% disp(a_7);



% % Q 1-5-c
% clc;
% clear;
% 
% [x,Fs]=audioread('x.wav');
% N=length(x);
% 
% % rxx[0]
% n=1:N;
% z=x(n).*conj(x(n));
% rxx_0=mean(z);  
% 
% p_7=7;
% r_7=r_xx(x,2*p_7);
% R_ns=zeros(2*p_7,p_7);
% for i=1:2*p_7
%     for j=1:p_7
%         k=abs(i-j);
%         if k==0
%             R_ns(i,j)=rxx_0;
%         else
%             R_ns(i,j)=r_7(k);
%         end
%     end
% end
% 
% R_s=R_ns.'*R_ns;
% a=inv(R_s)*R_ns.'*r_7;
% disp(a);



% % Q 1-6
% clc;
% clear;
% 
% [x,Fs]=audioread('x.wav');
% N=length(x);
% 
% % rxx[0]
% n=1:N;
% z=x(n).*conj(x(n));
% rxx_0=mean(z);   
% 
% p_7=7;
% % a
% r_a=r_xx(x,p_7+1);
% rs_a=zeros(p_7,1);
% for i=1:p_7
%     rs_a(i)=r_a(i+1);
% end
% R_a=zeros(p_7,p_7);
% for i=1:p_7
%     for j=1:p_7
%         k=abs(1+i-j);
%         if k==0
%             R_a(i,j)=rxx_0;
%         else
%             R_a(i,j)=r_a(k);
%         end
%     end
% end
% a_a=inv(R_a)*rs_a;
% 
% b=1;
% Az_a=[1 a_a.'];
% [Aw_a,w_a]=freqz(b,Az_a,'whole',Fs);
% Aw_a=circshift(Aw_a,fix(Fs/2));
% 
% s_a=zeros(p_7,1);
% for i=1:p_7
%     s_a(i)=a_a(i).*r_a(i);
% end
% beta_a=rxx_0+sum(s_a);
% 
% P_a=beta_a.*(abs(Aw_a).^2);
% alpha_a=0.21;
% 
% figure(1)                        
% plot(w_a-pi,log(1+alpha_a.*P_a));
% xlabel('w');
% ylabel('log(1+PSD_a)');
% 
% % b
% r_b=r_xx(x,p_7+2);
% rs_b=zeros(p_7,1);
% for i=1:p_7
%     rs_b(i)=r_b(i+2);
% end
% R_b=zeros(p_7,p_7);
% for i=1:p_7
%     for j=1:p_7
%         k=abs(2+i-j);
%         if k==0
%             R_b(i,j)=rxx_0;
%         else
%             R_b(i,j)=r_b(k);
%         end
%     end
% end
% a_b=inv(R_b)*rs_b;
% 
% b=1;
% Az_b=[1 a_b.'];
% [Aw_b,w_b]=freqz(b,Az_b,'whole',Fs);
% Aw_b=circshift(Aw_b,fix(Fs/2));
% 
% s_b=zeros(p_7,1);
% for i=1:p_7
%     s_b(i)=a_b(i).*r_b(i);
% end
% beta_b=rxx_0+sum(s_b);
% 
% P_b=beta_b.*(abs(Aw_b).^2);
% alpha_b=0.16;
% 
% figure(2)
% plot(w_b-pi,log(1+alpha_b.*P_b));
% xlabel('w');
% ylabel('log(1+PSD_b)');
% 
% % c
% r_c=r_xx(x,2*p_7);
% R_ns=zeros(2*p_7,p_7);
% for i=1:2*p_7
%     for j=1:p_7
%         k=abs(i-j);
%         if k==0
%             R_ns(i,j)=rxx_0;
%         else
%             R_ns(i,j)=r_c(k);
%         end
%     end
% end
% R_s=R_ns.'*R_ns;
% a_c=inv(R_s)*R_ns.'*r_c;
% 
% b=1;
% Az_c=[1 a_c.'];
% [Aw_c,w_c]=freqz(b,Az_c,'whole',Fs);
% Aw_c=circshift(Aw_c,fix(Fs/2));
% 
% s_c=zeros(p_7,1);
% for i=1:p_7
%     s_c(i)=a_c(i).*r_c(i);
% end
% beta_c=rxx_0+sum(s_c);
% 
% P_c=beta_c.*(abs(Aw_c).^2);
% alpha_c=1.8;
% 
% figure(3)
% plot(w_c-pi,log(1+alpha_c.*P_c));
% xlabel('w');
% ylabel('log(1+PSD_c)');



% % Q 2
% clc;
% clear;
% 
% [x,Fs]=audioread('x.wav');
% N=length(x);
% X=abs(fftshift(fft(x)));
% w=2*pi*(-N/2:N/2-1)/N;
% 
% figure(1)
% plot(w,log(1+X.^2));
% xlabel('w');
% ylabel('log(1+|X(w)|^2)');
