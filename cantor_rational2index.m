function [k]  = cantor_rational2index(p,q)
g = p+q;
s=0;
for i = 1 : g-2
    s=s+i;
end
k=s+q;
end