%n
n=0:10;
x=exp(-0.1*n).*heaviside(n);
Xk=fft(x);
subplot(231)
stem(n,abs(Xk),'filled');
 
n=0:50;
x=exp(-0.1*n).*heaviside(n);
Xk=fft(x);
subplot(232)
stem(n,abs(Xk),'filled');
 
n=0:100;
x=exp(-0.1*n).*heaviside(n);
Xk=fft(x);
subplot(233)
stem(n,abs(Xk),'filled');
 
%length
n=0:100;
x=exp(-0.1*n).*(heaviside(n)-heaviside(n-50));
Xk=fft(x);
subplot(234)
stem(n,abs(Xk),'filled');
 
n=0:100;
x=exp(-0.1*n).*(heaviside(n)-heaviside(n-10));
Xk=fft(x);
subplot(235)
stem(n,abs(Xk),'filled');
 

