
L = 10;
n = 1000;
x = linspace(0,L,n)';
f = exp(-(x-L/2).^2);

//plot(x,f);

a = fft(f);

nphase = 9;
vdt = L/nphase;
d = ones(x)//+0.00*x;
da = exp(((-2*%pi*%i*vdt)/L)*[0:(n-1)]'.*d);

f2 =f;

for i = 1:nphase
 subplot(3,3,i)
 plot(x,f2,'o');
    a = a*da;
    f2= fft(a,1);

end
    
   // балка бернули Эйлера и анимация


