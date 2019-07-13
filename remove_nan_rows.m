function [ B ] = remove_nan_rows( A )
B=A;
[fila,columna]=find(isnan(A));
B(fila,:)=[];
end

