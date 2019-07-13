function tf = isPangram(s)
s=lower(s);
s=unique(s);
if strcmp(s,' abcdefghijklmnopqrstuvwxyz') == 1
    tf=true;
else
    tf=false;
end
end

