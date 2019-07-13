function b = matchPattern(a)
b=[];
p=diff(a(1,:));
for i = 1 : length(p)
    if p(i) > 0
        pat(i)=1;
    elseif p(i)==0
        pat(i)=0;
    else
        pat(i)=-1;
    end
end
sizea=size(a);
for i = 2 : sizea(1)
    pf=diff(a(i,:));
    for j = 1 : length(p)
        if pf(j) > 0
            patr(j)=1;
        elseif pf(j)==0
            patr(j)=0;
        else
            patr(j)=-1;
        end
    end
    if patr == pat
        b=[b i];
    end
end
end