function y = nine_Comp(x)
g = num2str(x);
r = length(g);
for i = 1 : r 
    g(i)='9'
end
h = str2num(g);
y = h-x;
end