%{
    Author:Aaron Escoboza Villegas
    Date:September 7,2020
    Description:Function to perform heap sort algorithm 
    @Params
    @Input:Unordered array
    @Ouput:Ordered array
%}
% A = Heap_c;
% A.A = [1 2 3]; 
% A.len = length(heap.A);
% A.heap_size = 10; 
% A = build_max_heap(A);
% A = max_heapify(A,1);

function A = heap_sort(A)
    A = build_max_heap(A);
    for i = A.len:-1:2
        temp = A.A(1); 
        A.A(1) = A.A(i);
        A.A(i) = temp; 
        A.heap_size = A.heap_size - 1;
        A = max_heapify(A,1); 
    end
end
%{
    Function name: build_max_heap
    @Input:Heap object A 
    @Ouput:An object of max heap
%}
function A = build_max_heap(A)
    A.heap_size = A.len;
    for i = (floor(A.len/2)):-1:1
        A = max_heapify(A,i); 
    end
end
%{
    Function name: max_heapify
    @Input:Heap object and index i  
    @Ouput:The same object applied max-heapify operation at index i
%}
function A = max_heapify(A,i)
    l = 2 * i; 
    r = (2 * i) + 1;
    if l <= A.heap_size && A.A(l) > A.A(i)
        largest = l; 
    else 
        largest = i; 
    end
    if r <= A.heap_size && A.A(r) > A.A(largest)
        largest = r;
    end
    if largest ~= i
        temp = A.A(i); 
        A.A(i) = A.A(largest);
        A.A(largest) = temp;
        max_heapify(A,largest);
    end
end