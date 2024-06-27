%% line plots
x_data=[1:1:10];
y_data_1=[1 9 2 2 7 9 6 8 2 10];
plot(x_data,y_data_1)


%% 
% how do we add a second curve to this figure?
y_data_2=[-4 -2 -10 -1 -2 -9 -4 -7 -4 -6];
hold on;
plot(x_data,y_data_2,'LineWidth',2)

%% 
% vertical and horizontal lines
xline(3, 'green')
yline(-4, 'cyan')
xline(2, 'm--')


%% 
% plotting attributes
xlabel('X label','fontsize',14); 
ylabel('Y label (\mu \alpha V)','fontsize',14);
legend_names=legend('Data 1','Data 2','Location','best'); %%%% Selecting 'best' as location chooses suitable location for legend box automatically
title('Plotting two data','fontsize',14);
xlim([1 8])
ylim([-15 15])
box on; 
grid on;
set(gca,'fontsize',14)

%% Exercise 1
% You're a student taking an exam, and one of the questions asks you to
% find the intersection between the lines y1 = 4x - 2 and y2 = -0.5x + 7. You
% have access to Matlab. How can you do this in Matlab.

% First, need to define x and y for both lines


% Then, need to plot the lines and see where the intersection is.


%% Histogram

figure
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


%% Exercise 2
% You're now a TA for this class, and you're responsible for showing your 
% professor the distribution of grades that your students got on the last 
% exam. 

% Generate a random array named `grades` that consists of 24 integers 
% ranging from 0 to 100. 


% Plot a histogram of these values. 


% Add a title, label axes, and a vertical line in red showing the average 
% grade in the class.


%% Boxplot

figure
g1 = randi([-6 6], 1, 11)';
g2 = randi([-4 10], 1, 11)';
boxplot([g1,g2], 'Labels',{'mu = 5','mu = 6'})


%% Exercise 3

% You're now the professor of the class, and you're worried if your TA is doing a bad job
% answering questions in office hours. You want to compare the grades on the last exam to
% the grades for the previous 2 TAs of this class.

% Generate two more random arrays, named `grades_2` and `grades_3`, that each consist of 
% 20 integers ranging from 30 to 80. 


% Plot some boxplots to summarize the grades for each of the three TAs 
% (your figure should have the TAs on the x-axis, and one box per TA 
% to summarize their grades).



%% Scatter plot

fig2 = figure;
x = [1:10];
y1 = [1:2:20];
y2 = [3 7 8 2 3 0 8 10 1 2];
scatter(x, y2)

%% 
% saving the figure
saveas(fig2, fullfile(pwd, 'histogram.svg'))

%% Exercise 4

% You're a student in the class again, and you want to plot your last 5
% exam grades relative to your brother's last 5 exam grades to prove to
% your mom that you're the better child.

your_grades = [72 85 80 91 68];
brothers_grades = [73 81 79 85 70];

% Make a figure with 4 subplots, and use each subplot to compare your
% grades via a scatter plot, line plot, histogram, and boxplot.

figure

% Scatter plot: your grade vs your brother's grade
subplot(2, 2, 1)

% Line plot: two lines, one for you and one for your brother
subplot(2, 2, 2)

% Histogram: one histogram each for you and your brother, in different 
% colors on the same subplot
subplot(2, 2, 3)

% Boxplot: one box each for you and your brother
subplot(2, 2, 4)

