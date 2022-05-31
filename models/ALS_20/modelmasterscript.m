%close all
%clearvars
%clc


saveflag    = 1;    % 1 to save results for each run
helper=load('inf_ini.mat');
I0in=helper.helper;
main_uk

% save and present only case when psi = 0.5 (hh underestimate the severity
% of the pandemic)
%Consumption = (C_v1 - par_v1.c_ss) ./ par_v1.c_ss;
%Labour = (H_v1 - par_v1.n_ss) ./ par_v1.n_ss;
Output = uk_gdp;
Consumption = Output;
Labour = nan(size(uk_gdp,1),size(uk_gdp,2));
Susceptibles = nan(size(uk_gdp,1),size(uk_gdp,2));
Infected = uk_sir ;
Recovered = nan(size(uk_gdp,1),size(uk_gdp,2));
Deaths = uk_death ;
Consumption_ss = Consumption(1);
Labour_ss = Labour(1);
Output_ss = Output(1);
Susceptibles_ss= 0;
Infected_ss= 0;
Recovered_ss= 0;
Deaths_ss= 0;
save('simulated_results.mat','Consumption','Labour','Output','Deaths','Susceptibles','Infected','Recovered');
save('simulated_results_ss.mat','Consumption_ss','Labour_ss','Output_ss','Deaths_ss','Susceptibles_ss','Infected_ss','Recovered_ss');%,'Exposed'