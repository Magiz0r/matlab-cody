Problem 52799. Plotting Practice
https://www.mathworks.com/matlabcentral/cody/groups/54040/problems/52799-plotting-practice/solutions/14730615

function y = your_fcn_name(x)
  figure
  plot(x,cos(x),"sr--","MarkerFaceColor","c","MarkerEdgeColor","m","MarkerSize",5);
  title("Cosine Signal");
  xlabel("Time (s)");
  ylabel("Amplitude (mV)");
  set(gca,"color","y");

  % Do not edit below here
  h = gca;
  y = {h.Title.String;h.XLabel.String;h.YLabel.String;h.Color;h.Children.YData;h.Children.XData;h.Children.Color;h.Children.MarkerFaceColor';h.Children.MarkerEdgeColor;h.Children.MarkerSize};
end
