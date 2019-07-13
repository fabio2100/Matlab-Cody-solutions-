function A = factoresdostrescinco(n)
A=[];
for i = 2 : n
    g=unique(factor(i));
    if ismember(2,g)
        g(1)=[];
    end
    if ismember(3,g)
        g(1)=[];
    end
    if ismember(5,g)
        g(1)=[];
    end
    if isempty(g)
        A=[A i];
    end
end
end