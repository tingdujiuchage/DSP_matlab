N = 33; 
alpha = (N-1)/2; 
l = 0:N-1; 
wl = (2*pi/N)*l;
Hrs = [zeros(1,10),0.1095,0.598,ones(1,10),0.598, 0.1095, zeros(1, 9)];
Hdr = [0,0,1,1]; 
wdl = [0,0.65,0.65,1];
k1 = 0 : floor((N-1)/2);
k2 = floor((N-1)/2)+1:N-1;
angH = [-alpha*(2*pi)/N*k1, alpha*(2*pi)/N*(N-k2)];
H = Hrs.*exp(j*angH);
h = ifft(H,N);
w = [0:500]*pi/500;
[H, w] = freqz(h,1,w);
Hr = abs(H);
subplot(221);
plot(wdl,Hdr,wl(1:17)/pi,Hrs(1:17),'o');
axis([0, 1, -0.1, 1.1]);
xlabel('\omega(\pi)');
ylabel('Hr(k)');
subplot(222);
stem(l,h,'filled');
axis([0, N - 1, -0.1, 0.3]);
xlabel('n');
ylabel('h(n)');
subplot(223); 
plot(w/pi,Hr,wl(1:17)/pi,Hrs(1:17),'o');
axis([0, 1, -0.2, 1.2]);
xlabel('\omega(\pi)');
ylabel('Hr(\omega)');
subplot(224); 
plot(w/pi,20*log10((abs(H)/max(abs(H)))));
axis([0, 1, -50, 5]);
xlabel('\omega(\pi)'); ylabel('dB');
