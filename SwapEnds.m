function [ B ] = SwapEnds( A )
%Cambia la primer columna por la �ltima
B=A;
B(:,1)=A(:,end);
B(:,end)=A(:,1);
end

