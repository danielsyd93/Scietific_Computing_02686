%The Lorentz Problem
clear;
close all;
clc;
sigma=10;
rho=28;
beta=8/3;
eta=sqrt(rho*(beta-1));
xc=[rho-1, eta, eta]';
x0=xc+[0, 0, 3]';
options=odeset('Reltol',1.0e-6,'AbsTol',1.0e-6);
[T,X]=ode45(@TheLorentz,[0 30],x0,options,sigma,beta,rho);
subplot(2,1,1)
plot(T,X(:,1))
subplot(2,1,2)
plot(T,X(:,2))
figure
plot(X(:,1),X(:,2))