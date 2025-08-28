Problem 76. De-dupe
https://www.mathworks.com/matlabcentral/cody/groups/2/problems/76-de-dupe

function b = dedupe(a)
  b = unique(a,'stable');
end


function b = dedupe(a)
    
    b = []

    for i=1:numel(a)
        cur = a(i);
        if ~ismember(a(i),b)
            b = [b, cur]
        end
    end

end
