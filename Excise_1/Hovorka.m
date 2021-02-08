function xdot=Hovorka(t,x,d,u,par)

G=x(5)/par.VG;
if(G>=4.5)
    F01c=par.F01;
else
    F01c=par.F01*G/4.5;
end

if(G>=9)
    FR=0.003*(G-9)*par.VG;
else
    FR=0;
end

xdot=zeros(10,1);
xdot(1)=par.AG*(1000*d/par.MwG)-x(1)/par.Td;
xdot(2)=x(1)/par.Td-x(2)/par.Td;
UG=x(2)/par.Td;
xdot(3)=u-x(3)/par.Ts;
xdot(4)=x(3)/par.Ts-x(4)/par.Ts;
UI=x(4)/par.Ts;
xdot(5)=UG-F01c-FR-x(8)*x(5)+par.k12*x(6)+par.EGP0*(1-x(10));
xdot(6)=x(8)*x(5)-par.k12*x(6)-x(9)*x(6);
xdot(7)=UI/par.VI-par.ke*x(7);
xdot(8)=-par.ka1*x(8)+par.kb1*x(7);
xdot(9)=-par.ka2*x(9)+par.kb2*x(7);
xdot(10)=-par.ka3*x(10)+par.kb3*x(7);