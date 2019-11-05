fc = 7.5; %[7.5,11,13.5];
fe = 256;
deltaf = 1;
G = 1;

T = importdata('herve001.txt');
[m,n] = size(T);
T(1:m,1:n);
signal = (T(1:m,1) + T(1:m,2))*0.5; % Fait la moyenne des deux canaux
signal(1:m)

t = 0:1/fe:(m-1)*(1/fe);
figure(1);
plot(t,signal);

%Paramètres du filtre passe-bande
b0 = 2*pi*G*deltaf/fe*sin(2*pi*fc/fe);
a1 = -2*sqrt(1-2*pi*deltaf/fe)*cos(2*pi*fc/fe);
a2 = 1-2*pi*G*deltaf/fe;

% W1=[5 9]/(fe/2);
% [a,b]=butter(10,W1,'bandpass'); % On créé le filtre
% signal_filtered = filter(b,a,signal); % On applique le filtre
% figure(2),plot(t,signal_filtered);

signal_filtered = filter(b0,[1,a1,a2],signal); % On applique le filtre
figure(2);
plot(t,signal_filtered);

figure(3);
freq = fft(signal);
plot(abs(freq))

