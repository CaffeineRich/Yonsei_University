function x3=fftconv(x1,x2)
    % fast convolution
    N1=length(x1);
    N2=length(x2);
    x1pad=[x1 zeros(1,N2-1)];
    x2pad=[x2 zeros(1,N1-1)];
    x3=ifft(fft(x1pad).*fft(x2pad));
end