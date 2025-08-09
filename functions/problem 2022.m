Problem 2022. Find a Pythagorean triple
https://www.mathworks.com/matlabcentral/cody/groups/7/problems/2022-find-a-pythagorean-triple/solutions/14729078

function flag = isTherePythagoreanTriple(a, b, c, d)


    order = [a,b,c,d]
    
    
    
    if order(1)^2 + order(2)^2 == round(order(3)^2)
        flag = true
    elseif order(1)^2 + order(2)^2 == order(4)^2
        flag = true
    elseif round(order(1)^2 + order(3)^2) == order(4)^2
        flag = true
    elseif order(2)^2 + order(3)^2 == order(4)^2
        flag = true
    else
        flag = false
    end
    flag

