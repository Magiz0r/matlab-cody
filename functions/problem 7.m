Problem 7. Column Removal
https://www.mathworks.com/matlabcentral/cody/groups/78/problems/7-column-removal/solutions/14738704

function B = column_removal(A,n)

    col = length(A)
    B = A(:,[1:n-1,n+1:col])




end
