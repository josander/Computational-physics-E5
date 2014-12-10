%% Plot data from E5

clc
clear all

% task 1
% load the data file
ampData = importdata('amplitude.data');
set(gcf,'renderer','painters','PaperPosition',[0 0 12 6]);

%%

%plot
figure(1);
clf
for t=5000:length(ampData)
    plot(0:100,ampData(t,1:101)); 
    axis([0 100 -0.25 0.25]);
    pause(0.001);
end







