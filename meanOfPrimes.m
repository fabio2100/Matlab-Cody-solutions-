function [ out ] = meanOfPrimes( in )
%Devuelve la media de los n�meros primos que componen una matriz
t=in(isprime(in));
out=mean(t);
end

