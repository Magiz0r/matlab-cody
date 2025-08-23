Problem 55420. Power Outages Histogram
https://www.mathworks.com/matlabcentral/cody/groups/54040/problems/55420-power-outages-histogram

function f = plotOutages(T)
    f = figure;
    regions = T.Region;
    categoricalRegions = categorical(regions);
    histogram(categoricalRegions);
    xtickangle(30);
    ylabel('Number of Outages');
    
    
end
