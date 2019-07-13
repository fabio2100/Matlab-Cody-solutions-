function y = euler005b(x)
pri=primes(x);
t=[];
s=0;
for i = 1 : length(pri)
   j=1;
    while s <= x
       s=pri(i)^j;
       j=j+1;
    end
    t=[t s/pri(i)];
    s=0;
end
y=prod(t);
end