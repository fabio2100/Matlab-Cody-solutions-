function [M] = MyVariations(v)
%Función que calcula las variaciones con repetición a partir un vector binario de dimensión n.


    if (((v*v') ~= 0) && ((v*v') ~= length(v))) %Sí el vector ingresado tiene, al menos, un 1 y un 0, entro; sino, devuelvo el vector (se comprueba mediante el producto escalar).
        M=de2bi(0:(2^(length(v)))-1);% M es la matriz que contendrá los números en binario desde el 0 hasta (2^(n)-1),
    else                             %siendo "n" la dimensión del vector.
        M=v;
    end

end