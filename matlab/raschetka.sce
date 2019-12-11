//бифуркационная диограмма логистического отображения

x0 = 0;
N = 1000;
k = 0;

h = 0.005;
n = 2.25/h;

c = zeros(n);
x = zeros(n,N);


for i = 1:n
    c(i) = -0.25 + h*i;
     for j = 1:N
        if j <= 1
            then x(i,j)= x0;
        else
        x(i,j) = c(i) - (x0*x0);
        x0 = x(i,j);
    end
end
    x0 = 0;
end

//plot(x)

plot(x(:,501:N))


