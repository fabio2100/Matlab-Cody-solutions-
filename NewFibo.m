function y = NewFibo(x)
f(1)=1;
f(2)=1;
for i = 3 : 40
    f(i)=f(i-1)+f(i-2);
end
ny=[1];
for i = 1 : 40
    if ismember(i,f)
        ny=[ny f(i)];
    end
end
y=ny(x);
end