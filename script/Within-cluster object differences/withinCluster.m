clear all

load("..\..\data\groups_alpha.mat");
avg_p_angles = runFriedmanTest(groups_alpha);

load("..\..\data\groups_beta.mat");
avg_p_angles = runFriedmanTest(groups_beta);

load("..\..\data\groups_mse.mat");
avg_p_angles = runFriedmanTest(groups_mse);
