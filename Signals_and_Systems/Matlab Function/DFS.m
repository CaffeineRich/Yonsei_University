function X=DFS(x)
    N=length(x);
    n=0:N-1;
    k=reshape(n,[N,1]);
    e=exp(-2j*pi*k*n/N);
    X=e*transpose(x);
    X=transpose(X);
end