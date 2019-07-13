function romStr = dec2rom(n)
m=[1000 900 500 400 100 90 50 40 10 9 5 4 1];
rom={'M' 'CM' 'D' 'CD' 'C' 'XC' 'L' 'XL' 'X' 'IX' 'V' 'IV' 'I'};
romStr='';
i=1;
while n ~= 0
    n=n-m(i);
    if n < 0
        n=n+m(i);
        i=i+1;
        continue
    end
    romStr=[romStr rom(i)];
end
if isempty(romStr)
else
    romStr=strjoin(romStr,'');
end
end