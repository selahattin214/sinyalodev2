%sorular hepsi
%soru1 a sikki
clc
clear all
close all
fs = 100000;
f=100
t = 0:1/fs:7.5;
x1 = sawtooth(2*pi*f*t);
subplot(2,1,1)
plot(t,x1)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)''SELAHATTÝN TOSUNTAÞ')
ylabel('Amplitude') 
title('Sawtooth Periodic Wave')
grid on
%soru1 b sikki
clc
clear all
close all
fs = 1000000;
f=20
t = 0:1/fs:7.5;
x2 = square(2*pi*f*t);
subplot(2,1,2)
plot(t,x2)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)''SELAHATTÝN TOSUNTAÞ')
ylabel('Amplitude')
title('Square Periodic Wave')
grid on
%soru1 c sikki
clc
clear all
close all
fs = 100000;
t = -1:1/fs:7.5;
x1 = tripuls(t,100e-3);
subplot(2,1,1)
plot(t,x1)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)''SELAHATTÝN TOSUNTAÞ')
ylabel('Amplitude')
title('Triangular Aperiodic Pulse')
grid on
%soru1 d sikki
clc
clear all
close all
fs = 10000;
t = -1:1/fs:7.5;
x2 = rectpuls(t,50e-3);
subplot(2,1,2)
plot(t,x2)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)''SELAHATTÝN TOSUNTAÞ')
ylabel('Amplitude')
title('Rectangular Aperiodic Pulse')
%soru1 e sikki
clc
clear all
close all
fs=10000000
f=5000
tc = gauspuls('cutoff',50e3,0.5,[],-60); 
t1 = -tc : 1e-6 : tc; 
y1 = gauspuls(t1,50e3,0.5);
plot(t1*1e3,y1)
xlabel('Time (ms)''SELAHATTÝN TOSUNTAÞ')
ylabel('Amplitude')
title('Gaussian Pulse')
%soru1 f sikki
clc
clear all
close all
fs = 200e9;                    % sample freq
D = [2.5 10 17.5]' * 1e-9;     % pulse delay times
t = 0 : 1/fs : 2500/fs;        % signal evaluation time
w = 2e-9;                      % width of each pulse
yp = pulstran(t,D,@rectpuls,w);
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.8.^(0:10)]';
Y = pulstran(T,D,@gauspuls,10E3,.5);
plot(t*1e9,yp);
axis([0 25 -0.2 1.2])
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')
%soru1 g sikki
clc
clear all
close all
fs = 50e6;                    % sample freq
D = [2.5 10 17.5]' * 1e-3;     % pulse delay times
t = 0 : 1/fs : 2500/fs;        % signal evaluation time
w = 2e-9;                      % width of each pulse
yp = pulstran(t,D,@rectpuls,w);
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.8.^(0:10)]';
Y = pulstran(T,D,@gauspuls,10E3,.5);
plot(T*1e3,Y)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse Train')
%soru 3
clc
clear all
close all
fs=1000
f=20
t=0:1/fs:5
x1=sin(2*pi*f*t)
subplot(4,1,1)
plot(t,x1)
title('Sinüs')
x2=cos(2*pi*f*t)
subplot(4,1,2)
plot(t,x2)
title('Cosinüs')
N=-72:1:72
y2=sin(2*pi*N/36)
subplot(4,1,4)
stem(N,y2)
title('Sinüs')
xlabel('SELAHATTÝN TOSUNTAÞ')
N=-72:1:72
y1=cos(2*pi*N/36)
subplot(4,1,3)
stem(N,y1)
title('Cosinüs')
%soru 4
clc
clear all
close all
t=-10:1:10
result=t.*(t.^2+3)
g_even=(g(t)+g(-t))/2
g_odd=(g(t)-g(-t))/2
subplot(2,1,1)
plot(t,g_even)
title('even')
subplot(2,1,2)
plot(t,g_odd)
title('odd')
xlabel('SELAHATTÝN TOSUNTAÞ')
%soru 4 g.m
function result=g(t)
result=t;
end
%soru 5
clc
clear all
close all
N=50:1:100
x=(0.9.^abs(N)).*sin(2*pi*N/4)
sum(abs(x.^2))
%soru 6
clc
clear all
close all
f=1000
fs=2000
t1=0:1/fs:5
x1=sin(2*pi*f*t1)
subplot(4,1,1)
plot(t1,x1)
title('Sinüs')
fs1=50000
t2=0:1/fs1:5
x2=sin(2*pi*f*t2)
subplot(4,1,2)
plot(t2,x2)
title('Sinüs')
fs2=2000
t3=0:1/fs2:5
y1=cos(2*pi*f*t3)
subplot(4,1,3)
plot(t3,y1)
title('Cosinüs')
fs3=50000
t4=0:1/fs3:5
y2=cos(2*pi*f*t4)
subplot(4,1,4)
stem(t4,y2)
title('Cosinüs')

