function s = harmonicSum(a,d,n)
s=0;
for i = 0 : n-1
    s=s+1/(1+i*d);
end
s=s*a;
end