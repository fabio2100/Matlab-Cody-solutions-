function [p1,p2] = goldbachconjeture( n )
%Devuelve para cada par n, cualquiera de dos números de goldbach que
%lo demuestren
p=primes(n);
r=[];
for i=1:length(p)
    for j=1:length(p)
        if sum(p(i)+p(j))==n
           [r]=[r;p(i) p(j)];
        end
    end
end
p1=r(1,1);
p2=r(1,2);
end

