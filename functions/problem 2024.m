Problem 2024. Triangle sequence
https://www.mathworks.com/matlabcentral/cody/groups/7/problems/2024

function area = triangle_sequence(n)

    sequence = [9,16];
    for k = 1:n
        sequence(k+2) = sequence(k) + sequence(k+1);
    end
    area = sequence(end);



end
