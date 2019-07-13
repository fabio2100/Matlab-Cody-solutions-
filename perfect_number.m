function y = perfect_number(x)
y=false;
divisores=1;
for i = 2 : x/2
    if mod(x,i)==0
        divisores=[divisores i];
    end
end
s = sum(divisores);
if s == x
    y=true;
end
end