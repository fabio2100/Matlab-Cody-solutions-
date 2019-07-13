function [ y ] = PascalTri( n )
%Devuelve vector con los correspondientes valores del triángulo de pascal
%para dicha fila

for i = 0 : n
    y(1+i)=nchoosek(n,i);
end
end

