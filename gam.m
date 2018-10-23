function w = gam(alpha, beta)

w = alpha*beta/(beta-alpha)* ((alpha/beta)^(alpha/(beta-alpha)) - (alpha/beta)^(beta/(beta-alpha)));

end
