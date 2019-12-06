clear;clc;
x=-5:0.01:5;
y1=fpnet(x,1,0,1);
y2=fpnet(x,1,0,2);
y3=fpnet(x,1,0,3);
plot(x,y1,x,y2,x,y3);
title('Transfer Function of Neural Network');
legend('Log Sigmoid','Tangent Sigmoid','Hard Limiter');