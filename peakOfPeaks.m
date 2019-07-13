function pmax = peakOfPeaks(nmax)
pmax=[];
d=[];
for j = 1 : nmax
    c=j;
    if c==1
    else
        for i=1:inf
            if mod(c(i),2) == 1
                c(i+1)=3*c(i)+1;
            else
                c(i+1)=c(i)/2;
            end
            if c(i+1)==1
                d=[d,c];
                break;
            end
        end
    end
end
pmax=max(d);
end