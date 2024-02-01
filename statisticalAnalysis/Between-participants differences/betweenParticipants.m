load('..\..\data\angles_struct.mat');
avg_p_angles = runFriedmanTest(angles_struct);

load('..\..\data\stretch_struct.mat');
avg_p_stretch = runFriedmanTest(stretch_struct);

load('..\..\data\struct_alpha.mat');
avg_p_alpha = runFriedmanTest(struct_alpha);

load('..\..\data\struct_beta.mat');
avg_p_beta = runFriedmanTest(struct_beta);

load('..\..\data\struct_mse.mat');
avg_p_mse = runFriedmanTest(struct_mse);




