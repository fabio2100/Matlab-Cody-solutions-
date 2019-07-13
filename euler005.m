function prod = euler005(x)
r2=[];
for i = 2 : x 
    fi = factor(i);
    uniquefi=unique(fi);
    for j = 1 : length(uniquefi);
       vecesfi(j)=length(find(fi == uniquefi(j))); 
    end
    r=[uniquefi;vecesfi];
    clear vecesfi
    r2=[r2 r];
end
v = (r2(1,:));
omega = r2(2,:);
m = unique(v);
t=[];
prod=[];
for i = 1 : length(m)
    for j = 1 : length(v)
       if v(j) == m(i)
          t=[t r2(2,j)]; 
       end
       g = max(t);
       prod=[prod m(i)^g];
    end
end
end