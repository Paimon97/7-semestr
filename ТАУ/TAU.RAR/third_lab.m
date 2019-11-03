k=4.244*10^3;
t1=0.141;
t2=0.01;
t3=0.001;
s=tf('s');
g=k*(t2*s+1)/(s*(t1*s+1)*(t3*s+1));
bode(g);
grid on;
pause;
gz=g/(g+1);
[num,den]=tfdata(gz);
step(tf(num,den),0.05)