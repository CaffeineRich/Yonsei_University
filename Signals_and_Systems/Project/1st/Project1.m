% Q 1-1
% t = -5:0.1:5;
% ta = t-2;
% tb = 3*t;
% x = 1.*(-0.5<=t&t<=0.5);
% y1 = 1.*(-0.5<=ta&ta<=0.5);
% y2 = 1.*(-0.5<=tb&tb<=0.5);
% figure(1)
% plot(t,x)
% figure(2)
% plot(t,y1);
% figure(3)
% plot(t,y2);



% Q 1-2
% t = -5:0.1:5;
% ta = -2*t;
% tb = -3*t+6;
% x = 1.*(0<=t);
% y1 = 1.*(0<=ta);
% y2 = 1.*(0<=tb);
% figure(1)
% plot(t,x)
% figure(2)
% plot(t,y1)
% figure(3)
% plot(t,y2)



% Q 2-2
% n = 0:1:30;
% T=0.1;
% x1 = 3*cos(2*pi*n/15);
% x2 = 5*sin(2*pi*n/20);
% figure(1)
% stem(n*T,x1)
% figure(2)
% stem(n*T,x2)



% Q 2-3
% T=0.1;
% y1=3.5;
% y2=3.1;
% figure(1)
% for n=0:30
%     y1=y1-3*3*cos(2*pi*(n)/15)+2*3*cos(2*pi*(n-1)/15);
%     stem(n*T,y1)
%     hold on
% end
% figure(2)
% for n=0:30
%     y2=y2-3*5*sin(2*pi*(n)/20)+2*5*sin(2*pi*(n-1)/20);
%     stem(n*T,y2)
%     hold on
% end



% Q 2-4
% T=0.1;
% y1=3.5;
% y2=3.1;
% y3=0;
% y4=6.6;
% figure(1)
% for n=0:30
%     y1=y1-3*3*cos(2*pi*(n)/15)+2*3*cos(2*pi*(n-1)/15);
%     y2=y2-3*5*sin(2*pi*(n)/20)+2*5*sin(2*pi*(n-1)/20);
%     y3=y1+y2;
%     stem(n*T,y3)
%     hold on
% end
% figure(2)
% for n=0:30
%     y4=y4-3*(3*cos(2*pi*(n)/15)+5*sin(2*pi*(n)/20))+2*(3*cos(2*pi*(n-1)/15)+5*sin(2*pi*(n-1)/20));
%     stem(n*T,y4)
%     hold on
% end



% Q 2-5
% T=0.1;
% y1=3.5;
% y5=0;
% y6=10.5;
% figure(1)
% for n=0:30
%     y1=y1-3*3*cos(2*pi*(n)/15)+2*3*cos(2*pi*(n-1)/15);
%     y5=3*y1;
%     stem(n*T,y5)
%     hold on
% end
% figure(2)
% for n=0:30
%     y6=y6-3*9*cos(2*pi*(n)/15)+2*9*cos(2*pi*(n-1)/15);
%     stem(n*T,y6)
%     hold on
% end



% Q 2-6
% T=0.1;
% y1=3.5;
% y2=3.1;
% y7=0;
% y8=2*3.5-3*3.1;
% figure(1)
% for n=0:30
%     y1=y1-3*3*cos(2*pi*(n)/15)+2*3*cos(2*pi*(n-1)/15);
%     y2=y2-3*5*sin(2*pi*(n)/20)+2*5*sin(2*pi*(n-1)/20);
%     y7=2*y1-3*y2;
%     stem(n*T,y7)
%     hold on
% end
% figure(2)
% for n=0:30
%     y8=y8-3*(2*3*cos(2*pi*(n)/15)-3*5*sin(2*pi*(n)/20))+2*(2*3*cos(2*pi*(n-1)/15)-3*5*sin(2*pi*(n-1)/20));
%     stem(n*T,y8)
%     hold on
% end



% Q 3-1
% t = -5:0.2:15;
% x1 = t.*(-2<=t&t<=2);
% x2=zeros(size(t));
% x2 = x2+(-t).*(0<=t&t<2);
% x2 = x2+(-2).*(2<=t&t<6);
% x2 = x2+(0.5*t-5).*(6<=t&t<=10);
% figure(1)
% stem(t,x1)
% figure(2)
% stem(t,x2)



% Q 3-2
%  t = -5:0.2:15;
%  y1=zeros(size(t));
%  y1=y1+((t+2).^2.*(-t/6+2/3)).*(-2<=t&t<0);
%  y1=y1+(-t.^2+2.*t+8/3).*(0<=t&t<2);
%  y1=y1+(t.^3/6-t.^2+16/3).*(2<=t&t<4);
%  y1=y1+(t.^3/12-1.5*t.^2+8.*t-40/3).*(4<=t&t<8);
%  y1=y1+(-t.^3/12+2.5.*t.^2-24.*t+72).*(8<=t&t<12);
%  figure(1)
%  stem(t,y1)



% Q 3-3
% t = -5:0.4:15;
% x3 = t.*(-2<=t&t<=2);
% x4=zeros(size(t));
% x4 = x4+(-t).*(0<=t&t<2);
% x4 = x4+(-2).*(2<=t&t<6);
% x4 = x4+(0.5*t-5).*(6<=t&t<=10);
% figure(1)
% stem(t,x3)
% figure(2)
% stem(t,x4)



% Q 3-4
% t = -5:0.4:15;
% y2=zeros(size(t));
% y2=y2+((t+2).^2.*(-t/6+2/3)).*(-2<=t&t<0);
% y2=y2+(-t.^2+2.*t+8/3).*(0<=t&t<2);
% y2=y2+(t.^3/6-t.^2+16/3).*(2<=t&t<4);
% y2=y2+(t.^3/12-1.5*t.^2+8.*t-40/3).*(4<=t&t<8);
% y2=y2+(-t.^3/12+2.5.*t.^2-24.*t+72).*(8<=t&t<12);
% figure(1)
% stem(t,y2)


