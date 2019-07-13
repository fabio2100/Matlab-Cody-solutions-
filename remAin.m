function s2 = remAin(s1)
s2=strjoin(regexp(s1,'\<\w*ain\>','split'),'');
end

