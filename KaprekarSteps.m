function y = KaprekarSteps(x)
s=num2str(x);
while length(s) < 4
    s=[s '0'];
end
n = x;
y=0;
while n~= 6174
    while length(s) < 4
        s=[s '0'];
    end
    minuendo = str2num(sort(s));
    sustraendo = str2num((sort(s,'descend')));
    n = sustraendo - minuendo;
    s=num2str(n);
    y=y+1;
    if y > 7
        y=Inf;
        break
    end
end
end