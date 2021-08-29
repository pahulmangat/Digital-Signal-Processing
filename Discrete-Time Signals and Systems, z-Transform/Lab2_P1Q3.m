load GOOG.mat

weeklyprice = downsample(GOOG, 7,2);

dailyprice = upsample(weeklyprice, 7);
figure(1);
plot(dailyprice);
xlabel('Day');
ylabel('Price');
title('Daily Price of GOOG');
hold on;
plot(GOOG);