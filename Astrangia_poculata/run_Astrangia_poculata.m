close all;
global pets

pets = {'Astrangia_poculata'};
check_my_pet(pets);

estim_options('default');
%add steps for second round
estim_options('max_step_number', 5e2);
estim_options('max_fun_evals',5e3);

% option 2 starts it from top of pars_init
%option 1 tells it to start from the endpoint from the estimation and saves the paramesters in a .m file
estim_options('pars_init_method', 2);
estim_options('results_output', 3);
%run without estimations
%estim_options('method', 'no');
%run with estimations= 'nm'
estim_options('method', 'no');


estim_pars;

%we need convergence, but we have not gotten it yet so we're going to run a
%new estimation
% 3 estimations at 500
% 1 estimation at 5000
% we are too far on the estimation at the moment
%play with parameters in pars.init file 