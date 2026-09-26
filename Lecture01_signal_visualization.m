%% Lecture01_signal_visualization.m
% Signal Creation, Visualization, and Analysis Assignment

clear;
close all;
clc;

%% Global Settings
fs = 1000;              % Sampling frequency (1000 samples per second)
t = 0:1/fs:1;           % Time vector: 0 to 1 second

%% Task 1: Create a Sine Wave
A1 = 1;                 % Amplitude
f1 = 5;                 % Frequency = 5 Hz
y1 = A1 * sin(2 * pi * f1 * t);

figure('Name', 'Task 1: Basic Sine Wave');
plot(t, y1, 'LineWidth', 1.5);
title('Task 1: 5 Hz Sine Wave (Amplitude = 1)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

%% Task 2: Compare Different Frequencies
f_low = 2;              % 2 Hz
f_mid = 5;              % 5 Hz
f_high = 10;            % 10 Hz

y_2Hz = sin(2 * pi * f_low * t);
y_5Hz = sin(2 * pi * f_mid * t);
y_10Hz = sin(2 * pi * f_high * t);

fig_freq = figure('Name', 'Task 2: Frequency Comparison');

subplot(3, 1, 1);
plot(t, y_2Hz, 'LineWidth', 1.2, 'Color', 'b');
title('2 Hz Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 2);
plot(t, y_5Hz, 'LineWidth', 1.2, 'Color', 'g');
title('5 Hz Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 3);
plot(t, y_10Hz, 'LineWidth', 1.2, 'Color', 'm');
title('10 Hz Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

%% Task 3: Compare Different Amplitudes
f_base = 5;             % Shared frequency for comparison (5 Hz)
A_low = 0.5;
A_mid = 1.0;
A_high = 2.0;

y_amp05 = A_low * sin(2 * pi * f_base * t);
y_amp10 = A_mid * sin(2 * pi * f_base * t);
y_amp20 = A_high * sin(2 * pi * f_base * t);

fig_amp = figure('Name', 'Task 3: Amplitude Comparison');

subplot(3, 1, 1);
plot(t, y_amp05, 'LineWidth', 1.2, 'Color', 'b');
title('Amplitude = 0.5 (5 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-2.5 2.5]);
grid on;

subplot(3, 1, 2);
plot(t, y_amp10, 'LineWidth', 1.2, 'Color', 'r');
title('Amplitude = 1.0 (5 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-2.5 2.5]);
grid on;

subplot(3, 1, 3);
plot(t, y_amp20, 'LineWidth', 1.2, 'Color', 'k');
title('Amplitude = 2.0 (5 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-2.5 2.5]);
grid on;

%% Task 4: Add Noise
f_clean = 5;
y_clean = sin(2 * pi * f_clean * t);

% Add zero-mean Gaussian white noise (standard deviation = 0.4)
noise = 0.4 * randn(size(t));
y_noisy = y_clean + noise;

fig_noise = figure('Name', 'Task 4: Clean vs Noisy Signal');

subplot(2, 1, 1);
plot(t, y_clean, 'LineWidth', 1.5, 'Color', 'b');
title('Clean 5 Hz Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
plot(t, y_noisy, 'LineWidth', 1, 'Color', [0.85 0.33 0.1]);
title('Noisy 5 Hz Sine Wave (Added Gaussian Noise)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

%% Task 5: Save Figures
saveas(fig_freq, 'frequency_comparison.png');
saveas(fig_amp, 'amplitude_comparison.png');
saveas(fig_noise, 'clean_vs_noisy_signal.png');

disp('All tasks executed and figures saved successfully.');