function y = armno(x)
s=num2str(x);
e=length(s);
for i = 1 : e
   p(i)=(str2num(s(i)))^e;
end
if sum(p) == x 
   y=1;
else
    y=0;
end
end