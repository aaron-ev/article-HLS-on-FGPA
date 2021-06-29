%{
    Author:Aaron Escoboza Villegas
    Date:September 10,2020
    Description:Test sort algorithms 
%}
clc,clear,close all;
N = 5;
for i = 1:100 
    A = randi([-100 100],1,N);
    A_obj = Heap_c([4 3 2 1])%Heap_c(A);
    tic
    insertion_sort(A);
    t_insertion(i) = toc;
    tic
    merge_sort(A,1,length(A));
    t_merge(i) = toc;
    tic
    heap_sort(A_obj);
    t_heap(i) = toc;
    tic
    b = selection_sort(A); 
    t_selection(i) = toc;
    %Plotting
    plot(t_insertion,'b','LineWidth',1);hold on; 
    plot(t_merge,'r','LineWidth',1);hold on; 
    plot(t_heap,'k','LineWidth',1);hold on; 
    plot(t_selection,'c','LineWidth',1);hold on; 
    title('Comparación de algoritmos de ordenamiento, N = 48');
    xlabel('Número de iteración'); 
    ylabel('Time(s)');
    legend('Insertion sort','Merge sort','Heap sort','Selection sort');
    pause(0.05);
end