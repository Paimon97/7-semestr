clear
L=10;
n=900;
nphase=30;

vdt=L/nphase;
x = linspace(0,L,n)';
f=exp(-(x-L/2).^2);

//plot(x,f);

a=fft(f);
d=ones(x)//+0.03*x;
p=exp(-2*%pi*%i*vdt/L*[0:n-1]');
f2=f;

for i=1:nphase

    plot(x,f2);
    sleep(100);
    clf;  
    a=a.*p;
    f2=fft(a);        
end



//plot(x,f2, 'o');
