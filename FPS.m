function [ b ] = FPS( x )
%Devuelve true si algún elemento del vector es un cuadrado perfecto
b='false';
for i=1:length(x)
    if mod(sqrt(x(i)),1) == 0
        b='true';
        break;
    end
end
end

