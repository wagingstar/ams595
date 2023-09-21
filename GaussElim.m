function x = GaussElim(A, b)
    % This function solves a system of linear equations using Gaussian elimination.
    % It takes two inputs: A and b.
    % Inputs:
    %   - A: The coefficient matrix of the linear system. It must be a square matrix.
    %   - b: The right-hand side vector of the linear system. Its length must be equal to
    %        the number of rows in matrix A.
    % Outputs:
    %   - x: The solution vector that satisfies Ax = b.
    % Check if A is a square matrix
    %
    if size(A, 1) ~= size(A, 2)
        error('Matrix A must be square.');
    end
    
    % Check if the dimensions of A and b are compatible
    if size(A, 1) ~= length(b)
        error('The dimensions of matrix A and vector b are not compatible.');
    end
    
    % Check if A is nonsingular (i.e., its determinant is not zero)
    if det(A) == 0
        error('Matrix A must be nonsingular.');
    end
    
    % Gaussian elimination
    Ab = [A b]; % Augmented matrix [A|b]
    
   for i = 1:size(Ab,1)-1 
       for j = i+1:size(Ab,1) 
           factor = Ab(j,i)/Ab(i,i);
           Ab(j,:) = Ab(j,:) - factor*Ab(i,:);
       end 
   end 

   x = zeros(size(b)); 
   
   x(end) = Ab(end,end)/Ab(end,end-1);
   
   for i = size(x)-1:-1:1 
       sum = 0;
       for j = i+2:size(x)
           sum = sum + Ab(i,j) * x(j);
       end 
       
      x(i) = (Ab(i,end)-sum) / Ab(i,i);  
      
   end

end

