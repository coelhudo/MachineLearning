function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
	     %GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
  m = length(y); % number of training examples
  function [cost] = currentCost(currentTheta,Xj)
    cost = alpha * sum((X*currentTheta - y).*Xj) / m;
  end
  J_history = zeros(num_iters, 1);
  for iter = 1:num_iters

 % ====================== YOUR CODE HERE ======================
% Instructions: Perform a single gradient step on the parameter vector
%               theta. 
%
% Hint: While debugging, it can be useful to print out the values
%       of the cost function (computeCost) and gradient here.
%







	% ============================================================

			      % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);
    tempTheta1 = theta - currentCost(theta,X(:,1));
    tempTheta2 = theta - currentCost(theta,X(:,2));
    theta = [tempTheta1(1,1); tempTheta2(2,1)]
  end

end
