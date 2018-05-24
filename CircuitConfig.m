Circuit.w = 20000*pi*2;

Circuit.Rp = 0.0;
Circuit.Lp = 200e-6; %200e-06;
Circuit.Cp = 1/Circuit.w^2/Circuit.Lp; %317.98e-09;%%

Circuit.M= 40e-6;%44e-6;

Circuit.Rs = 0.0;
Circuit.Ls = 150e-06;
Circuit.Cs = 1/Circuit.w^2/Circuit.Ls; %%

Circuit.Cf = 1000e-6;
Circuit.Rdc = 10;