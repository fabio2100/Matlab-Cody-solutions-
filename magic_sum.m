function [ m ] = magic_sum( n )
x=1:n^2;
m=cumsum(x)/n;
m=m(end);
end

