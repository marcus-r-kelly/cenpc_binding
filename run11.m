models ; 
M=-4:0.5:4 ;
A=6 ; 
C=10.^M ; 

for i=1:length(C)  
   theta_general(i) = fxn_11_v1(general11,C(i),A) ; 
end

