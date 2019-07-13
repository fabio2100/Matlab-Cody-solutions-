function y = euler003(x)
t = x;
g=1;
while g==1
   if isprime(t)
       if mod(x,t)==0
           y = t;
           g=0;
       end
   end
   t=t-1
end
end