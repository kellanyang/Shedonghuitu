Circuit.w = 20000*pi*2;

Circuit.Rp = 0.3118;
Circuit.Lp = 500e-6; %200e-06;
Circuit.Cp = 1/Circuit.w^2/Circuit.Lp; %317.98e-09;%%

Circuit.M= 44e-6;%44e-6;

Circuit.Rs = 0.277;
Circuit.Ls = 152e-06;
Circuit.Cs = 1/Circuit.w^2/Circuit.Ls; %%

Circuit.Cf = 196e-6;
Circuit.Rdc = 10;



Circuit.FeedbackDelay = 0.00045;


