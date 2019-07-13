function y = pfactors(x)
y=[];
for i = 2 : x-1 
    if mod(x,i)==0
        y = [y i];
    end
end
end