function polite = Nth_polite(n)
r = 2;
i = 1 ;
while r < n
    r = r*2;
    i =i + 1;
end
polite = n + i+1;
end