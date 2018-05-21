clear;clc;
CircuitConfig

figure
Rdc_array = 1:2:20;
for i=1:length(Rdc_array)
    Circuit.Rdc = Rdc_array(i);
    SysDefinition
    step(Gss);
    hold on
end