%The Brusselator Problem
clear;
close all;
clc;
A=1;
B=3;
x0=[0,0]';
options=odeset('Reltol',1.0e-6,'AbsTol',1.0e-6);
[T,X]=ode45(@TheBrusselator,[0 100],x0,options,A,B);
subplot(2,1,1)
plot(T,X(:,1))
subplot(2,1,2)
plot(T,X(:,2))
figure
plot(X(:,1),X(:,2))