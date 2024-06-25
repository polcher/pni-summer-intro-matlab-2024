%%%% week 4 lecture 7 script
clear
clc
close all


%% using break in while loop
a = 1;
 
while (a < 10 )
   disp(['value of a is :', num2str(a)]);
   a = a + 1;
      if( a > 5)
         break; % terminate the loop using break statement 
      end 
end



%% using break in for loop

for jj=1:10
    disp(['value of iteration is :', num2str(jj)])
    if jj>7
        break
    end
end

%% using break in for loop

sum_of_random_numbers=0;
for jj=1:100
    random_num=randi(5);
    sum_of_random_numbers=sum_of_random_numbers+random_num;
    disp(['for iteration ', num2str(jj), ' sum of random numbers is :', num2str(sum_of_random_numbers)])
    if sum_of_random_numbers>100
        break
    end
end

% Task 1: create a random array of integers (100 elements with a max 100).
% Use a for loop to sum previous element with the next one (cumulative sum). If the sum reaches
% 200, break out of the for loop. * Print at what iteration the looping
% stops.

%% using continue in for loop to skip iteration
for n = 1:50
    if rem(n,9)
        continue
    end
    disp(['Divisible by 9: ' num2str(n)])
end

%% using continue in for loop to skip iteration
array=[3 7 -1 NaN 15 NaN -19 NaN];

for i=1:size(array,2)
    if isnan(array(1,i))
        continue
    end
    disp(['The number is: ' num2str(array(i))])
end

% Task 2: we need to send weather forecast to London, Paris, Berlin, Barcelona and
% Athens. We have the temperature in F but they only understand C. The
% "sending" works through printing the name of the city and the corect
% temprerature in C. 

Ftemps = [50,68,75.2,80.6, 86];
CityNames = [{'London'}, {'Paris'}, {'Berlin'}, {'Barcelona'}, {'Athens'}];
% (°F − 32) × 5/9 = °C


% Task 2*: Paris has just informed us that they receive more precise estimates from
% a metheorological station close to them. We need to skip Paris. 
% For this you will need a function comparing strings - strcmp.


%% plotting in matlab
x_data=[1:1:10];
y_data_1=[1 9 2 2 7 9 6 8 2 10];
plot(x_data,y_data_1,'-sr','LineWidth',2)


% how to add a second curve to this figure?
y_data_2=[-4 -2 -10 -1 -2 -9 -4 -7 -4 -6];
hold on;
plot(x_data,y_data_2,'-sb','LineWidth',2)

% plotting attributes
xlabel('X label','fontsize',14); 
ylabel('Y label (\mu \alpha V)','fontsize',14);
legend_names=legend('Data 1','Data 2','Location','best'); %%%% Selecting 'best' as location clooses suitable location for legend box automatically
title('Plotting two data','fontsize',14);
xlim([2 8])
ylim([-15 15])
box on; 
grid on;
set(gca,'fontsize',14)


%%
%%% plotting a histogram

fig2 = figure;
random_numbers=randn(100);
histogram(random_numbers)

% plotting attributes
xlabel('X label','fontsize',14); 
ylabel('Y label (\mu \alpha V)','fontsize',14);
title('Plotting histogram','fontsize',14);
% xlim([2 8])
% ylim([-15 15])
box on; 
grid on;
set(gca,'fontsize',14)
% saving the figure
saveas(fig2, fullfile(pwd, 'histogram.svg'))


% Task 3: plot the temperatues in Celcius and Fahrenheit, add a legend and
% axes labels, title and correct the size of the plot (xlim, ylim)

%% example of wait for button press
close all
to_plot_data=randi([1,10],10,100);

x_axis=1:1:size(to_plot_data,2);

for i=1:size(to_plot_data,1)
    figure;
    plot(x_axis,to_plot_data(i,:),'-r')
    title(num2str(i))
    pause(1)
%     waitforbuttonpress
    close all
end

