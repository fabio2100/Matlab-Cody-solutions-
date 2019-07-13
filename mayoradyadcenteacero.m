function [ maxf ] = mayoradyadcenteacero( x )
%Devuelve el mayor número adyadcente a cero
r=ones(1,length(x));
rinv=r;
r(end)=x(end)*(x(end)-1);
for i=1:(length(x)-1)
    r(i)=x(i)*x(i+1);
end
for i=length(x):-1:2
    rinv(i)=x(i)*x(i-1);
end
r2=r.*rinv;
v=find(r2==0);
f=x(v);
f2=f(f~=0);
maxf=max(f2);
end

