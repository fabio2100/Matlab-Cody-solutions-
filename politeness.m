function P = politeness(N)
g = factor(N);
v=[];
t=unique(g);
if mod(N,2)==1
    for i = 1:length(t)
        v(i)=length(find(t(i)==g))+1;
    end
    P = prod(v)-1;
else
   for i = 2 : length(t)
       v(i-1)=length(find(t(i)==g))+1;
   end
   P = prod(v)-1;
end
if N == 1 
    P=0;
end
end