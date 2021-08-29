F=4;
Fs100Hz=100;
t100Hz=0:1/Fs100Hz:1;
y100Hz=sin(2*pi*F*t100Hz);
stem(t100Hz,y100Hz);
hold on;

Fs25Hz=25;
t25Hz=0:1/Fs25Hz:1;
y25Hz=sin(2*pi*F*t25Hz);
stem(t25Hz,y25Hz);
hold on;

Fs15Hz=15;
t15Hz=0:1/Fs15Hz:1;
y15Hz=sin(2*pi*F*t15Hz);
stem(t15Hz,y15Hz);
hold on;

Fs10Hz=10;
t10Hz=0:1/Fs10Hz:1;
y10Hz=sin(2*pi*F*t10Hz);
stem(t10Hz,y10Hz);
hold on;

Fs6Hz=6;
t6Hz=0:1/Fs6Hz:1;
y6Hz=sin(2*pi*F*t6Hz);
stem(t6Hz,y6Hz);
hold on;

xlabel('Time (s)');
ylabel('Signal Value');
title('Signal Value vs. Time');
