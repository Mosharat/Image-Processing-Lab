clc
x=3*sin(2*pi*(50/1000)*[0:39]);
subplot(2,2,1);
plot(x);
title('Sine Plot');
y=3*cos(2*pi*(50/1000)*[0:39]);
subplot(2,2,2);
plot(y);
title('Cosine Plot');


