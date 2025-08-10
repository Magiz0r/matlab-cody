Problem 2023. Is this triangle right-angled?
https://www.mathworks.com/matlabcentral/cody/groups/7/problems/2023

function flag = isRightAngled(a,b,c)
         if a^2 + b^2 == c^2 
        flag = true
    elseif a^2 + c^2 == b^2 
        flag = true
    elseif b^2 + c^2 == a^2 
        flag = true
    else
        flag = false
    end

end
