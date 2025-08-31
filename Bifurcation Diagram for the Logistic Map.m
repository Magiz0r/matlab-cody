Compute the bifurcation diagram for the logistic map.  The logistic map is given by
x_n+1 = mu*x_n*(1-x_n)
and the bifurcation diagram illustrates the behavior of the iterates of the map as a function of the parameter.  You are tasked with writing the computational engine for this code.  Here is a reasonable outline:
Loop 1 Start at mu = 2.4 and finish at mu = 4. 
  Set x = x_0
  Loop 2 Iterate logistic map a fixed number of times (transient)
   Compute x
  Loop 2 (end)
  Loop 3  Iterate logistic map a fixed number of times (data)
   Compute and save x
  Loop 3 (end)
Loop 1 (end)

Warning #1: The array x_data will be graded.  To pass the assessment, the indices and values in your x_data must match exactly the indices and values in my x_data.  That means you are required to start your map iteration at x=x_0 and then iterate the map exactly n_trans times.  You then start again at the last obtained value of x and iterate the map another n_data times.    The values of x you obtain from these second n_data iterations are to be stored in x_data and are then graded.  If your values in x_data do not exactly match mine, the grader will not pass you. 
Warning #2: You will need to write your iteration in the form x=mu*x*(1-x).  Roundoff errors and the butterfly effect for chaotic systems will prevent you from passing the assessment if you write the equation in a different form, such as x=mu* (x-x^2) or  x=x*(1-x)*mu.  You can try and compare the different results!


mu_min=2.4; mu_max=4; %range of mu values
n_mu=500; %number of mu pixels
n_x=400; %number of x pixels
mu_edges=linspace(mu_min,mu_max,n_mu+1); %edges of mu pixels
mu=(mu_edges(1:n_mu)+mu_edges(2:n_mu+1))/2; %values of mu on which to perform computation
x_edges=linspace(0,1,n_x+1); %edges of x pixels

n_trans=20000; %transient iterations
n_data=10000;  %number of x values per mu value

x_data=zeros(n_data,n_mu); %x-data used to construct figure

x_0=0.5; %initial condition

% WRITE THE COMPUTATIONAL ENGINE OF THE CODE.
% USE THE ALREADY DEFINED PARAMETERS AND VARIABLES: n_mu, mu, x_0, n_trans, n_data.
% YOUR FINAL RESULT WILL BE THE VARIABLE x_data, and this variable will be assessed.

for i = 1:n_mu % <--- 1. 遍历整数索引
    
    x = x_0; % <--- 4. 使用分号
    
    current_mu = mu(i); % <--- 获取当前的 mu 值
    
    % 瞬态迭代
    for j = 1:n_trans
        x = current_mu * x * (1 - x); % <--- 4. 使用分号
    end
    
    % 数据收集
    for j = 1:n_data
        x = current_mu * x * (1 - x);
        x_data(j, i) = x; % <--- 2 & 3. 使用整数索引 i 进行赋值
    end
end











%%%%% bin data and plot image %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x_histogram=zeros(n_x,n_mu); %binned values of x
for i=1:n_mu
x_histogram(:,i)=histcounts(x_data(:,i),x_edges);
x_histogram(:,i)=255*x_histogram(:,i)/max(x_histogram(:,i));
end
colormap(flipud(gray(256))); brighten(-0.8); cmap=colormap;
im=image([mu_edges(1) mu_edges(end)], [x_edges(1) x_edges(end)], x_histogram);
set(gca,'YDir','normal');
xlabel('$\mu$','Interpreter','latex','FontSize',14);
ylabel('$x\;\;$','Interpreter','latex','FontSize',14);
title('Logistic Map Bifurcation Diagram','Interpreter','latex','FontSize',16)
