fp=1000;
fs=1500;
Rp=1;
As=15;
f=10000;

%脉冲响应不变法
Wp=2*pi*fp;
Ws=2*pi*fs;
[N1,OmegaC1] = cheb1ord(Wp,Ws,Rp,As,'s');
[b1,a1]=cheby1(N1,Rp,Wp,'s');
[bz,az]=impinvar(b1,a1,f);
[H,w]=freqz(bz,az);                                                                                                                                          
subplot(221);
plot(w/2/pi,20*log10(abs(H)/max(abs(H))));
grid on;
axis tight;
xlabel('f(Hz)');
ylabel('|H(\Omega)|(dB)');
subplot(223);
plot(w/2/pi,angle(H));
grid on;
axis tight;
xlabel('f(Hz)');
ylabel('Phase of |H(\Omega)|(\pi)');


%双线性变换法
 
wp=2*pi*fp/f; ws=2*pi*fs/f; %转换为数字角频率技术指标
Wp=(2*f)*tan(wp/2);Ws =(2*f)*tan(ws/2); %将数字技术指标的反畸变为模拟指标
[N2,OmegaC2]=cheb1ord(Wp,Ws,Rp,As,'s');
[b2,a2]=cheby1(N2,Rp,Wp,'s');
[bz2,az2]=bilinear(b2,a2,f);
[H,w]=freqz(bz2,az2);  
subplot(222);
plot(w/2/pi,20*log10(abs(H)/max(abs(H))));
grid on;
axis tight;
xlabel('f(Hz)');
ylabel('|H(\Omega)|(dB)');
subplot(224);
plot(w/2/pi,angle(H));
grid on;
axis tight;
xlabel('f(Hz)');
ylabel('Phase of |H(\Omega)|(\pi)');

