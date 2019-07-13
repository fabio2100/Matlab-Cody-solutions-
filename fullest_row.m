function r = fullest_row(a)
b=a==0;
c=sum(b');
r=find(c==min(c));
sizea=size(a);
if sizea(2) == 1
   r=find(a~=0); 
end
end

