
<h1 align="center"> On the relation of skin stretch and finger joint angle evolution in human hand grasping tasks</h1>

 <p align="center">

  <img width="400" src="https://github.com/EleFontana/SkinStretchEval/blob/main/media/cp_logo.png" alt="cp_logo">
  <img width="300" src="https://github.com/EleFontana/SkinStretchEval/blob/main/media/unipi_logo.png" alt="unipi_logo_nero">
  <img width="300" src="https://github.com/EleFontana/SkinStretchEval/blob/main/media/Logo_DII.jpg" alt="dii_logo"> 
  <img width="300" src="https://github.com/EleFontana/SkinStretchEval/blob/main/media/iit_logo.jpg" alt="iit_logo"> 
</p>

# Abstract
In human body, skin stretch is intrinsically related to motion execution, providing important proprioceptive cues for movement perception and control, as it is the case of human hands and fingers. However, as of today, a quantification of the amount of skin stretch across multiple hand joints notably lacks. In this study, we aim at bridging this research gap, quantifying skin stretch on the dorsal part of hand fingers, and more specifically across Proximal InterPhalangeal (PIP) and MetaCarpal (MCP) joints. We correlated the estimated skin stretch with human hand kinematics, in grasping tasks with several items. Twelve able-bodied participants were required to grasp twenty objects. We used an RGB-D camera for reconstructing hand kinematics (more specifically PIP and MCP values), while optical markers were placed on the hand dorsum to estimate skin displacement across joints.
We found a linear relationship between joint angles and the related skin stretch estimation over time, as evidenced by a linear regression analysis, with no statistically significant differences among participants and objects. This research sheds light on the intricate interplay between skin stretch and hand/finger movements. These outcomes can pave the path to the design of non-invasive skin stretch-based feedback devices for accurately conveying hand proprioceptive cues, with interesting implications for rehabilitation and advanced human-machine interaction.

The experimental data we collected are publicly available here.


# Actual state of the Repository
This repository contains data collected during experiments and scripts for visualizing results obtained from the Friedman statistical test.

Specifically:

* **\data**: organizes collected data into structures, including:

    * *struct_all*: structure containing 200 tables (Obj1_indexPIP, Obj1_indexMCP, ..., Obj20_thumbMCP) 14x7 [(participants 1 to 12, mean, standard deviation) x indicators]. The indicators are: maximum angle achieved - MA, angle variation over time - AV, maximum stretch achieved - MS, stretch variation over time - SV, coefficient of determination - R-squared, the intercept of the linear regression - alpha, and the slope - beta;

    * *angles_struct*: structure containing ten tables (one for each joint) 20x12 [objects x participants 1 to 12] storing maximum angle values;

    * *stretch_struct*: structure containing ten tables (one for each joint) 20x12 [objects x participants 1 to 12] storing maximum stretch values;

    * *struct_alpha/beta/mse*: structure containing ten tables (one for each joint) 12x20 [participants 1 to 12 x objects] storing alpha/beta/MSE values from linear regression for each subject;

    * *clustered_alpha/beta/mse*: structure containing 8 tables (clusters), each with 10 rows (joints) and values of alpha/beta/MSE for objects assigned to that cluster;

    * *groups_alpha/beta/mse*: 10x8 table [joints x clusters] with alpha/beta/MSE values obtained by calculating the median of individual values for objects belonging to each cluster.


* **\statisticalAnalysis**: contains necessary files for running the Friedman test on desired structures to check for differences between objects or participants. Specifically:

    * *Between-participants differences folder*: the file 'betweenParticipants.m' performs the Friedman test to assess statistically significant differences between participants. It examines data related to angles and skin stretch, as well as alpha, beta, and MSE;

    * *Between-cluster object differences folder*: After dividing objects into eight clusters, the file betweenCluster.m performs the Friedman test to verify differences between different clusters. It examines data containing alpha, beta, and MSE;

    * *Within-cluster object differences folder*: the file withinCluster.m performs the Friedman test to verify differences between different objects within the same cluster. It examines data containing alpha, beta, and MSE.


# Actual state of the Repository
Schematic representation illustrating the sequential steps of the statistical analysis conducted in this study, providing a comprehensive overview of the process. When a p-value exceeds 0.05, indicating no significant differences, subsequent analyses are based on the median ($\eta$) of the previously tested values.

<div style="text-align: center;">
    <img width="700" src="https://github.com/EleFontana/SkinStretchEval/blob/main/media/res_vert.png" alt="results">
</div>



<!-- # Publication -->
<!-- To know more about the method, you can refer to:
E. Fontana, V. Catrambone, M. G. Catalano, A. Bicchi, M. Bianchi, "On the Relation of Skin Stretch and Finger Joint Angle Evolution in Human Hand Grasping Tasks", Eurohaptics 2024 Conference, Lille, France, 2024, pp. xxx-xxx, doi: xxxxx. -->


# Acknowledgment
This work was supported in part by the Next Generation EU Project ECS00000017 ‘Ecosistema dell’Innovazione’ Tuscany Health Ecosystem (THE, PNRR, Spoke 9: Robotics and Automation for Health), and in part by the Italian Ministry of Education and Research (MIUR) in the framework of the ForeLab project (Departments of Excellence). This work was also supported in part by the EU-funded ERC Synergy Grant Natural BionicS (Grant no: 810346).



