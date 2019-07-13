function ind = subset_sum(v,n)
ind=[];
ind1=[];
for i = 1 : length(v)
    r=nchoosek(v,i);
    sizer=size(r);
    for j=1:sizer(1)
        g=sum(r(j,:));
        if g == n
            ind1=r(j,:);
        end
    end
end
if (isempty(ind1)==0)
    for k = 1 : length(ind1)
        t=find(ind1(k)==v);
        ind=[ind t];
    end
end
ind=unique(ind);
if isempty(ind)
    ind=[];
end
end
