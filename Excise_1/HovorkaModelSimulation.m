function [Tx,G,I,X]=HovorkaModelSimulation(T,x0,d,u,par)
% HOVORKAMODELSIMULATION   Simulation using the Hovorka model
%
% Syntax: [Tx,G,I,X]=HovorkaModelSimulation(T,x0,U,D,par)
options = odeset('RelTol',1e-6,'AbsTol',1e-6);
nx = length(x0);
N = length(T);
Tx(1) = T(1);
X = x0';
for k=1:N-1
x = X(end,:)';
[Tk,Xk]=ode45(@Hovorka,[T(k) T(k+1)],x,options,d(:,k),u(:,k),par);
X  = [X; Xk(end,:)];
Tx = [Tx; Tk(end)];
end
G = X(:,5)/par.VG;
I = X(:,7);