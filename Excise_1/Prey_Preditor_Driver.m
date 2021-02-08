%Prey-Preditor Problem
clear;
close all;
clc;
a=1;
b=1;
x0=[2;2];
options=odeset('Jacobian',@JacPreyPreditor,'Reltol',1.0e-6,'AbsTol',1.0e-6);
[T,X]=ode15s(@PreyPreditor,[0 50],x0,options,a,b);
subplot(2,1,1)
plot(T,X(:,1))
subplot(2,1,2)
plot(T,X(:,2))
figure
plot(X(:,1),X(:,2))