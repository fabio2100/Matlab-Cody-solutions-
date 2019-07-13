function [ y ] = cleanUp( x )
%Busca los valores menores que 0 y mayores que 10 y los reemplaza por NaN
y=x;
for i=1:length(x)
    if (x(i)<0 || x(i)>10)
        y(i)=NaN;
    end
end
end

