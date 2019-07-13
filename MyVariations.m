function [M] = MyVariations(v)
%Funci�n que calcula las variaciones con repetici�n a partir un vector binario de dimensi�n n.


    if (((v*v') ~= 0) && ((v*v') ~= length(v))) %S� el vector ingresado tiene, al menos, un 1 y un 0, entro; sino, devuelvo el vector (se comprueba mediante el producto escalar).
        M=de2bi(0:(2^(length(v)))-1);% M es la matriz que contendr� los n�meros en binario desde el 0 hasta (2^(n)-1),
    else                             %siendo "n" la dimensi�n del vector.
        M=v;
    end

end