A = [2 1;
     3 1;
     4 1];
 
At=A.';
P=A*inv(At*A)*At;
disp(P);