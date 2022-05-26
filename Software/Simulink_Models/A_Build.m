
 
modelName = 'FMU_Seperator';
open_system(modelName);
% 
% Configuration
% 1. Configure a fixed step solver
 
TwinCAT.ModuleGenerator.Simulink.ModelExportConfig.ShowModelParam(modelName,'SolverType','Fixed-step');

% 2. Configure the "SystemTargetFile"
 
TwinCAT.ModuleGenerator.Simulink.ModelExportConfig.ShowModelParam(modelName,'SystemTargetFile','TwinCatGrt.tlc');

% 3. Optionally tune some TwinCAT specific code generation parameters
 
TwinCAT.ModuleGenerator.Simulink.ModelExportConfig.ShowModelParam(modelName,'TcProject_VendorName');


% 4. Save your settings in the Simulink model

 
save_system(modelName);

% Start code generation
% Select the "Simulink Coder" app and start code generation


 
slbuild(modelName);