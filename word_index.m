function [word_table,str_index_list] = word_index(sl)
s1=strjoin(sl);
word_table=unique(regexpi(s1,' ','split'));
for i = 1 : length(sl)
 
end
str_index_list={};
end