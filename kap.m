function tf = kap(x)
tf = false;
r = x^2;
s=num2str(r);
for i = 1 : length(s)-1
    v1=str2num(s(1:i));
    v2=str2num(s(i+1:end));
    res = v1 + v2;
    if res == x
        tf = true;
        break
    end
end
end
