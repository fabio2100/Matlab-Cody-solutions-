function [ c ] = collatz( n )
%El siguiente valor será 3*n+1 si es impar, o 2/n si es par;siempre termina
%en 1
c=n;
if c==1
else
    for i=1:inf
        if mod(c(i),2) == 1
            c(i+1)=3*c(i)+1;
        else
            c(i+1)=c(i)/2;
        end
        if c(i+1)==1
            break;
        end
    end
end

