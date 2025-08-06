Problem 1024. Doubling elements in a vector
https://www.mathworks.com/matlabcentral/cody/groups/172/problems/1024?title=Doubling+elements+in+a+vector&url=%2Fmatlabcentral%2Fcody%2Fgroups%2F172%2Fproblems%2F1024-doubling-elements-in-a-vector

function B = your_fcn_name(A)
    B = []
    for k = 1:length(A)
        C = [A(k),A(k)]
        B = [B C]
    end
    B
end
