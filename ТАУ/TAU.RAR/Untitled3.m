%% Exact linearization of the Simulink model mod1
%
% This MATLAB script is the command line equivalent of the exact
% linearization tab in linear analysis tool with current settings.
% It produces the exact same linearization results as hitting the Linearize button.

% MATLAB(R) file generated by MATLAB(R) 9.2 and Simulink Control Design (TM) 4.5.
%
% Generated on: 26-Feb-2019 02:45:58

%% Specify the model name
model = 'mod1';

%% Specify the analysis I/Os
% Use root level inports and outports in mod1
% by passing no input argument to the linearize command for analysis I/Os

%% Specify the operating point
% Use the model initial condition
op = operpoint(model);


%% Linearize the model
sys = linearize(model,op);

%% Plot the resulting linearization
step(sys)
margin(sys)
