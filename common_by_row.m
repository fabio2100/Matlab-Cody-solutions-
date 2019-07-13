function y = common_by_row(x)
sizex=size(x);
if mod(sizex(1),2)==1
    umb=(sizex(1)/2)+0.5;
else
    umb=(sizex(1)/2)+1;
end
c=[];
for i = 1 : sizex(1)
    b=unique(x(i,:));
    c=[c b];
end
r=unique(c);
y=[];
for i = 1 : length(r)
   g=numel(find(c==r(i)));
   if g >= umb
       y=[y r(i)];
   end
end
end
