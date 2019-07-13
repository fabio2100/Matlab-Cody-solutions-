function [ y ] = fliplrdos( x )
%Devuelve el vector invertido sin usar fliplr
l=length(x);
for i = 1 : l
    y(i)=x(l-i+1);
end
end

