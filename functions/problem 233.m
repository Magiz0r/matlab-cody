Problem 233. Reverse the vector
https://www.mathworks.com/matlabcentral/cody/groups/78/problems/233-reverse-the-vector/solutions/14736393

function y = reverseVector(x)
    conc = ischar(x);

    if conc == 1
        y = reverse(x);
    else
        y = sort(x,'descend');
    end
end
