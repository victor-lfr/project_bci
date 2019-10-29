fc = [7.5,11,13.5];
fe = 256;
deltaf = 2;

K = 1;
T = importdata('herve001.txt');
[m,n] = size(T);
T(1:m,1:n);
T2 = (T(1:m,1) + T(1:m,2))*0.5;
T2(1:m)

t = 0:1/fe:(m-1)*(1/fe);
figure;
plot(t,T2)