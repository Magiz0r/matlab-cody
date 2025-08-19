Problem 33. Create times-tables
https://www.mathworks.com/matlabcentral/cody/groups/78/problems/33-create-times-tables/solutions/14740441

function m = timestables(n)
    a = [1:n]
    m = [a]
    for k = 2:n

        m(k,:) = m(k-1,:) + m(1,:);

    end
end
