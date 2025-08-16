Problem 19. Swap the first and last columns
https://www.mathworks.com/matlabcentral/cody/groups/78/problems/19-swap-the-first-and-last-columns/solutions/14738727

function B = swap_ends(A)
    sizeA = size(A);
    B = zeros(sizeA);
    for k = 1:sizeA(2)
        if k ~= 1 && k ~= sizeA(2)
            B(:,k) = A(:,k);
        elseif k == 1
            B(:,1) = A(:,sizeA(2));
        elseif k == sizeA(2)
            B(:,sizeA(2)) = A(:,1);
        end
    end
end
