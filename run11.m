models ; 
M=-5:0.05:5 ;
A=10.^M ; 
C=6 ; 

for i=1:length(A)  
   theta_general(i) = fxn_11_v1(general11,C,A(i)) ; 
end

