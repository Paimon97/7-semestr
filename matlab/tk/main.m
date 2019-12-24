m=1;
c=0;
k=2;

T=100;
n=1000;

F0=45;

%нач. усл.

x0=0;
a0=0;
v0=0;

h=T/n
x=zeros(n,1);
v=zeros(n,1);
a=zeros(n,1);
t=zeros(n,1);

%t(1)=0
x(1,1)=x0;
v(1,1)=v0;
a(1,1)=a0;

dT=h

for i=1:n
    
    if t(i)<40
        F=-0.1*t(i)/40;
    elseif (40<=t(i))&&(t(i)<60)
        F=(0.1*t(i))/20 - 0.3;
    elseif (60<=t(i))&&(t(i)<70)
        F=0.1;
    elseif (70<=t(i))
        F=0;
    end
    f=F;
    t(i+1)=i*dT;
    [xi1, vi1, ai1]=step(x(i), v(i), a(i), m, c, k, f, dT);
    x(i+1)=xi1;
    v(i+1)=vi1;
    a(i+1)=ai1;
end

hold on
plot(t,x,'-r')
     
    
    
    
    
    
    
    
    
    
    
    