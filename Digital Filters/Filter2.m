% Predetermined values
XY=60;
j=sqrt(-1);
f_sampling = 400;
f_cutoff = 190-(XY/2);
r = 0.0001; % input value for r (trial and error)

w0=(2*pi*50)/f_sampling;
w1=(2*pi*f_cutoff)/f_sampling;

% Solving for b0 constant
Hw_num=(1-2*exp(-j*w1)+exp(-2*j*w1));
Hw_den=(1-2*r*cos(w0)*exp(-j*w1)+r^2*exp(-2*j*w1));
b0=0.85*(abs(Hw_den/abs(Hw_num)));

%Magnitude resposne plot
num=b0*[1 -2 1];
den=[1 -2*r*cos(w0) r^2];
fvtool(num, den);

%pole-zero plot
%pzmap(num, den);