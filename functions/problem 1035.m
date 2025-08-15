Problem 1035. Generate a vector like 1,2,2,3,3,3,4,4,4,4
https://www.mathworks.com/matlabcentral/cody/groups/78/problems/1035-generate-a-vector-like-1-2-2-3-3-3-4-4-4-4/solutions/14736425

function ans = your_fcn_name(n)

    ans = 1;
    for k = 2:n
        ans = [ans k*ones(1, k)];
    end
    ans




end
