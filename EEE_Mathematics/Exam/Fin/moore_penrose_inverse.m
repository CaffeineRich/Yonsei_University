% m<=n
A = [2 1 -2 5;
     1 0 -3 2;
     3 -1 -13 5];
Am=A.'*inv(A*A.');

B=[2 1;
   1 0;
   3 -1];
C=[1 0 -3 2;
   0 1 4 1];

Bm=inv(B.'*B)*B.';
Cm=C.'*inv(C*C.');

U=inv(A*A.');
disp(Am);
disp(Bm);
disp(Cm);
disp(Cm*Bm);
