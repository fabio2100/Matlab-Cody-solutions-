function y = nrosdeunos(x)
t = x(:);
g=[];
for i = 1:length(t)
    n=dec2bin(x(i));
    s=0;
    for j = 1 : length(n)
       s=s+str2num(n(j));
    end
    g=[g s];
end
sizex=size(x);
y = reshape(g,[sizex(1) sizex(2)]);
end