load GOOG.mat

hourlyprice_upsample = upsample(GOOG, 24);
figure(1);
plot(hourlyprice_upsample);
xlabel('Hour');
ylabel('Price');
title('Hourly Price of GOOG (Upsample)');

hourlyprice_interp = interp(GOOG, 24);
figure(2);
plot(hourlyprice_interp);
xlabel('Hour');
ylabel('Price');
title('Hourly Price of GOOG (Interp)');
