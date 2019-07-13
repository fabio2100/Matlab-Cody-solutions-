function y = leadingDigit(x)
t=num2str(x);
t=strrep(t,'.','');
t=strrep(t,'e-08','');
for i = 1 : length(t)
    if (((t(i)=='1')||(t(i)=='2')||(t(i)=='3')||(t(i)=='4')||(t(i)=='5')||(t(i)=='6')||(t(i)=='7')||(t(i)=='8')||(t(i)=='9')))
        r(i)=t(i);
    else
        r(i)='a';
    end
end
g=[];
if r(1)~='a'
    g=[r(1)];
end
for i = 2 : length(r)
    if (r(i-1)=='a' && r(i)~='a')
        g=[g r(i)];
    end
end
for i = 1 : length(g)
   y(i)=str2num(g(i));
end
