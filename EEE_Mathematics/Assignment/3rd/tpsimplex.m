function [x,v]=tpsimplex(c,A,b,options)
if nargin ~= 4
    options = [];
        if nargin ~= 3
        disp('Wrong number of arguments.');
        return;
    end
end
clc;
format compact;
options = foptions(options);
print = options(1);
n=length(c);
m=length(b);
if print
    fprintf("\n");
    disp('Phase 1');
end
v=n*ones(m,1);
for i=1:m
    v(i)=v(i)+i;
end
[x,v]=simplex([zeros(n,1);ones(m,1)],[A eye(m)],b,v,options);
if all(v<=n)
    if print
        fprintf("\n");
        disp('Phase 2');
        disp('Basic columns:')
        disp(v.')
    end
    Binv=inv(A(:,[v]));
    A=Binv*A;
    b=Binv*b;
    [x,v]=simplex(c,A,b,v,options);
    if print
        fprintf("\n");
        disp('Final solution:');
        disp(x.');
    end
else
    disp('Terminating: problem has no feasible solution.');
end