clear;clc;
CircuitConfig

figure
k_array = 0.1:0.02:0.3;
for i=1:length(k_array)
    Circuit.M = k_array(i)*sqrt(150e-6*200e-6);
    SysDefinition
    step(Gss);
    hold on
end