function Jac=JacVanDerPol(t,x,mu)

Jac=zeros(2,2);
Jac(2,1)=-2*mu*x(1)*x(2)-1;
Jac(1,2)=1.0;
Jac(2,2)=mu*(1-x(1)*x(1));

