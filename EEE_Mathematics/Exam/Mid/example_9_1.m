% Example 9.1

syms x [1 4];
f(x)=(x1 + 10*x2)^2 + 5*(x3 - x4)^2 + (x2 - 2*x3)^4 + 10*(x1 - x4)^4;
Df = [diff(f,x1),diff(f,x2),diff(f,x3),diff(f,x4)];
F= [diff(Df,x1);diff(Df,x2);diff(Df,x3);diff(Df,x4)];
grad = Df.';
hessian = F;

% initial point
a=3;
b=-1;
c=0;
d=1;

g=grad(a,b,c,d);
H=F(a,b,c,d);

fprintf('grad\n')
disp(grad);
fprintf('hessian\n')
disp(hessian);
fprintf('g\n')
disp(g);
fprintf('H\n')
disp(H);