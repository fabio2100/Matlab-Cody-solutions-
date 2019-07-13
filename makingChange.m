function b = makingChange(a)
v=100*[100 50 20 10 5 2 1 0.5 0.25 0.1 0.05 0.01];
b=zeros(1,length(v));
s=100*a;
i=1;
while length(b) >= i
    s=s-v(i);
    if s>0
        b(i)=b(i)+1;
    end
    if s==0
        b(i)=b(i)+1;
        break;
    end
    if s < 0
       s=s+v(i);
       i=i+1;
    end
end
end
