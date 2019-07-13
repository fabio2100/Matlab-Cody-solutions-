function tf = isSmith(x)
tf = false;
if x>0
    if mod(x,1) == 0
        if (isprime(x)~=1 )
            s=0;
            s1 = num2str(x);
            for i = 1 : length(s1)
                s=s+(str2num(s1(i)));
            end
            
            fac = factor(x);
            s2 = num2str(fac);
            sum2=0;
            for i = 1 : length(s2)
                g=(str2num(s2(i)));
                if  isempty(g)~=1
                    sum2=sum2+g;
                end
            end
            if s == sum2
                tf=true;
            end
        end
    end
end
end