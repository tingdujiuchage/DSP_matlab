n=0:20;
x=0.15*sin(2*pi*n)+sin(2*pi*2*n)-0.1*sin(2*pi*3*n);
Xk=fft(x);
stem(n,abs(Xk),'filled');
xlabel('\Omega');
title('幅度');

