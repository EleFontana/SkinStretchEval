clear all

load("..\..\data\groups_alpha.mat");
avg_p_alpha = runFriedmanTest(groups_alpha);

load("..\..\data\groups_beta.mat");
avg_p_beta = runFriedmanTest(groups_beta);

load("..\..\data\groups_mse.mat");
avg_p_mse = runFriedmanTest(groups_mse);