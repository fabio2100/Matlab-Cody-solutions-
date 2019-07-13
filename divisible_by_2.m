function tf = divisible_by_2(n_str)
if (n_str(end) == '2' || n_str(end)=='4'|| n_str(end)=='6'|| n_str(end)=='8'|| n_str(end)=='0') 
    tf=1;
else
    tf=0;
end
end