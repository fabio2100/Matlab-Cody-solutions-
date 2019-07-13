function b = removeSpaces(a)
a=fliplr(a);
for i = 1 : length(a)
    if double(a(i)) ~= 32
        b=a(i:end);
        break
    end
end
a=fliplr(b);
for i = 1 : length(a)
    if double(a(i)) ~= 32
        b=a(i:end);
        break
    end
end
end