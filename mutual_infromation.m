clc
clear 
close all

%% Inputs
p = [0.35 0.41 0.24]';

obs_mat = [0.52 0.47 0.01; 
           0.01 0.51 0.48; 
           0.47 0.5 0.03];

base = 8;

%% Calculation       
Log_z_x = -log(obs_mat)/log(base);

P_x_z = obs_mat.*p;

a = sum(dot(P_x_z, Log_z_x));

q1 = sum([obs_mat(1,1) obs_mat(2,1) obs_mat(3,1)])/3;
q2 = sum([obs_mat(1,2) obs_mat(2,2) obs_mat(3,2)])/3;
q3 = sum([obs_mat(1,3) obs_mat(2,3) obs_mat(3,3)])/3;

H_z = -( (q1*log(q1)/log(base)) + (q2*log(q2)/log(base)) + (q3*log(q3)/log(base)) );

%% Mutual information
I_x_z = H_z - a




