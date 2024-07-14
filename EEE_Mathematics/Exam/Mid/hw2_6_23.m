% HW2 6.23

syms x [1 2];
f(x)=(x1 - x2)^4 + x1^2 - x2^2 - 2*x1 + 2*x2 + 1;
Df = [diff(f,x1),diff(f,x2)];
F= [diff(Df,x1);diff(Df,x2)];

% initial point
a=1;
b=1;


g=Df(a,b).';
H=F(a,b);

gradient = Df.';
hessian = F;

disp(gradient);
disp(hessian);
disp(g);
disp(H);