Hz = 20;
t = 0:1/Hz:4;
x = zeros(1, length(t));

for n = 1:1:length(t)
    x(n) = sin(n*0.1*3.14);
end

xW = Lab3_Q4(x, 0.01);