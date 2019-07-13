function tf = divisible_by_6(n_str)
tf = 0;
if (n_str(end)=='2'||n_str(end)=='4'||n_str(end)=='6'||n_str(end)=='8'||n_str(end)=='0')
    s = 0;
    for i = 1 : length(n_str)
        if (n_str(i) == '1' || n_str(i)=='4'|| n_str(i)=='7')
            s = s+1;
            if s==3
                s=0;
            end
        end
        if (n_str(i) == '2' || n_str(i)=='5'|| n_str(i)=='8')
            s = s-1;
            if s==-3
                s=0;
            end
        end
    end
    if     s==0
        tf = 1;
    end
end
end