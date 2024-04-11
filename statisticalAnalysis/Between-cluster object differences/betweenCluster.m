clear all

load("..\..\data\clustered_alpha.mat");
avg_p_alpha = runFriedmanTest(clustered_alpha);

load("..\..\data\clustered_beta.mat");
avg_p_beta = runFriedmanTest(clustered_beta);

load("..\..\data\clustered_mse.mat");
avg_p_mse = runFriedmanTest(clustered_mse);
