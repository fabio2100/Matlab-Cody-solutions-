function [ S ] = FibSumSquares( n )
%Devuelve la suma de los cuadrados de los primeros n números de la serie de
%Fibonacci
f(1)=1;
f(2)=1;
for i=3:n
   f(i)=f(i-2)+f(i-1); 
end
r=f.^2;
S=sum(r);
end

