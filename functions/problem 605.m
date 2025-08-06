Problem 605. Whether the input is vector?
https://www.mathworks.com/matlabcentral/cody/groups/172/problems/605?title=Whether+the+input+is+vector%3F&url=%2Fmatlabcentral%2Fcody%2Fgroups%2F172%2Fproblems%2F605-whether-the-input-is-vector

function y = checkvector(x)
    sizeX = size(x)
    if sizeX(1) == 1 | sizeX(2) == 1
        y = 1
    else
        y = 0
    end
    y
end
