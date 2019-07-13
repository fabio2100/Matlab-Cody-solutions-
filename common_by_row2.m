function y = common_by_row2 (x)
b=unique(x);
sizex=size(x);
y=[];
t=[];
for i = 1 : sizex(1)
    g=ismember(b,x(i,:));
    t=[t g];
end
r=sum(t');
for i = 1 : length(b)
    if r(i) == sizex(1)
        y=[y b(i)];
    end
end
end
