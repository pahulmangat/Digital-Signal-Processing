F=4;
Fs=1000;
t=0:1/Fs:1;
y=sin(2*pi*F*t);

plot(t,y);
xlabel('Time (s)');
ylabel('Signal Value');
title('Signal Value vs. Time');
