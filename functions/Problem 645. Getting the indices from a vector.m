Problem 645. Getting the indices from a vector
https://www.mathworks.com/matlabcentral/cody/groups/78/problems/645-getting-the-indices-from-a-vector/solutions/14739870

function out = findIndices(vec, thresh)
  out = [];
for k = 1:length(vec)
    if thresh < vec(k)
        out(k) = 1;
    else
        out(k) = 0;
    end
end
out = find(out)

end
