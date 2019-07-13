function [ y ] = everyOther( x )
%Devuelve únicamente los elementos de posición impar del vector x
y=[];
for i = 1 : length (x)
    if mod(i,2)==1
        y=[y x(i)];
    end
end
end

