Problem 23. Finding Perfect Squares
https://www.mathworks.com/matlabcentral/cody/groups/78/problems/23-finding-perfect-squares/solutions/14731795

function b = isItSquared(a)

    a = a';
    num = ones(length(a),1);

    new_num = [];
    for k = 1:length(a)
        new_num = [(a(k)*num).*a(k) - a];
        if nnz(new_num) == length(a) - 1
            b = true;
            return
        else
            b = false;
        end
    end
    
end

