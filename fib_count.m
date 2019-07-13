function [ y ] = fib_count( x )
%Cuenta la cantidad de números de Fibonacci que existen en el vector x
x=unique(x);
f(1)=1;
f(2)=1;
for i=3:1000
   f(i)=f(i-2)+f(i-1); 
end
y=sum(ismember(x,f));
end

