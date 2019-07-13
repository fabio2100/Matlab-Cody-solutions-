function indice = running_product( s )
l=length(s);
t=s;
for i = 1 : 4
    t(l+i)='1';
end
for i = 1 : length(t)
    u(i)=str2num(t(i));
end
p1=0;
for i = 1 : l
    p=prod(u(i:i+4));
    if p > p1
        p1=p;
        indice=i;
    end
end
end


