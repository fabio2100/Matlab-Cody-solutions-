function out_str = cellstr_joinerm(in_cell, delim)
  s1=strjoin(in_cell);
  out_str=strrep(s1,' ',delim);
end