function xdot=PreyPreditor(t,x,a,b)

xdot=zeros(2,1);
xdot(1)=a*(1-x(2))*x(1);
xdot(2)=-b*(1-x(1))*x(2);