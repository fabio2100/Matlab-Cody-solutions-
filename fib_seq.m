function y = fib_seq(N)
y(1)=1;
y(2)=1;
while y(end) < N
   y=[y y(end)+y(end-1)];
end
y(end)=[];
end