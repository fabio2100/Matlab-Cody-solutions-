function tf = isExtraSafe (x)
tf = false;
if isprime(x)
    g=(x-1)/2;
    if mod(g,1)==0
        if isprime(g)
            h=(g-1)/2;
            if mod(h,1)==0
                if isprime(h)
                    tf=true;
                end
            end
        end
    end
end
end