function [ index1,index2 ] = nearestnumbers( x )
%Devuelve los índices de los dos números más cercanos
cont=0;
index1=1;
index2=2;
m=Inf;
for i=1:length(x)-1
    for j=i+1:length(x)
        cont=cont+1;
        r(cont)=abs(x(i)-x(j));
        if r(cont) < m
            m=r(cont);
            index1=i;
            index2=j;
        end
    end
end
end

