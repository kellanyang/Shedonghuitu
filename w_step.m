clear;clc;
CircuitConfig

figure
w_array = (19958:5:20036)*2*pi;
% w_array = (18000:200:22000)*2*pi;
for i=1:length(w_array)
    Circuit.w = w_array(i);
    SysDefinition
    step(Gss);
    hold on
end

%add