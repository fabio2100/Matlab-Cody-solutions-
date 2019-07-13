function y = Armstrong(x)
y = false;
s=0;
g = num2str(x);
r = length(g);
for i = 1 : r
    s = s + str2num(g(i))^r;
end
if s == x
    y = true;
end
end