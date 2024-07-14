clc;
clear;

n=3;
R=50;
R_sh=50;
R_g=50*10^6;
V1=12;
V2=12;
V3=12;
V4=11.5;
V5=11.5;
V6=11.5;

Z_0=50;

y_s=1/R_g+1/(R+(1/((n-1)/R+1/R_sh)));
y_m=-1/(R+(1/((n-1)/R+1/R_sh)));
y_m1=(1/(n-1+R/R_sh))*(1/(R+(1/((n-1)/R+1/R_sh))));

Y_s=[y_s y_m1 y_m1;
    y_m1 y_s y_m1;
    y_m1 y_m1 y_s];

Y_m=[y_m -y_m1 -y_m1;
    -y_m1 y_m -y_m1;
    -y_m1 -y_m1 y_m];

Y_dc=[Y_s Y_m;
    Y_m Y_s];

S=inv(ones(6)+Z_0.*Y_dc)*(ones(6)-Z_0.*Y_dc);





