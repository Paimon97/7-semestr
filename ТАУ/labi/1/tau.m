F_t = 30;
t_m = 0.2;
m_g = 10 ;
m_c = 3;

Vmax = 0.3;
Wmax = 1;
Emax = 10*10^-4;
m_p = 70;

m = m_p + m_g + m_c;

F_b = m * 9.8 * 0.1;

F_n = F_t + F_b;
 
P = 1.4 * F_n * Vmax

M_nm = 0.14 ;
w_nm = 345;
J_nm = 0.4*10^-4

i = w_nm / Vmax
M_n = (J_nm * 0.1*J_nm + m/(0.8*i^2))* i * Wmax + (1/i*0.8) * F_n 


U_pt = 27;
I_ya = 2.7;
R_ya = 1.7;
N_ya = 0.51;