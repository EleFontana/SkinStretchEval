
<h1 align="center"> On the relation of skin stretch and finger joint angle evolution in human hand grasping tasks</h1>

 <p align="center">

  <img width="200" src="https://github.com/EleFontana/SkinStretchEval/media/cp_logo.jpg" alt="cp_logo">
  <img width="200" src="https://github.com/EleFontana/SkinStretchEval/media/unipi_logo.jpg" alt="unipi_logo">
  <img width="200" src="https://github.com/EleFontana/SkinStretchEval/media/iit_logo.jpg" alt="iit_logo"> 
</p>

# Abstract
In human body, skin stretch is intrinsically related to motion execution, providing important proprioceptive cues for movement perception and control, as it is the case of human hands and fingers. However, as of today, a quantification of the amount of skin stretch across multiple hand joints notably lacks. In this study, we aim at bridging this research gap, quantifying skin stretch on the dorsal part of hand fingers, and more specifically across Proximal InterPhalangeal (PIP) and MetaCarpal (MCP) joints. We correlated the estimated skin stretch with human hand kinematics, in grasping tasks with several items. Twelve able-bodied participants were required to grasp twenty objects. We used an RGB-D camera for reconstructing hand kinematics (more specifically PIP and MCP values), while optical markers were placed on the hand dorsum to estimate skin displacement across joints.
We found a linear relationship between joint angles and the related skin stretch estimation over time, as evidenced by a linear regression analysis, with no statistically significant differences among participants and objects. This research sheds light on the intricate interplay between skin stretch and hand/finger movements. These outcomes can pave the path to the design of non-invasive skin stretch-based feedback devices for accurately conveying hand proprioceptive cues, with interesting implications for rehabilitation and advanced human-machine interaction.

The experimental data we collected are publicly available here.

 maximum angle achieved (MA, [deg]), angle variation over time (AV, [deg/sec]), maximum stretch registered (MS, [mm]), stretch variation over time (SV, [mm/sec]), coefficient of determination ($R^2$), the intercept of the linear regression ($\alpha$) and the slope ($\beta$). 


# Actual state of the Repository
This repository contains data collected during experiments and scripts for visualizing results obtained from the Friedman statistical test.

Specifically:

* **\data**: contains organized collected data in structures, including:

    * *struct_all*: a structure containing tables (Obj1_indexPIP, Obj1_indexMCP, ..., Obj20_thumbMCP) with 7 columns (maximum angle achieved - MA, angle variation over time - AV, maximum stretch achieved - MS, stretch variation over time - SV, coefficient of determination - R-squared, the intercept of the linear regression - alpha, and the slope - beta) and 14 rows (participants 1 to 12, mean, standard deviation);

    * *angles_struct*: a structure containing ten tables (one for each joint) 12x20 (participants 1 to 12 x objects) storing maximum angle values;

    * *stretch_struct*: a structure containing ten tables (one for each joint) 12x20 (participants 1 to 12 x objects) storing maximum stretch values;

    * *struct_alpha/beta/mse*: a structure containing ten tables (one for each joint) with 20 columns (objects) storing alpha/beta/MSE values from linear regression for each subject;

    * *clustered_alpha/beta/mse*: a structure containing 8 tables (objects grouped into 8 clusters), each with 10 rows (joints) and values of alpha/beta/MSE for objects assigned to that cluster;

    * *groups_alpha/beta/mse*: a 10x8 table (joints x clusters) with alpha/beta/MSE values obtained by averaging individual values of objects belonging to each cluster.

* **\script**: contains files necessary for running the Friedman test on desired structures to check for differences between objects or participants. Specifically:

    * *Between-participants differences folder*: executing the file betweenParticipants.m performs the Friedman test to assess statistically significant differences between participants. It examines structures related to angles and skin stretch, as well as structures containing alpha, beta, and MSE regression parameters;

    * *Between-cluster object differences folder*: After dividing objects into eight clusters, executing the file betweenCluster.m performs the Friedman test to verify differences between different clusters. It examines structures containing alpha, beta, and MSE regression parameters;

    * *Within-cluster object differences folder*: executing the file withinCluster.m performs the Friedman test to verify differences between different objects within the same cluster. It examines structures containing alpha, beta, and MSE regression parameters.



<!-- # Publication -->
<!-- To know more about the method, you can refer to:
G. Amprimo, C. Ferraris, G. Masi, G. Pettiti and L. Priano, "GMH-D: Combining Google MediaPipe and RGB-Depth Cameras for Hand Motor Skills Remote Assessment," 2022 IEEE International Conference on Digital Health (ICDH), Barcelona, Spain, 2022, pp. 132-141, doi: 10.1109/ICDH55609.2022.00029. -->


# Acknowledgment
This work was supported in part by the Next Generation EU Project ECS00000017 ‘Ecosistema dell’Innovazione’ Tuscany Health Ecosystem (THE, PNRR, Spoke 9: Robotics and Automation for Health), and in part by the Italian Ministry of Education and Research (MIUR) in the framework of the ForeLab project (Departments of Excellence). This work was also supported in part by the EU-funded ERC Synergy Grant Natural BionicS (Grant no: 810346).



