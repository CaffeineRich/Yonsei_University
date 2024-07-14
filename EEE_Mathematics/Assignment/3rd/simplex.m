function [x,v]=simplex(c,A,b,v,options)
if nargin ~= 5
    options = [];
    if nargin ~= 4
        disp('Wrong number of arguments.');
        return;
    end
end
format compact;
options = foptions(options);
print = options(1);
n=length(c);
m=length(b);
cB=c(v(:));
r = c.'-cB.'*A;
cost = -cB.'*b;
tabl=[A b;r cost];
if print
    disp('Initial tableau:');
    disp(tabl);
end
while ones(1,n)*(r.' >= zeros(n,1)) ~= n
    if options(5) == 0
        [r_q,q] = min(r);
    else
        q=1;
        while r(q) >= 0
            q=q+1;
        end
    end
    min_ratio = inf;
    p=0;
    for i=1:m
        if tabl(i,q)>0
            if tabl(i,n+1)/tabl(i,q) < min_ratio
                min_ratio = tabl(i,n+1)/tabl(i,q);
                p = i;
            end
        end
    end
    if p == 0
        disp('Problem unbounded');
        break;
    end
    tabl=pivot(tabl,p,q);
    if print
        fprintf("\n");
        disp('Pivot point:');
        disp([p,q]);
        fprintf("\n");
        disp('New tableau:');
        disp(tabl);
    end
    v(p) = q;
    r = tabl(m+1,1:n);
end
x=zeros(n,1);
x(v(:))=tabl(1:m,n+1);
