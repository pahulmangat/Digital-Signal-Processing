load GOOG.mat

for i=3:1:length(GOOG)
    avg1(i)=((1/3)*(GOOG(i)+GOOG(i-1)+GOOG(i-2)));    
end

figure(1)
plot(GOOG);
hold on;
plot(avg1);
hold on;
title('Method 1 Average');

avg2=zeros(length(GOOG),1)';
for j=2:1:length(GOOG)
    avg2(j)=((1/4)*GOOG(j))+(3/4)*(avg2(j-1));    
end

figure(2)
plot(GOOG);
hold on;
plot(avg2);
hold on;
title('Method 2 Average');


avg3=zeros(length(GOOG),1)';
for k=4:1:length(GOOG)
    avg3(k)=(1/3)*(GOOG(k)-GOOG(k-3))+avg3(k-1);    
end

figure(3)
plot(GOOG);
hold on;
plot(avg3);
hold on;
title('Method 3 Average');

figure(4)
plot(avg1);
hold on;
plot(avg2);
hold on;
plot(avg3);
hold on;
title('Method ... Average');
