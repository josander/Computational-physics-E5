%% Plot data from E5

clc
clear all

% task 1
% load the data file
ampData = dlmread('amplitudeC2-e.data');
set(gcf,'renderer','painters','PaperPosition',[0 0 12 6]);

%%

%plot
figure(1);
clf
for t=1:length(ampData)
    plot(0:100,ampData(t,1:101),'r'); 
    axis([0 100 -0.25 0.25]);
    pause(0.001);
end

axis([0 1 0 1])

%% Powerspectrum

figure(2);
clf
fftData = abs(fft(ampData(:,50)));
powerData = fftshift(fftData.^2/(2*length(ampData)));

x = linspace(-1000,1000,length(powerData));

plot(x,powerData,'r');
hold on
xlim([-20 20]);
