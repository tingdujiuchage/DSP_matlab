for i=1:7
L=input('L:');
n=0:L;
x=heaviside(n)-heaviside(n-L);
h=cos(0.2*pi*n);
tic
y=conv(x,h);
toc
n1=2;
if(n1<2*L+2)
    n1=n1*2;
end

tic
Xk=fft([x zeros(1,n1-L-1)],n1);
Hk=fft([h zeros(1,n1-L-1)],n1);
Yk=Xk.*Hk;
y=ifft(Yk);
toc

end
