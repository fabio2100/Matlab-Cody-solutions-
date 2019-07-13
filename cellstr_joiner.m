function out_str = cellstr_joiner(in_cell, delim)
out_str=regexprep([in_cell{:}],'*\w',delim)  
end
