function output = r_xx(x,p)
N = length(x);
for i=1:p
     n=1:1:N-i;
     a=x(n+i).*conj(x(n));
     output(i,1)=mean(a);
end
end