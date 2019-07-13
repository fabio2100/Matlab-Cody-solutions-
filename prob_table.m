function p = prob_table(x)
m=max(x);
p=[];
for i = 1 : m
    t = find(i == x);
    if isempty(t)
        p=[p 0];
    else
        r = length(t) / length(x);
        p=[p r];
    end
end
end