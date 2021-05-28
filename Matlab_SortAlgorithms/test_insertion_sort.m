clc,clear,close all;
N = 48;
figure(1)
for i = 1:100 
    A = randi([-100 100],1,N);
    tic
    insertion_sort(A);
    t_insertion(i) = toc;
    tic
    b = selection_sort(A); 
    t_selection(i) = toc;
    %Plotting
    plot(t_insertion,'b','LineWidth',1);hold on; 
    title('Insertion sort');xlabel('n');ylabel('Time');
    plot(t_selection,'c','LineWidth',1);hold on;
    legend('Insertion sort','Selection sort');
    pause(0.1);
end