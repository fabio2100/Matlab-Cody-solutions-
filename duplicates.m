function dups = duplicates(strs)
dups={};
if size(strs)==[0 0]
    dups={};
else
    p=nchoosek(strs,2);
    sizep=size(p);
    for i = 1:sizep(1)
        if size(unique(p(i,:)))==1
            dups=[dups p(i,1)];
        end
    end
    dups=unique(dups);
end
end

