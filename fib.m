function [ f ] = fib( n )
    n1(1)=1;
    n1(2)=1;
    for i=3:30
       n1(i)=n1(i-2)+n1(i-1); 
    end
    f=n1(n);
end

