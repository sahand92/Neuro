%paramters wake
G_ee=5;
G_ei=-5;
G_es=5;
G_re=1;
G_rs=1;
G_sr=-5;
G_sn=10;
G_se=10;
%Random connectivity assumption
G_ie=G_ee;
G_ii=G_ei;
G_is=G_es;

G_ese=G_es*G_se;
G_erse=G_es*G_sr*G_re;
G_srs=G_sr*G_rs;
G_esn=G_es*G_sn;

alpha=83.3;
beta=770;
gamma_ee=116;


t_0=0.085;
tau_re=t_0/2;
tau_se=t_0/2;
tau_es=t_0/2;

r_ee=0.086;
k_0=10;
L_x=0.5;
L_y=0.5;
phi_n=1;

P_j=zeros(1,100);

for w=1:100
%k=1
    for n=-2:2
        for m=-2:2
        

       
         k=sqrt((2*pi*m/L_x)^2 + (2*pi*n/L_y)^2);
%L(w)
L=((1-1i*w/alpha)*(1-1i*w/beta))^-1;
%q^2*r_ee^2
q_re=(1-1i*w/gamma_ee)^2 - (1/(1-G_ei*L))*(L*G_ee + ((L^2 *G_ese + L^3 *G_erse)*exp(1i*w*t_0))/(1-L^2*G_srs));
%Transfer function for e:
T=(L^2)*G_esn*exp(1i*w*t_0*0.5)/((1-(L^2)*G_srs)*(1-G_ei*L)*(((k^2) * (r_ee^2))+(q_re)));
%Power spectrum
        
        
        end
    end
P=abs(T)^2 * abs(phi_n)^2 *exp(-(k^2)/k_0^2);
P_j(w)=P;
end
P_j
