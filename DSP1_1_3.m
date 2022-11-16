x1=[2 -1 1 1];
x2=zeros(1,60);
x=[x1 x2];
n=0:63;
Xk=fft(x);
subplot(211);
stem(n,abs(Xk),'filled');
xlabel('\Omega/\pi');
title('幅度');
axis tight;
subplot(212);
stem(n,angle(Xk),'filled');
xlabel('\Omega/\pi');
title('相位');
axis tight;