clc;
clear;

R_n=50;
Z_s1=50;
Z_s2=500;
Z_s3=500;
Z_series=1000;
V_s1=12;
V_s2=12;
V_s3=12;
L=1e-6;

i_L=(R_n*Z_s2*V_s3+Z_s2*(R_n+Z_s3)*V_s1+(R_n*Z_s1+R_n*Z_s3+Z_s1*Z_s3)*V_s2)/(Z_s1*Z_s2*Z_s3+R_n^2*(Z_s1+Z_s2+Z_s3)+R_n*(Z_s1*Z_s2+Z_s1*Z_s3+2*Z_s2*Z_s3));
i_N=(R_n*Z_s3*V_s2-Z_s3*(R_n+Z_s2)*V_s1+(R_n*Z_s1+R_n*Z_s2+Z_s1*Z_s2)*V_s3)/(Z_s1*Z_s2*Z_s3+R_n^2*(Z_s1+Z_s2+Z_s3)+R_n*(Z_s1*Z_s2+Z_s1*Z_s3+2*Z_s2*Z_s3));

