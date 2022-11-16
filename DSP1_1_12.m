%dtft
n=0:3;
x=[2 -1 1 1];
w=-pi:0.01*pi:pi;
X=x*exp(-1j*n'*w);
subplot(211);
plot(w,abs(X));
xlabel('\Omega/\pi');
title('幅度');
subplot(212);
plot(w,angle(X));
xlabel('\Omega/\pi');
title('相位');
%fft
Xk=fft(x);
subplot(211);
hold on;
stem(2*pi/4*n,abs(Xk),'filled');
axis tight
subplot(212);
hold on;
stem(2*pi/4*n,angle(Xk),'filled');
axis tight
