function y = right(sides)
y = false;
g=sort(sides);
if g(3)^2 == g(1)^2 + g(2)^2
    y=true;
end
end