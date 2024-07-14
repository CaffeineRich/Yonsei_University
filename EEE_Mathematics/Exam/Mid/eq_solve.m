syms x

f=(x-9)*(x-13)^2-16*x+144-128*(x-13)+16*32;
disp(f)

s=solve(f==0,x)