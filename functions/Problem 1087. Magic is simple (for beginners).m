Problem 1087. Magic is simple (for beginners)
https://www.mathworks.com/matlabcentral/cody/groups/78/problems/1087-magic-is-simple-for-beginners/solutions/14741741

function m = magic_sum(n)
  m = sum(magic(n),"all")/n
end
