% BaseConverter.m
%
% the range of 2 to 10. It takes three inputs: n, num, and m.
% Inputs:
%   - n: The base of the input number 'num'. Must be an integer between 2 and 10.
%   - num: The number to be converted. Input as a string to avoid confusion with digits > 9.
%   - m: The desired base for the output number. Must be an integer between 2 and 10.
% Outputs:
%   - None directly. However, the function displays the converted number in base-m format.
%
function BaseConverter()

    % Get user input
    n = input('Input 1: n = ');
    num = input('Input 2: ', 's'); % Get as string to avoid confusion with digits > 9
    m = input('Input 3: m = ');

    % Check if inputs are valid
    if (n < 2 || n > 10) || (m < 2 || m > 10)
        error('Invalid inputs! Please ensure that 2 <= n, m <= 10.')
    end

   % Convert from base-n to decimal 
   decNum=0; 
   for i=1:length(num)
       decNum=decNum+str2num(num(i))*(n^(length(num)-i));
   end
   
   
   % Convert from decimal to base-m 
   num_m=''; 
   
   while(decNum>0)
       remainder=mod(decNum,m); 
       decNum=floor(decNum/m);  
       
       num_m=[num2str(remainder),num_m]; 

   end
   
    
     fprintf('\nYour number in base %d is: %s\n', m, num_m);
en