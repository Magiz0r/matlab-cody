Problem 2023. Is this triangle right-angled?
https://www.mathworks.com/matlabcentral/cody/groups/7/problems/2023

function flag = isRightAngled(a,b,c)

    sides = [a,b,c]
    sorted = sort(sides)
    
    tol = 1e-9
    
    if abs(sorted(1)^2 + sorted(2)^2 - sorted(3)^2) < tol
        flag = true
    else
        flag = false
    end
    
    
    
    


end
