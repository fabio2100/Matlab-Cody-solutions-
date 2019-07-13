function s2 = refcn(s1)
s=strrep(s1,'South','');
s=strrep(s,'North','');
s=strrep(s,'West','');
s2=strrep(s,'  ',' ');
t=regexpi(s2,'\w*a\>','split');
s2=strjoin(t,'');
end