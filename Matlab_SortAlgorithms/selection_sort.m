%{
    Author:Aaron Escoboza Villegas
    Date:September 22,2020
    Description:Function to perform selection sort algorithm 
    @Params
    @Input:Unordered array
    @Ouput:Ordered array
%}
function A = selection_sort(A)
    for i = 1:length(A)-1
        min = A(i);
        index_min = i; 
        for j = (i+1):length(A)
            if A(j) < min 
                index_min = j;
                min = A(j);
            end
        end
        %Swap 
        temp = A(i); 
        A(i) = A(index_min); 
        A(index_min) = temp;
    end
end