function tf = divisible_by_4(n_str)
tf = 0;
if (length(n_str) == 1 &&(n_str=='0'||n_str=='4'||n_str=='8'))
    tf = 1;
elseif (n_str(end-1)=='1'||n_str(end-1)=='3'||n_str(end-1)=='5'||n_str(end-1)=='7'||n_str(end-1)=='9')&&(n_str(end)=='2'||n_str(end)=='6')
    tf = 1;
elseif (n_str(end-1)=='0'||n_str(end-1)=='2'||n_str(end-1)=='4'||n_str(end-1)=='6'||n_str(end-1)=='8')&&(n_str(end)=='0'||n_str(end)=='4'||n_str(end)=='8')
    tf = 1;
end
end