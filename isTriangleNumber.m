function y = isTriangleNumber(x)
y=[];
%Sucesión de triangulares
s=zeros(1,1000);
s(1)=1;
for j = 2 : 100000
    s(j)=s(j-1)+j;
end
y=ismember(x,s);
end