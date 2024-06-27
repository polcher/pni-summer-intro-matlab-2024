%% line plots

x_data=[1:1:10];
y_data_1=[1 9 2 2 7 9 6 8 2 10];

plot(x_data,y_data_1)


%% 
% how do we add a second curve to this figure?
y_data_2=[-4 -2 -10 -1 -2 -9 -4 -7 -4 -6];

hold on;
line1 = plot(x_data,y_data_2,'LineWidth',2, 'Color', 'green');

%% 
% vertical and horizontal lines
xline(3, 'red')
yline(-4, 'cyan')
xline(2, 'm--')


%% 
% plotting attributes
xlabel('X label','fontsize',14); 
ylabel('Y label (\mu \alpha V)','fontsize',14);
legend(line1,'Data 2', 'Location','best'); %%%% Selecting 'best' as location chooses suitable location for legend box automatically
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
x = -10:1:10;

y1 = 4*x - 2;
y2 = -0.5*x + 7;

% Then, need to plot the lines and see where the intersection is.
figure
plot(x, y1)
hold on
plot(x, y2)
legend('y1', 'y2')
xlabel('x')

%% Histogram

figure
random_numbers=randn(100);
random_numbers2=randn(100);

histogram(random_numbers, 'NumBins', 10)
hold on
histogram(random_numbers2, 'NumBins', 10)

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
array = randi([0 100], 1, 24);

% Plot a histogram of these values. 
histogram(array, 'NumBins', 20)

% Add a title, label axes, and a vertical line in red showing the average 
% grade in the class.
title('Grades')
xlabel('grade')
ylabel('Count')
xline(mean(array), 'r', 'LineWidth', 3)


%% Boxplot

figure
g1 = randi([-6 6], 11, 1);
g2 = randi([-4 10], 11, 1);

boxplot([g1, g2], 'Labels',{'mu = 5','mu = 6'})


%% Exercise 3

% You're now the professor of the class, and you're worried if your TA is doing a bad job
% answering questions in office hours. You want to compare the grades on the last exam to
% the grades for the previous 2 TAs of this class.

% Generate two more random arrays, named `grades_2` and `grades_3`, that each consist of 
% 24 integers ranging from 30 to 80.
grades = randi([0 100], 24, 1);
grades2 = randi([30 80], 24, 1);
grades3 = randi([10 90], 24, 1);


% Plot some boxplots to summarize the grades for each of the three TAs 
% (your figure should have the TAs on the x-axis, and one box per TA 
% to summarize their grades).
boxplot([grades grades2 grades3])



%% Scatter plot

fig2 = figure;
x = [1:10];
y1 = [1:2:20];
y2 = [3 7 8 2 3 0 8 10 1 2];
scatter(x, y2)
hold on
scatter(x, y1)

%% 
% saving the figure
saveas(fig2, 'histogram.svg')

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
hold on
scatter(brothers_grades, your_grades)
xlabel("Brother's Grades")
ylabel("My Grades")
xlim([65 90])
ylim([65 95])
title("Scatter Plot")

% Line plot: two lines, one for you and one for your brother
subplot(2, 2, 2)
hold on
plot(your_grades) % Matlab makes x by default so you don't have to specify one here
plot(brothers_grades)
xlabel("Exam")
ylabel("Grade")
legend("My grades", "Brother's grades", 'Location', 'best')
title("Line plot")

% Histogram: one histogram each for you and your brother, in different 
% colors on the same subplot
subplot(2, 2, 3)
hold on
histogram(your_grades)
histogram(brothers_grades)
legend("My grades", "Brother's grades", 'Location', 'best')
xlabel('Grades')
ylabel('Count')
title("Histogram")

% Boxplot: one box each for you and your brother
subplot(2, 2, 4)
boxplot([your_grades' brothers_grades'], 'Labels', {'My grades', 'Brothers grades'}) % the ' operator transposes the array and turns it from a row vector to a column vector
ylabel("Grades")
title("Boxplot")
