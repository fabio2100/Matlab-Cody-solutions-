function y = diag_array(x)
len = length(x);
y = zeros(len);
for i = 1 : len
    y(i,i)=x(i);
end
end