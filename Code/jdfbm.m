function y=jdfbm(p,s,t,r,v,rho,H)
d1=(log(p/s)+r*t+1/2*v^2*(1-rho)^2*t*(2*H)*(2-2*(2*H-1)))/(v*(sqrt(rho^2*t+(1-rho)^2*(2-2^(2*H-1))*(t^(2^H)))));
d2=d1-v*(sqrt(rho^2*t+(1-rho^2)*(2-2^(2*H-1))*(t^(2^H))));
y=p*normcdf(d1)-s*exp(-r*t)*normcdf(d2);
end