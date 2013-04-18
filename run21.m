models ; 
M=-5:0.05:5 ;
A=10.^M ; 
C=6 ; 


for i=1:length(A)  
   theta_uncoop(i) = fxn_12_v1(uncoop21,C,A(i)) ; 
   theta_uncoop_R532A(i) = fxn_12_v1(uncoop21_R532A,C,A(i)) ; 
   theta_uncoop_R742A(i) = fxn_12_v1(uncoop21_R742A,C,A(i)) ; 

   theta_heterocoop(i) = fxn_12_v1(heterocoop21,C,A(i)) ; 
   theta_heterocoop_R532A(i) = fxn_12_v1(heterocoop21_R532A,C,A(i)) ; 
   theta_heterocoop_R742A(i) = fxn_12_v1(heterocoop21_R742A,C,A(i)) ; 

   theta_homocoop(i) = fxn_12_v1(homocoop21,C,A(i)) ; 
   theta_homocoop_R532A(i) = fxn_12_v1(homocoop21_R532A,C,A(i)) ; 
   theta_homocoop_R742A(i) = fxn_12_v1(homocoop21_R742A,C,A(i)) ; 
   %theta_anticoop(i) = fxn_12_v1(anticoop21,C,A(i)) ; 
   %theta_heterocoop(i) = fxn_12_v1(heterocoop21,C,A(i)) ; 
   %theta_homocoop(i) = fxn_12_v1(homocoop21,C,A(i)) ; 
end

   ltheta_uncoop        = log10(theta_uncoop     )
   ltheta_uncoop_R532A        = log10(theta_uncoop_R532A     )
   ltheta_uncoop_R742A        = log10(theta_uncoop_R742A     )

   ltheta_heterocoop        = log10(theta_heterocoop     )
   ltheta_heterocoop_R532A        = log10(theta_heterocoop_R532A     )
   ltheta_heterocoop_R742A        = log10(theta_heterocoop_R742A     )

   ltheta_homocoop        = log10(theta_homocoop     )
   ltheta_homocoop_R532A        = log10(theta_homocoop_R532A     )
   ltheta_homocoop_R742A        = log10(theta_homocoop_R742A     )

   %ltheta_anticoop      = log10(theta_anticoop   )
   %ltheta_heterocoop    = log10(theta_heterocoop )
   %ltheta_homocoop      = log10(theta_homocoop   )

    plot(M,theta_uncoop     ,'-r') ; hold on; 
    plot(M,theta_uncoop_R532A     ,'-g') ; 
    plot(M,theta_uncoop_R742A     ,'-b') ; 

    plot(M,theta_heterocoop     ,'+r') ; 
    plot(M,theta_heterocoop_R532A     ,'+g') ; 
    plot(M,theta_heterocoop_R742A     ,'+b') ; 

    plot(M,theta_homocoop     ,'*r') ; 
    plot(M,theta_homocoop_R532A     ,'*g') ; 
    plot(M,theta_homocoop_R742A     ,'*b') ; 

