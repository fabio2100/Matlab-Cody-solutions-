function flag = isTherePythagoreanTriple(a,b,c,d)
flag = false;
g=unique([a^2,b^2,c^2,d^2]);
m = nchoosek(g,3);
for i = 1 : 4
   if m(i,1) + m(i,2) == m(i,3)
       flag = true;
   end
end
end