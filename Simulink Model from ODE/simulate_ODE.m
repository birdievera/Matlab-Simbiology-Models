% Written by Vera Sipicki
function simulate_ODE()
    % This script saves the simulation results in the 
    % var sim_out. Since the simulation has a long 
    % time interval and B initially changes very 
    % fast, plotting values on a logarithmic scale 
    % helps to visually compare the results. 
    % Also, since the value of B is small relative 
    % to the values of A and C, multiply B by 1?10
    % before plotting the values.
    
    sim('custom_model')
    sim_out(:,2) = 1e4*sim_out(:,2);
    figure;
    semilogx(