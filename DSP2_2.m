for i=1:2
L=input('L:');
n1=0:L;
M=input('M:');
n2=0:M;
x=heaviside(n1)-heaviside(n1-L);
h=cos(0.2*pi*n2);
tic
y=conv(x,h);
toc
n1=2;
if(n1<L+M+2)
    n1=n1*2;
end
tic
Xk=fft([x zeros(1,n1-L-1)],n1);
Hk=fft([h zeros(1,n1-M-1)],n1);
Yk=Xk.*Hk;
y=ifft(Yk);
toc

end
