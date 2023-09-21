% Q3 - (a)
% MontePi.m
% It generates random points within a unit square and counts how many fall inside
% a quarter circle inscribed within that square. The ratio of points inside the 
% circle to the total number of points is used to approximate pi.
% Inputs:
%   - n: The number of random points to generate.
% Outputs:
%   - piApprox: The estimated value of pi based on the Monte Carlo simulation.
%   - absError: The absolute error between the estimated value of pi and the true value.
%   - relError: The relative error between the estimated value of pi and the true value,
%               expressed as a fraction of the true value.
%   - insideCirclePoints: A matrix containing coordinates (x,y) for points that fall
%                         inside the quarter circle inscribed within unit square.
%   - outsideCirclePoints: A matrix containing coordinates (x,y) for points that fall
%                          outside or on the boundary of quarter circle inscribed within 
%                          unit square.
function [piApprox, absError, relError, insideCirclePoints, outsideCirclePoints] = MontePi(n)
    % Initialize counter and point arrays
    insideCircleCount = 0;
    insideCirclePoints = zeros(n,2);
    outsideCirclePoints = zeros(n,2);
    
    % Generate random points and count how many fall inside the circle
    for i = 1:n
        x = rand();
        y = rand();
        
        if x^2 + y^2 < 1
            insideCircleCount = insideCircleCount + 1;
            insideCirclePoints(i,:) = [x,y];
        else
            outsideCirclePoints(i,:) = [x,y];
        end
    end
    
    % Compute pi approximation and errors
    piApprox = 4 * insideCircleCount / n;
    absError = abs(pi - piApprox);
    relError = abs(pi - piApprox) / pi;

   % remove zero rows from point matrices 
   insideCirclePoints( ~any(insideCirclePoints,2), : )=[];
   outsideCirclePoints( ~any(outsideCirclePoints,2), : )=[];
end

