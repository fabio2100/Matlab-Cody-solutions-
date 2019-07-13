function y = round_zero(x)
if x < 0
    y=-(floor(abs(x)));
else
    y=floor(x);
end
end