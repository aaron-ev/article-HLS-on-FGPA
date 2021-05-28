%{
    Author:Aaron Escoboza Villegas
    Date:September 7,2020
    Description:Function to perform insertion sort algorithm 
    @Params
    @Input:Unordered array
    @Ouput:Ordered array
%}
function A = insertion_sort(A)
    for i = 2:length(A)
        key = A(i);
        j = i - 1; 
        while(j > 0 && A(j) > key)
            A(j + 1) = A(j);
            j = j - 1; 
        end
        A(j + 1) = key;
    end
end
    
    
    