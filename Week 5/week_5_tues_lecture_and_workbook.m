%% 1. Finding differences in spike counts across attented and unattended stimulus conditions.
% load data
load('fr_all.m')
num_cells=size(fr_all,2);
% dimensions: 
% 1 - attended (1) and unattended (2) color
% 2 - channels
% 3 - time (the stimulus onset is at 250 points).

% plot averaged spike counts for attended and unattended conditions.
fig = figure;
plot(); 
hold on
plot();
title()
xlabel()
ylabel()
legend({''}, {''})
saveas(fig,'')


% compare statistically
%[h,p] = ttest(sample1, sample2)

% find maximum. Is it higher in conditon 1 or 2 on average? 
max()

% when is the variance among the cells smallest in time?

%errorbar(number of x-axes points, [mean curves], [variance curves]);



%% 2. testing if the strength of spike counts in two conditions are correlated. 
fig = figure(2);
%[h,p] = corr(sample1, sample2, 'rows', 'pairwise')
%scatter(sample1, sampole2, 'filled', 'm');

%add a trend line

%p = polyfit(sample1, samlpe2, 1);
%px = [min(sample1) max(sample1)];
%py = polyval(p, px);
hold on
plot(px, py, 'LineWidth', 1.2,'Color', 'b');
saveas(fig, '')
