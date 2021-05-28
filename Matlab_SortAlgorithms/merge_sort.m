%{
    Author:Aaron Escoboza Villegas
    Date:September 10,2020
    Description:Function to perform merge sort algorithm 
    @Params
    @Input:Unordered array
    @Ouput:Ordered array
%}
function A = merge_sort(A,p,r)
    if p < r 
        q = floor((p + r) / 2);
        A = merge_sort(A,p,q);
        A = merge_sort(A,q + 1,r);
        A = merge(A,p,q,r);
    end
end
function A = merge(A,p,q,r)
    %Lengths of new arrays
    n1 = q - p + 1; 
    n2 = r - q; 
    %Filling the new arrays
    for i =1:n1 
        L(i) = A(p + i -1);
    end
    for j = 1:n2
        R(j) = A(q + j);
    end
    %Sentinels
    L(n1 + 1) = inf; 
    R(n2 + 1) = inf; 
    %Merge's core
    i = 1; 
    j = 1; 
    for k = p:r 
        if L(i) <= R(j)
            A(k) = L(i);
            i = i + 1; 
        else 
            A(k) = R(j); 
            j = j + 1;
        end
    end
end