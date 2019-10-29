N = 100; // number of elements of the signal
n = 0:N - 1;
w1 = %pi/5; // 1st frequency
w2 = %pi/10; // 2nd frequency
s1 = sin(w1*n); // 1st component of the signal
s2 = cos(w2*n); // 2nd component of the signal
f = s1 + s2; // signal
//plot(n, f);

F = fft(f); // it calculates the Fourier Transform

F_abs = abs(F); // F_abs is the absolute value of each element of F

plot(n, F_abs);
