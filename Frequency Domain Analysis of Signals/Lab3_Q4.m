function Xw = Lab3_Q4(x, resolution)

    j = sqrt(-1);
    w = -3.14:0.01:3.14;
    Xw = zeros(1, length(w));

    for n = 1:1:length(x)
        for m = 1:1:length(w)
            Xw(m) = x(n)*exp(n*w(m)*-j) + Xw(m);
        end
    end

    figure();
    plot ((w/3.14)*10, abs(Xw));
    
    title('Discrete-Time Fourier Transform Plot');
    ylabel('Amplitude (rad)');
    xlabel('Time (s)');
    
end