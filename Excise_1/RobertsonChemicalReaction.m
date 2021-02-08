function xdot=RobertsonChemicalReaction(t,x,alpha,beta,gam)

xdot=zeros(3,1);
xdot(1)=-alpha*x(1)+beta*x(2)*x(3);
xdot(2)=alpha*x(1)-beta*x(2)*x(3)-gam*x(2)*x(2);
xdot(3)=gam*x(2)*x(2);