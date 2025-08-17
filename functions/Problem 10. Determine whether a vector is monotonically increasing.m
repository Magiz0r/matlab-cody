Problem 10. Determine whether a vector is monotonically increasing
https://www.mathworks.com/matlabcentral/cody/groups/78/problems/10-determine-whether-a-vector-is-monotonically-increasing/solutions/14739093

function tf = mono_increase(x)
    tf = true;

    for k = 1:(length(x) - 1)
        if x(k+1) <= x(k)
            tf = false
        end
    end
end
