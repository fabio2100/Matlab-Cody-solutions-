function [ b ] = sumadigitos( n )
%Eleva 2 a la n, y luego suma los dígitos del resultado
p=2^n;
r=num2str(p);
b=0;
for i=1:length(r)
    b=b+str2double(r(i));
end
end

