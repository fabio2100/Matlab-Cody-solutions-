function fcn = iterate_fcn(fh,n)            %fh--> fn; n--> nro de iteraciones a realizar
fg=fh;

for i = 1 : n-1
    fg=@(i)fh(fg(i));
end

fcn = fg;
end

