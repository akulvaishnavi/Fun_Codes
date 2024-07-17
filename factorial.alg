begin
    integer n, factorial, i;
    
    print("Enter a number: ");
    read(n);
    
    factorial := 1;
    
    for i := 1 step 1 until n do
        factorial := factorial * i;
        
    print("The factorial of ", n, " is ", factorial);
end
