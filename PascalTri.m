function [ y ] = PascalTri( n )
%Devuelve vector con los correspondientes valores del tri�ngulo de pascal
%para dicha fila

for i = 0 : n
    y(1+i)=nchoosek(n,i);
end
end

