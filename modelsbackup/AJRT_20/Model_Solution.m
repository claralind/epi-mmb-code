% guess of vectors for labor(s), prices, and g
deltaHss = (alpha.^sigma*(1).^(-sigma))./...
               (alpha.^sigma*(1).^(-(sigma-1)) +...
               (1-alpha).^sigma*(1).^(-(sigma-1))).^(sigma/(sigma-1));
deltaFss = ((1-alpha).^sigma*(1).^(-sigma))./...
               (alpha.^sigma*(1).^(-(sigma-1)) +...
               (1-alpha).^sigma*(1).^(-(sigma-1))).^(sigma/(sigma-1));

n_vec_guess = [lrss*ones(2*HH,1);...
    xrss*deltaHss*ones(1*HH,1);xrss*deltaFss*ones(1*HH,1);...
    xrss*deltaHss*ones(1*HH,1);xrss*deltaFss*ones(1*HH,1);...
    1*ones(HH,1)];

[n_vec,fval,exitflag]=fsolve(@getErr,n_vec_guess,opts_fsolve,...
    HH,policylength,beta,z,zstar,kappa,...
    alpha,sigma,I0,Istar0,pop0,popstar0,pi1,...
    pi2,pi3,pi4,pir,pid,pid_accel,phi,...
    Uiss,Urss,Udeath,muh,muf,muhstar,mufstar,delta_muin,delta_nuin);


% sum(abs(fval))

[err,ls,lsstar,li,listar,lr,lrstar,xs,xsstar,xi,xistar,xr,xrstar,chs,cfs,chsstar,cfsstar,chi,cfi,chistar,cfistar,chr,cfr,chrstar,cfrstar,...
    ph,pfstar,S,Sstar,I,Istar,R,Rstar,T,Tstar,aggC,aggCstar,aggL,aggLstar,g,gstar,aggU,aggUstar,pop,popstar] = ...
    getErr(n_vec,HH,policylength,beta,z,zstar,kappa,alpha,sigma,I0,Istar0,pop0,popstar0,pi1,pi2,pi3,pi4,pir,pid,pid_accel,phi,Uiss,Urss,Udeath,muh,muf,muhstar,mufstar,delta_muin,delta_nuin);

% mean(err(1:4*HH))
% mean(err(4*HH+1:5*HH))
% mean(err(5*HH+1:6*HH))
% mean(err(6*HH+1:7*HH))



