function tf = divisible_by_7(n_str)
tf = 0;
i = 0;
while length(n_str)>1
    nf = str2num(n_str(end))*2;
    nr = uint64(str2num(n_str(1:end-1)));
    if str2num(n_str(1:end-1))==Inf
        tf = 1;
        break
    end
    n_n = abs(nr - nf);
    n_str=num2str(n_n);
    i = i+1;
end
if (n_str == '7' || n_str=='0')
    tf = 1 ;
end
%% Anda pero para valores pequeños, quizás haya que probar otro método 
%dividir antes por 2,3 que se yo
% O ver testcase 10 11 12
end