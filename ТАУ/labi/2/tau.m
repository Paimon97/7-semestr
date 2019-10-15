F_t = 30;
t_m = 0.2;
m_g = 10 ;
m_c = 3;

Vmax = 0.3;
Wmax = 1;
Emax = 10*10^-4;
m_p = 70;

m = m_p + m_g + m_c

F_b = m * 9.8 * 0.1;

F_n = F_t + F_b;
 
P = 1.4 * F_n * Vmax;

M_nm = 0.14 ;
w_nm = 345;
J_nm = 0.4*10^-4;

i = w_nm / Vmax;
M_dn = (J_nm * 0.1*J_nm + m/(0.8*i^2))* i * Wmax + (1/i*0.8) * F_n ;




M_nm = 0.15;
w_nm = 360;
J_nm = 0.7*10^-4;

i = w_nm / Vmax;
M_dn = (J_nm * 0.1*J_nm + m/(0.8*i^2))* i * Wmax + (1/i*0.8) * F_n;





M_nm = 0.21;
w_dn = 314;
u_dn = 24;
I_dn = 4;
R = 1.4;
L = 2.7;
J_nm = 0.5*10^-4;

i = w_dn / Vmax;
M_dn = (J_nm * 0.1*J_nm + m/(0.8*i^2))* i * Wmax + (1/i*0.8) * F_n ;


c_e = (u_dn-R*I_dn)/w_dn
k_sigm = 1/c_e
T_e = L/R
c_m = M_dn/I_dn
k_m = R/(c_e*c_m)
T_m = (J_nm * 0.1*J_nm + m/(i^2))/(c_e*c_m)

K = (w_dn + (k_m*M_dn)/(i^2))/Emax
