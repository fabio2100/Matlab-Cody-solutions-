function [ out ] = meanOfPrimes( in )
%Devuelve la media de los números primos que componen una matriz
t=in(isprime(in));
out=mean(t);
end

