function [par, metaPar, txtPar] = pars_init_Astrangia_poculata(metaData)
%model type
%std gives us the standard deb model
% think about metamorphosis
% abj means---
metaPar.model = 'abj'; 

%% reference parameter (not to be changed) 
par.T_ref = 293.15;   free.T_ref = 0;   units.T_ref = 'K';        label.T_ref = 'Reference temperature'; 

% pulled some parameters from frilled anemone

%% core primary parameters 
% 0 is free, 1 is fixed
%par.T_A = 8000;       free.T_A   = 0;   units.T_A = 'K';          label.T_A = 'Arrhenius temperature'; 
par.T_A = 8000;       free.T_A   = 0;   units.T_A = 'K';          label.T_A = 'Arrhenius temperature'; 
%par.z = 3.8696;       free.z     = 1;   units.z = '-';            label.z = 'zoom factor'; 
par.z = 0.1;           free.z     = 1;   units.z = '-';            label.z = 'zoom factor'; 
%par.F_m = 6.5;        free.F_m   = 0;   units.F_m = 'l/d.cm^2';   label.F_m = '{F_m}, max spec searching rate'; 
par.F_m = 6.5;        free.F_m   = 0;   units.F_m = 'l/d.cm^2';   label.F_m = '{F_m}, max spec searching rate'; 
%par.kap_X = 0.8;      free.kap_X = 0;   units.kap_X = '-';        label.kap_X = 'digestion efficiency of food to reserve'; 
par.kap_X = 0.9;      free.kap_X = 0;   units.kap_X = '-';        label.kap_X = 'digestion efficiency of food to reserve'; 
%par.kap_P = 0.1;      free.kap_P = 0;   units.kap_P = '-';        label.kap_P = 'faecation efficiency of food to faeces'; 
par.kap_P = 0.1;      free.kap_P = 0;   units.kap_P = '-';        label.kap_P = 'faecation efficiency of food to faeces'; %does not seem to matter
%par.v = 0.029799;     free.v     = 1;   units.v = 'cm/d';         label.v = 'energy conductance'; 
par.v = 0.029799;     free.v     = 1;   units.v = 'cm/d';         label.v = 'energy conductance'; 
%par.kap = 0.99629;    free.kap   = 1;   units.kap = '-';          label.kap = 'allocation fraction to soma'; 
par.kap = 0.998;    free.kap   = 1;   units.kap = '-';          label.kap = 'allocation fraction to soma';
%par.kap_R = 0.95;     free.kap_R = 0;   units.kap_R = '-';        label.kap_R = 'reproduction efficiency'; 
par.kap_R = 0.9999999;     free.kap_R = 0;   units.kap_R = '-';        label.kap_R = 'reproduction efficiency'; %reducing this pulls the reproduction rate farther from observed
%par.p_M = 20.8636;    free.p_M   = 1;   units.p_M = 'J/d.cm^3';   label.p_M = '[p_M], vol-spec somatic maint'; 
par.p_M = 20.8636;    free.p_M   = 0;   units.p_M = 'J/d.cm^3';   label.p_M = '[p_M], vol-spec somatic maint'; %cant really change: cannot decrease, increasing value increases error
%par.p_T = 0;          free.p_T   = 0;   units.p_T = 'J/d.cm^2';   label.p_T = '{p_T}, surf-spec somatic maint'; 
par.p_T = 0;          free.p_T   = 0;   units.p_T = 'J/d.cm^2';   label.p_T = '{p_T}, surf-spec somatic maint'; %cant really change
%par.k_J = 0.002;      free.k_J   = 0;   units.k_J = '1/d';        label.k_J = 'maturity maint rate coefficient'; 
par.k_J = 0.002;      free.k_J   = 0;   units.k_J = '1/d';        label.k_J = 'maturity maint rate coefficient'; %cannot increase, decrease does not change error
%par.E_G = 522.8644;   free.E_G   = 1;   units.E_G = 'J/cm^3';     label.E_G = '[E_G], spec cost for structure'; 
par.E_G = 522.8644;   free.E_G   = 1;   units.E_G = 'J/cm^3';     label.E_G = '[E_G], spec cost for structure'; %increase makes error worse, cannot decrease
%par.E_Hb = 2.509e-05; free.E_Hb  = 1;   units.E_Hb = 'J';         label.E_Hb = 'maturity at birth'; 
par.E_Hb = 2.509e-05; free.E_Hb  = 1;   units.E_Hb = 'J';         label.E_Hb = 'maturity at birth'; 
%par.E_Hj = 2.509e-04; free.E_Hj  = 1;   units.E_Hj = 'J';         label.E_Hj = 'maturity at metamorphosis'; 
par.E_Hj = 8.509e-04; free.E_Hj  = 1;   units.E_Hj = 'J';         label.E_Hj = 'maturity at metamorphosis'; %increasing this number makes a better estimate of age at metamorphosis
%par.E_Hp = 1.516e-01; free.E_Hp  = 1;   units.E_Hp = 'J';         label.E_Hp = 'maturity at puberty'; 
par.E_Hp = 1.516e-01; free.E_Hp  = 1;   units.E_Hp = 'J';         label.E_Hp = 'maturity at puberty'; 
%par.h_a = 1.399e-08;  free.h_a   = 1;   units.h_a = '1/d^2';      label.h_a = 'Weibull aging acceleration'; 
par.h_a = 1.399e-08;  free.h_a   = 1;   units.h_a = '1/d^2';      label.h_a = 'Weibull aging acceleration'; %no real effect
%par.s_G = 0.0001;     free.s_G   = 0;   units.s_G = '-';          label.s_G = 'Gompertz stress coefficient'; 
par.s_G = 0.0001;     free.s_G   = 0;   units.s_G = '-';          label.s_G = 'Gompertz stress coefficient'; %no real effect

%% other parameters 
% (removing because no structural/length comparison) par.del_M = 0.3162;   free.del_M = 1;   units.del_M = '-';        label.del_M = 'shape coefficient'; 
par.f = 1;            free.f     = 0;   units.f = '-';            label.f = 'scaled functional response for 0-var data'; 
par.z_m = 3.8696;       free.z_m     = 1;   units.z_m = '-';            label.z_m = 'zoom factor for males'; 
% (removing because no univariate) par.t_0 = 239.8676;   free.t_0   = 1;   units.t_0 = 'd';          label.t_0 = 'time since birth at t=0 in tA-data'; 

%% set chemical parameters from Kooy2010 
[par, units, label, free] = addchem(par, units, label, free, metaData.phylum, metaData.class); 

%% Pack output: 
txtPar.units = units; txtPar.label = label; par.free = free; 