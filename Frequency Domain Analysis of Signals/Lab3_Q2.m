x = -0.5:0.1:0.5;
y = ones(1, length(x));
j = sqrt(-1);
w = -3.14:0.01:3.14;
Xw = zeros(1,length(w));

for n = 1:1:length(y)
    for m = 1:1:length(w)
        Xw(m) = y(n)*exp(n*w(m)*-j) + Xw(m);
    end
end

figure();
plot (w, abs(Xw));

title('Discrete-Time Fourier Transform Plot');
ylabel('Amplitude (rad)');
xlabel('Time (s)');
