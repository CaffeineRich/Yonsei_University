% Example 8.1

syms x [1 3];
f(x)=(x1 - 4)^4 + (x2 - 3)^2 + 4*(x3+5)^4;
Df = [diff(f,x1),diff(f,x2),diff(f,x3)];
grad=Df.';


% initial point
a=4;
b=2;
c=-1;

alpha=-10:0.0001:10;
g=grad(a,b,c);

dphi=f(a-alpha*g(1),b-alpha*g(2),c-alpha*g(3));
[min_val, min_ind]=min(dphi);
argmin=alpha(min_ind);


disp(grad);

disp(g);
fprintf('%f\n',argmin);
