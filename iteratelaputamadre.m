clear all 
close all 

fh=@(x)x^2
fg=fh;
n=3
for i = 1 : n-1
    fg=@(i)fh(fg(i));
end