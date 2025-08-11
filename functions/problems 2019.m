Problem 2019. Dimensions of a rectangle
https://www.mathworks.com/matlabcentral/cody/groups/7/problems/2019-dimensions-of-a-rectangle/solutions/14730584

function [width, length] = findRectangleDimensions(x)
  width = sqrt(x^2/10);
  length = 3*width;
end
