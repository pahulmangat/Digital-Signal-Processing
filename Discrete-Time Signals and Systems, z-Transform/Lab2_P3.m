plot=tf([1],[1 -2*0.99*cos((20)*0.01) (0.99^2)], 0.01, 'Variable','z^-1');
subplot(3,1,1);
pzmap(plot);
title('w_0=20');

plot=tf([1],[1 -2*0.99*cos((40)*0.01) (0.99^2)], 0.01, 'Variable','z^-1');
subplot(3,1,2);
pzmap(plot);
title('w_0=40');

plot=tf([1],[1 -2*0.99*cos((80)*0.01) (0.99^2)], 0.01, 'Variable','z^-1');
subplot(3,1,3);
pzmap(plot);
title('w_0=80');