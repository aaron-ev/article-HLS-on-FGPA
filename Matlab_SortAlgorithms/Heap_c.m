%{
    Author:Aaron Escoboza Villegas
    Date:September 7,2020
    Description:Class of heap 
%}
classdef Heap_c
    properties 
        A; %Array 
        heap_size; 
        len;
    end
    methods 
        function obj = Heap_c(A)
            obj.A = A; 
            obj.len = length(A);
        end
    end
end