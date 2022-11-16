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
K=ceil(Lx/L);
for i=Lx:K*L-1
    x(i+1)=0;
end
Y=zeros(K,N);
Y2=zeros(1,(K-1)*L+N);
for k=0:K-1
    Xk=[x(k*L+1:k*L+L),zeros(1,M)];
    Y(k+1, :)=(ifft(fft(Xk).*h));
    Y2(k*L+1:k*L+N)=Y2(k*L+1:k*L+N)+Y(k+1,:);
end
toc
