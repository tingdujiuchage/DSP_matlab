tic
N=512;
m=0:256;
h=cos(0.2*pi*m);
n=0:2048;
x=heaviside(n)-heaviside(n-2048);
Lx=length(x);
Lm=length(h);
M=Lm-1;
L=N-M;
h=fft(h,N);
K=floor((Lx+M-1)/L)+1;
z=(K)*L-Lx;
x1=[zeros(1,M),x,zeros(1,z)];
Y=zeros(K,N);
for k=0:K-1
Xk=fft(x1(k*L+1:k*L+N));
Y(k+1, :)=(ifft(Xk).*h);
end
Z=reshape(Y(:,M:N)',1,[]);
toc
