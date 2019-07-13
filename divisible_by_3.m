function y = divisible_by_3(x)
y = 0;
s=0;
for i = 1 : length(x)
    if (x(i) == '1' || x(i)=='4'|| x(i)=='7')
       s = s+1; 
       if s==3
           s=0;
       end
    end
    if (x(i) == '2' || x(i)=='5'|| x(i)=='8')
       s = s-1; 
       if s==-3
           s=0;
       end
    end
end
if     s==0
    y = 1;
end
end