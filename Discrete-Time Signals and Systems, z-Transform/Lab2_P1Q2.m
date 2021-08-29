load GOOG.mat

weeklyprice = downsample(GOOG, 7,2);
figure(1);
plot(weeklyprice);
xlabel('Week');
ylabel('Price');
title('Weekly Price of GOOG');
