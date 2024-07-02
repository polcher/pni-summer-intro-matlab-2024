%% 1. Finding differences in spike counts across attented and unattended stimulus conditions.
% load data

load('spike_count_attention.mat')
sc_all = fr_all; clear fr;
num_cells=size(fr_all,2);
% dimensions: 
% 1 - attended (1) and unattended (2) color
% 2 - channels
% 3 - time (the stimulus onset is at 250 points).

% plot averaged spike counts for attended and unattended conditions in time.
fig = figure;
mean_chan_sc = squeeze(mean(sc_all, 2));
plot(mean_chan_sc(:, 250:end)', 'LineWidth', 1.2)
title('Averaged (across channels) spike counts across attented and unattended stimulus conditions')
xlabel('time, ms')
ylabel('spike counts')
legend([{'attention'}, {'no attention'}])
saveas(fig,'sc_averaged.svg')


% compare statistically
[h,p] = ttest(mean(sc_all(1,:,250:end),3), mean(sc_all(2,:,250:end),3))

% find maximum. Is it higher in conditon 1 or 2 on average? 
max(mean(sc_all(1,:,250:end),2))
max(mean(sc_all(2,:,250:end),2))

% when is the variance among the cells smallest in time?

%errorbar(number of x-axes points, [mean curves], [variance curves]);



%% 2. testing if the strength of spike counts in two conditions are correlated. 
fig = figure(2);
[c,p] = corr(mean(sc_all(1,:,250:end),3)', mean(sc_all(2,:,250:end),3)', 'rows', 'pairwise')
sample1 = mean(sc_all(1,:,250:end),3)';
sample2 = mean(sc_all(2,:,250:end),3)';
scatter(sample1, sample2, 'filled', 'm');
xlabel('attention condition')
ylabel('no attention condition')
%add a trend line
hold on
p = polyfit(sample1, sample2, 1);
px = [min(sample1) max(sample1)];
py = polyval(p, px);
hold on
plot(px, py, 'LineWidth', 1.2,'Color', 'b');
saveas(fig, 'scatter_sc.svg')
