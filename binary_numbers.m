function A = binary_numbers(n)
v=zeros(1,n);
v(1)=1;
if (((v*v') ~= 0) && ((v*v') ~= length(v))) %S� el vector ingresado tiene, al menos, un 1 y un 0, entro; sino, devuelvo el vector (se comprueba mediante el producto escalar).
    A=de2bi(0:(2^(length(v)))-1);% M es la matriz que contendr� los n�meros en binario desde el 0 hasta (2^(n)-1),
else                             %siendo "n" la dimensi�n del vector.
    A=v;
end
end
