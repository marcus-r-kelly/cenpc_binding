% BAI manuscript, table S1 (kd in uM):
%   CENP-C_426-550 0.3
%   CENP-C_426-537 0.4****
%   CENP-C_444-537 0.3
%   CENP-C_469-537 0.3
%   CENP-C_513-537 1.8
%   CENP-C_520-537 2.7

% BAI manuscript, table S3
%   CENP-C727-767 H31-132-LEEGLG 1.4 ****
%   CENP-C727-767 H31-132(CATD)-LEEGLG* 1.3
%   CENP-C735-767 H31-132-LEEGLG 2.6
%   CENP-C727-767 H31-132-LEEGLG (H2A E60K) ----
%   CENP-C727-767 H31-132-LEEGLG (H2A E63K) ----
%   CENP-C727-767 H31-132-QFI 3.0
%   CENP-C444-537 H31-132-QFI 0.2


% the general two-to-one model: a template

%   general_two_to_one.kccm = 1.4
%   general_two_to_one.kccr = 0.6 
%   general_two_to_one.krm  =
%   general_two_to_one.kmr  =
%   general_two_to_one.km2  =
%   general_two_to_one.kr2  =

cooperativity_fudge=10^3 ; 
nobinding_fudge=10^6 ; 
lit_kccm=1.4  ;
lit_kcr=0.6 ; 

% Two-to-one, anticooperative between domains

anticoop21.kccm = lit_kccm ; 
anticoop21.kcr = lit_kcr ;
anticoop21.krm  = anticoop21.kccm*cooperativity_fudge ;
anticoop21.kmr  = anticoop21.kcr*cooperativity_fudge ; 
anticoop21.km2  = anticoop21.kccm ; 
anticoop21.kr2  = anticoop21.kcr ; 
anticoop21.description = 'Once bound, Cenp-C prefers to engage Cenp-A with the same type of domain.' ; 

uncoop21.kccm = lit_kccm ; 
uncoop21.kcr = lit_kcr ;
uncoop21.krm  = uncoop21.kccm ;
uncoop21.kmr  = uncoop21.kcr ; 
uncoop21.km2  = uncoop21.kccm ; 
uncoop21.kr2  = uncoop21.kcr ; 
uncoop21.description = 'Domains are effectively indpeendent of each other' ; 

heterocoop21.kccm = lit_kccm ; 
heterocoop21.kcr = lit_kcr ;
heterocoop21.krm  = heterocoop21.kccm / cooperativity_fudge ;
heterocoop21.kmr  = heterocoop21.kcr / cooperativity_fudge ; 
heterocoop21.km2  = heterocoop21.kccm ; 
heterocoop21.kr2  = heterocoop21.kcr ; 
heterocoop21.description = 'Domains promote the binding of the other type of domain' ; 

homocoop21.kccm = lit_kccm ; 
homocoop21.kcr = lit_kcr ;
homocoop21.krm  = homocoop21.kccm / cooperativity_fudge ;
homocoop21.kmr  = homocoop21.kcr / cooperativity_fudge ; 
homocoop21.km2  = homocoop21.kccm ; 
homocoop21.kr2  = homocoop21.kcr ; 
homocoop21.description = 'Domains promote the binding of the same type of domain' ; 

%R532A -- central region KD is nobinding_fudge

anticoop21_R532A.kccm = lit_kccm ; 
anticoop21_R532A.kcr = nobinding_fudge ;
anticoop21_R532A.krm  = anticoop21_R532A.kccm*cooperativity_fudge ;
anticoop21_R532A.kmr  = nobinding_fudge ; 
anticoop21_R532A.km2  = anticoop21_R532A.kccm ; 
anticoop21_R532A.kr2  = nobinding_fudge ; 
anticoop21_R532A.description = 'Once bound, Cenp-C prefers to engage Cenp-A with the same type of domain.' ; 

uncoop21_R532A.kccm = lit_kccm ; 
uncoop21_R532A.kcr = nobinding_fudge ;
uncoop21_R532A.krm  = uncoop21_R532A.kccm ;
uncoop21_R532A.kmr  = nobinding_fudge ; 
uncoop21_R532A.km2  = uncoop21_R532A.kccm ; 
uncoop21_R532A.kr2  = nobinding_fudge ; 
uncoop21_R532A.description = 'Domains are effectively indpendent of each other' ; 

heterocoop21_R532A.kccm = lit_kccm ; 
heterocoop21_R532A.kcr = nobinding_fudge ;
heterocoop21_R532A.krm  = heterocoop21_R532A.kccm / cooperativity_fudge ;
heterocoop21_R532A.kmr  = nobinding_fudge ; 
heterocoop21_R532A.km2  = heterocoop21_R532A.kccm ; 
heterocoop21_R532A.kr2  = nobinding_fudge ; 
heterocoop21_R532A.description = 'Domains promote the binding of the other type of domain' ; 

homocoop21_R532A.kccm = lit_kccm ; 
homocoop21_R532A.kcr = nobinding_fudge ;
homocoop21_R532A.krm  = homocoop21_R532A.kccm / cooperativity_fudge ;
homocoop21_R532A.kmr  = nobinding_fudge ; 
homocoop21_R532A.km2  = homocoop21_R532A.kccm ; 
homocoop21_R532A.kr2  = nobinding_fudge ; 
homocoop21_R532A.description = 'Domains promote the binding of the same type of domain' ; 


%R742A -- CCM KD is nobinding_fudge

anticoop21_R742A.kccm = nobinding_fudge ; 
anticoop21_R742A.kcr = lit_kcr ;
anticoop21_R742A.krm  = nobinding_fudge ;
anticoop21_R742A.kmr  = anticoop21_R742A.kcr*10^3 ; 
anticoop21_R742A.km2  = nobinding_fudge ; 
anticoop21_R742A.kr2  = anticoop21_R742A.kcr ; 
anticoop21_R742A.description = 'Once bound, Cenp-C prefers to engage Cenp-A with the same type of domain.' ; 

uncoop21_R742A.kccm = nobinding_fudge ; 
uncoop21_R742A.kcr = lit_kcr ;
uncoop21_R742A.krm  = nobinding_fudge ;
uncoop21_R742A.kmr  = uncoop21_R742A.kcr ; 
uncoop21_R742A.km2  = nobinding_fudge ; 
uncoop21_R742A.kr2  = uncoop21_R742A.kcr ; 
uncoop21_R742A.description = 'Domains are effectively indpeendent of each other' ; 

heterocoop21_R742A.kccm = nobinding_fudge ; 
heterocoop21_R742A.kcr = lit_kcr ;
heterocoop21_R742A.krm  = nobinding_fudge ;
heterocoop21_R742A.kmr  = heterocoop21_R742A.kcr / cooperativity_fudge ; 
heterocoop21_R742A.km2  = nobinding_fudge ; 
heterocoop21_R742A.kr2  = heterocoop21_R742A.kcr ; 
heterocoop21_R742A.description = 'Domains promote the binding of the other type of domain' ; 

homocoop21_R742A.kccm = nobinding_fudge ; 
homocoop21_R742A.kcr = lit_kcr ;
homocoop21_R742A.krm  = homocoop21_R742A.kccm / cooperativity_fudge ;
homocoop21_R742A.kmr  = nobinding_fudge ; 
homocoop21_R742A.km2  = homocoop21_R742A.kccm ; 
homocoop21_R742A.kr2  = nobinding_fudge ; 
homocoop21_R742A.description = 'Domains promote the binding of the same type of domain' ; 

% One-to-one models

general11.kccm = lit_kccm ;
general11.kcr  = lit_kcr ;
general11.krm  = lit_kccm ;
general11.kmr  = lit_kcr ;
general11.description = 'One-to-one binding, with no cooperativity' ; 

coop11.kccm = lit_kccm ;
coop11.kcr  = lit_kcr ;
coop11.krm  = lit_kccm / cooperativity_fudge ;
coop11.kmr  = lit_kcr / cooperativity_fudge ;
coop11.description = 'One-to-one binding, with cooperativity' ; 

% R532A

general11_R532A.kccm = lit_kccm ;
general11_R532A.kcr  = nobinding_fudge ;
general11_R532A.krm  = lit_kccm ;
general11_R532A.kmr  = nobinding_fudge ;
general11_R532A.description = 'One-to-one binding, with no cooperativity' ; 

coop11_R532A.kccm = lit_kccm ;
coop11_R532A.kcr  = nobinding_fudge ;
coop11_R532A.krm  = lit_kccm / cooperativity_fudge ;
coop11_R532A.kmr  = nobinding_fudge ;
coop11_R532A.description = 'One-to-one binding, with cooperativity' ; 

%  R742A

general11_R742A.kccm = nobinding_fudge ;
general11_R742A.kcr  = lit_kcr ;
general11_R742A.krm  = nobinding_fudge ;
general11_R742A.kmr  = lit_kcr ;
general11_R742A.description = 'One-to-one binding, with no cooperativity' ; 

coop11_R742A.kccm = nobinding_fudge ;
coop11_R742A.kcr  = lit_kcr ;
coop11_R742A.krm  = nobinding_fudge  / cooperativity_fudge ;
coop11_R742A.kmr  = lit_kcr / cooperativity_fudge ;
coop11_R742A.description = 'One-to-one binding, with cooperativity' ; 
