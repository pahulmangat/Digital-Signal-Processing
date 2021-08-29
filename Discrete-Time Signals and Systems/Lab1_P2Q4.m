load GOOG.mat

for i=3:1:length(GOOG)
    avg1=((1/3)*(GOOG(i)+GOOG(i-1)+GOOG(i-2)));
end

figure(1)
plot(GOOG);
hold on;
Num1=[1,1,1];
Dem1=[3,0,0];
[u1,~]=impz(Num1,Dem1);
output1=conv(u1,GOOG);
plot(output1);
hold on;
title('Method 1 Convolution');

avg2=zeros(length(GOOG),1)';
for j=2:1:length(GOOG)
    avg2(j)=((1/4)*GOOG(j))+(3/4)*(avg2(j-1));    
end

figure(2)
plot(GOOG);
hold on;
Num2=[1/4,0];
Dem2=[1,-3/4];
[u2,~]=impz(Num2,Dem2);
output2=conv(u2,GOOG);
plot(output2);
hold on;
title('Method 2 Convolution');

avg3=zeros(length(GOOG),1)';
for k=4:1:length(GOOG)
    avg3(k)=(1/3)*(GOOG(k)-GOOG(k-3))+avg3(k-1);    
end

figure(3)
plot(GOOG);
hold on;
Num3=[1/3,0,0,-1/3];
Dem3=[1,-1,0,0];
[u3,~]=impz(Num3,Dem3);
output3=conv(u3,GOOG);
plot(output3);
hold on;
title('Method 3 Convolution');
