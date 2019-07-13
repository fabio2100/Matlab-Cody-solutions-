function f = fibonacci(n)
f(1)=1;
f(2)=1;
for i = 3 : 1000
   f(i)=f(i-1)+f(i-2); 
end
f = f(n);
end