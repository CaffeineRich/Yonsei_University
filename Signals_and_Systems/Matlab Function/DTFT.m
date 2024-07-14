function X=DTFT(x,omega)
    N=length(x);
    n=0:N-1;
    w=exp(-1j*(omega.'*n));
    X=w*transpose(x);
    X=transpose(X);
end