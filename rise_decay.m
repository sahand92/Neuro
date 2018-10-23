
clear
t=linspace(0,0.1,5000);
alpha=83;
beta=769;
beta_b=50;


we=(alpha*beta)/(beta-alpha) * (exp(-alpha*t) - exp(-beta*t));

we_b=(alpha*beta_b)/(beta_b-alpha) * (exp(-alpha*t) - exp(-beta_b*t));
plot(t,we,'LineWidth',2)
hold on
plot(t,we_b,'LineWidth',2)


we_bn=gam(alpha,beta)/gam(alpha,beta_b) * we_b;
hold on
plot(t,we_bn,'LineWidth',2,'LineStyle','--','Color','black')
