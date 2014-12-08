%% Plot data from E4

clc
clear all

% task 1
% load the data file
distData = importdata('distribution.data');
set(gcf,'renderer','painters','PaperPosition',[0 0 12 6]);
Size = size(distData);

%plot
figure(1);
clf
subplot(2,2,1)
hist(distData(:,1));
title('Uniform','fontsize',12);

%plot
subplot(2,2,2)
hist(distData(:,2));
title('Uniform','fontsize',12);

%plot
subplot(2,2,3)
hist(distData(:,3));
title('Gauss','fontsize',12);

%plot
subplot(2,2,4)
hist(distData(:,4));
title('Gauss','fontsize',12);

%% Task 2

clc 
clear all

% load data file
data = importdata('trajectory.data');

% plot data
figure(2);
clf
plot(data);
xlabel('Time','fontsize',12);
title('Trajectory','fontsize',12);

%% Plot powerspectrum
% load the data file
data = importdata('fft.data');

%plot
figure(3);
plot(1000*data(:,1),data(:,2),'-');

% labels
xlabel('Frequency [GHz]','fontsize',12);
ylabel('Amplitude','fontsize',12);
title('Powerspectrum of the trajectory','fontsize',12);

% axis limits
xlim([-150,150]);

%% Corr func

corrData = importdata('corrfunc.data');

figure(4);
plot(corrData);
