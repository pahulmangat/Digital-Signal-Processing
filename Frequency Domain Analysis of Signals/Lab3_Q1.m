x = -0.5:0.1:0.5;
y = ones(1, length(x));

figure();
stem(x, y);

title('10Hz Signal Sampling');
xlabel('Time (s)');
ylabel('Amplitude (rad)');
