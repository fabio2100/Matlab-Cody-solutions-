function b = moneySum(a)
b=0;
for i = 1 :length(a)
    c=char(a(i));
    c=strrep(c,'$','')
    c=strrep(c,',','')
    c=strrep(c,'.','')
    c=str2num(c);
    b=b+c;
end
b=b/100;
end

