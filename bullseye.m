function [ a ] = bullseye( n )
%Devuelve matriz de adentro hacia afuera
cont=1;
a=ones(n);
c=(n/2)+0.5;
for i=1:c-1
    cont=cont+1;
    a(c-i:c+i,c-i)=cont;
    a(c-i:c+i,c+i)=cont;
    a(c-i,c-i:c+i)=cont;
    a(c+i,c-i:c+i)=cont;
end
end

