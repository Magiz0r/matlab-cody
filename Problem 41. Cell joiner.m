Problem 41. Cell joiner
https://www.mathworks.com/matlabcentral/cody/groups/2/problems/41

function out_str = cellstr_joiner(in_cell, delim)
  out_str = cell2mat(join(in_cell, delim));
end
