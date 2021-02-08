%Van der Pol Problem
clear
close all
clc
mu=10;
x0=[2.0;0.0];
options=odeset('Jacobian',@JacVanDerPol,'Reltol',1.0e-6,'AbsTol',1.0e-6);
[T,X]=ode15s(@VanDerPol,[0 5*mu],x0,options,mu);
subplot(2,1,1)
plot(T,X(:,1))
subplot(2,1,2)
plot(T,X(:,2))
figure
plot(X(:,1),X(:,2))