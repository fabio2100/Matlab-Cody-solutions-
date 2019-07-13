function y = cbase(x)
n=0;
while 5^n <= x
    n=n+1;
end
m=n-1;
j=1;
s=x;
y=[];
for i = m : -1 : 1
    y(j)=floor(s/5^m);
    s=s-y(j)*5^m;
    j=j+1;
end
y=[y mod(s,5)];
r=num2str(y);
p=strrep(r,' ','');
y=str2num(p);
end