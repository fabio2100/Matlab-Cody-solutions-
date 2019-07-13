function [ b ] = itissquared( a )
%Devuelve true si un elemento de a es raíz cuadrada de otro elemento de a
b=false;
r=sqrt(a);
for i=1:length(a)
    for j=1:length(a)
        if r(i) == a(j);
            b=true;
            break
        end
    end
end
end


