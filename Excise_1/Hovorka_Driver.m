%Hovorka Problem
close all;
clear;
clc;
                            % Units
par.BW=70;                  % [kg]
par.MwG=180.1577;           % [g]/[mol]
par.k12=0.066;              % 1/[min]
par.ka1=0.006;              % 1/[min]
par.ka2=0.06;               % 1/[min]
par.ka3=0.03;               % 1/[min]
par.ke=0.138;               % 1/[min]
par.Td=40;                  % [min]
par.Ts=55;                  % [min]
par.AG=0.8;                 % 
par.kb1=51.2e-4*par.ka1;    % 1/[min]
par.kb2=8.2e-4*par.ka2;     % 1/[min]
par.kb3=520e-4*par.ka3;     % 1/[min]
par.VI=0.12;%*par.BW;       % [L]/[kg]
par.VG=0.16;%*par.BW;       % [L]/[kg]
par.EGP0=0.0161;%*par.BW;   % ([mmol]/[min])/[kg]
par.F01=0.0097;%*par.BW;    % ([mmol]/[min])/[kg]

x0=ones(10,1);%[0,0,3.6734e+2,3.6734e+2,55.9971,23.3565,5.7616,0.0295,0.0047,0.2996]';

xs=fsolve(@HovorkaWrap,x0,[],5,226.86,par);
T=0:5:48*60;
d=zeros(1,length(T));
d(T(:)==360)=25; 
d(T(:)==12*60)=25;
d(T(:)==18*60)=25;
d(T(:)==30*60)=25;
d(T(:)==36*60)=25;
d(T(:)==42*60)=0;
u=ones(1,length(T))*6.68;
u(T(:)==6*60)=210+6.68;
u(T(:)==12*60)=210+6.68;
u(T(:)==18*60)=210+6.68;
u(T(:)==30*60)=210+6.68;
u(T(:)==36*60)=210+6.68;
u(T(:)==42*60)=210+6.68;
[Tx,G,I,X]=HovorkaModelSimulation(T,xs,d,u,par);

