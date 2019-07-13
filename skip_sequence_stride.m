function stride = skip_sequence_stride(a)
stride = 0;
u = unique (a);
stoper = u(end) - u(1);
p=0;
for i = 1 : stoper 
   for j = 1 : i
        u2=u-j+1;
   end
end
end