function tf = isBalanced(n)
tf = false;
str=num2str(n);
izq=0;der=0;
for i = 1 : floor(length(str)/2)
    izq=izq+str2num(str(i));
end
for i = round(length(str)/2)+1 : length(str)
    der=der+str2num(str(i));
end
if izq == der
    tf = true;
end
end