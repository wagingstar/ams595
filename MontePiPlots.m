% Q3 - (b)
% MontePiPlots.m
% This MATLAB function uses the MontePi function to estimate pi for different values of n 
% and then plots both execution time and absolute error as a function of n. 
% It also generates a scatter plot of points inside and outside the inscribed quarter circle 
% for the last value of n.
% Inputs:
%   - None directly. However, you can modify values of n within code (nValues array).
% Outputs:
%   - None directly. However, it generates three plots: a scatter plot showing random points 
%     inside/outside quarter circle (for last value of 'n'), a plot showing execution time vs 'n',
%     and another plot showing absolute error vs 'n'.
function MontePiPlots()
   nValues = [1000,10000]; % Set the values of n you want to use
   
   executionTimes = zeros(size(nValues));
   absErrors = zeros(size(nValues));
   
   for i = 1:length(nValues)
       n = nValues(i);
       
       temp = 0;
       tic; 
       [piApprox, absError ,~,insidePts,outsidePts]  = MontePi(n); 
       executionTimes(i) = toc+temp;

       absErrors(i) = absError;
       
       if i == length(nValues)  
           figure;
           plot(insidePts(:,1),insidePts(:,2),'b.','MarkerSize',5); hold on; % Using hold as we learned in class
           plot(outsidePts(:,1),outsidePts(:,2),'r.','MarkerSize',5); hold off;

           title(['\pi Approximation: ', num2str(piApprox)]);
           xlabel('x');
           ylabel('y');
           legend('Inside Circle','Outside Circle');
           
       end
        
   end
   
     figure; 
     plot(nValues ,executionTimes ); 
     xlabel('n'); ylabel('Execution Time'); title('Execution Time vs. Number of Points');
     
     figure;
     plot(nValues ,absErrors ); 
     xlabel('n'); ylabel('Absolute Error'); title('Absolute Error vs. Number of Points');

end
