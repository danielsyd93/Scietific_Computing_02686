%Robertson’s Chemical Reaction Problem
clear;
close all;
clc;
alpha=0.04;
beta=1.0e+4;
gam=3.0e+7;
x0=[1,0,0]';
options=odeset('Reltol',1.0e-6,'AbsTol',1.0e-6);
[T,X]=ode15s(@RobertsonChemicalReaction,[0 100],x0,options,alpha,beta,gam);
subplot(3,1,1)
plot(T,X(:,1))
subplot(3,1,2)
plot(T,X(:,2))
subplot(3,1,3)
plot(T,X(:,3))
figure
plot(X(:,1),X(:,2))