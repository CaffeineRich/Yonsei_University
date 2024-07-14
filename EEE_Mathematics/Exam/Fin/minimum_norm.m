A = [1 1 1];
b=[1];

At=A.';
x=At*inv(A*At)*b;
disp(x);