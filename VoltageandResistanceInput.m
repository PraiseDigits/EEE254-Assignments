
try
  
    V = input('Enter voltage (V): ');
    R = input('Enter resistance (Ohms): ');
    
    
    if R == 0
        error('Resistance cannot be zero. Division by zero is undefined.');
    end

 
    I = V / R;
    fprintf('The current is %.2f A\n', I);

catch ME
 
    disp('⚠️ Error encountered:');
    disp(ME.message);
    disp('Please check your input and try again.');
end