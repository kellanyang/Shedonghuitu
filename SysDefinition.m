%% Part I Parameter Settings
%Circuit Parameters
Rp = Circuit.Rp;                                    
Lp = Circuit.Lp; 
Cp = Circuit.Cp;
M = Circuit.M;
Rs = Circuit.Rs;                                     
Ls = Circuit.Ls;
Cs = Circuit.Cs;
Cf = Circuit.Cf;
Rdc = Circuit.Rdc;
w = Circuit.w;

%% Part II  System Model
det=M^2-Lp*Ls;                                %    Determinant
A = [   Rp*Ls/det w Ls/det 0 M*Rs/det 0 M/det 0 2*M/pi/det ;
        -w Rp*Ls/det 0 Ls/det 0 M*Rs/det 0 M/det 0 ;
        1/Cp 0 0 w 0 0 0 0 0 ;
        0 1/Cp -w 0 0 0 0 0 0 ; 
        M*Rp/det 0 M/det 0 Rs*Lp/det w Lp/det 0 2*Lp/pi/det ;
        0 M*Rp/det 0 M/det -w Rs*Lp/det 0 Lp/det 0 ; 
        0 0 0 0 1/Cs 0 0 w 0 ;
        0 0 0 0 0 1/Cs -w 0 0 ;
        0 0 0 0 4/pi/Cf 0 0 0 -1/Cf/Rdc ];
B = [0 2*Ls/pi/det 0 0 0 2*M/pi/det 0 0 0]';
C = [0 0 0 0 0 0 0 0 1];
D = 0;
Gss = ss(A, B, C, D);