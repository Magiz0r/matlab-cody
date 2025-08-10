If a rhombus has diagonals of length x and x+1, then what is the length of its side, y?
https://www.mathworks.com/matlabcentral/cody/groups/7/problems/2018-side-of-a-rhombus/solutions/14729776





function y = rhombus_side(x)
  y = sqrt((x/2)^2 + ((x+1)/2)^2);
end
