% Compute the Feigenbaum delta
% Store approximate values in the row vector delta for assessment, where length(delta)= num_doublings and 
% delta(2:num_doublings) are computed from the algorithm described in Lectures 21-23.
num_doublings=11; delta=zeros(1,num_doublings); delta(1)=5;
% Write your code here

m = zeros(1,num_doublings);
m(1)= 2; 
m(2)= 1 + sqrt(5); 
x0  = 1/2; 
xp0 = 0;
% setting the default conditions

for n = 2:num_doublings
    p = 2^n;
    m(n+1) = m(n) + (m(n) - m(n-1)) / delta(n-1); % m starts from n = 3, delta should start from n = 1
    % Loop 1, iteration for n and m
    
    for i = 1:10
        % Loop 2, iterate a fixed time for Loop 3
        
        for j = 1:p
            x = m(n+1) * x0 * (1 - x0);
            xp = x0 * (1 - x0) + m(n+1) * xp0 * (1 - 2 * x0);
            x0 = x;
            xp0 = xp;
        end
        % Loop 3, compute the x and x_prime
        
        t(i) = m(n+1) - (x - 1/2)/xp; % the initial try 
        m(n+1) = t(i);
    end
    
    delta(n) = (m(n) - m(n-1)) / (m(n+1) - m(n)); % equation for delta
end
  

% Output your results
fprintf('n        delta(n)\n');
for n=1:num_doublings
    fprintf('%2g %18.15f\n',n,delta(n));
end
