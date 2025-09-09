Problem 29. Nearest Numbers
https://www.mathworks.com/matlabcentral/cody/groups/2/problems/29

function [index1, index2] = nearestNumbers(A)

    n = length(A);
    minDiff = inf;      
    index1 = 0;
    index2 = 0;
    
    for i = 1:n-1
        for j = i+1:n
            diff = abs(A(i) - A(j));
            if diff < minDiff
                minDiff = diff;
                index1 = i
                index2 = j
            end
        end
    end

end
