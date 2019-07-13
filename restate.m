function s2=restate(s1)
s3=strrep(s1,'North ','AA');
s3=strrep(s3,'South ','AA');
s3=strrep(s3,'West ','AA');
s3=strrep(s3,'New ','AA');
s3=strrep(s3,'Rhode ','AA');
s2=regexpi(s3,'AA\w*','Split');
s2=strjoin(s2,'');
end