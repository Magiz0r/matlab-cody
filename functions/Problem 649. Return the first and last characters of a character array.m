Problem 649. Return the first and last characters of a character array
https://www.mathworks.com/matlabcentral/cody/groups/78/problems/649-return-the-first-and-last-characters-of-a-character-array/solutions/14740446

function y = stringfirstandlast(x)
  y = '';
    if x(1) ~= x(end)
        y(1) = x(1);
        y(2) = x(end);
    else
        y(1) = x(1);
        y(2) = y(1);
    end
end
