A = [0.3 0.1;
     0.4 0.2;
     0.3 0.7];
b=[5;3;4];

At=A.';
x=inv(At*A)*At*b;
disp(x);