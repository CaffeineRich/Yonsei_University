function x3=conv1d(x1,x2)
    % convolution
    N1=length(x1);
    N2=length(x2);
    n=N1+N2;
    for i=1:n
        sum=0;
        for j=1:N1
            if((i-j)>=0&&(i-j)<=(N2-1))
                sum=sum+x1(j)*x2(i-j+1);
            else
                sum=sum+0;
            end
            x3(i)=sum;
        end
    end
end