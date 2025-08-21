Problem 641. Make a random, non-repeating vector.
https://www.mathworks.com/matlabcentral/cody/groups/78/problems/641-make-a-random-non-repeating-vector/solutions/14741739

function vec = makeRandomOrdering(n)
  vec = randperm(n);
end
