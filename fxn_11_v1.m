function theta = fxn_11_v1(model,C_tot,A_tot)
%
% theta= fxn_11_v1(model,C,A) ;
%
% computes the fraction bound given a model structure,
% an array of Cenp-C concentrations C and an equally-sized
% array of Cenp-A concentrations A. "model" is required to have
% the following elements: 
% model.kccm
% model.kcr
% model.krm
% model.kmr
%
%   Differs from previous versions in that 
%
%
%
%
%

    if (   ~isfield(model,"kccm") ||
           ~isfield(model,"kcr") ||
           ~isfield(model,"kmr") ||
           ~isfield(model,"krm") ) 
        error('Not all necessary parameters are supplied by the input model') ;
    elseif ( length(C_tot) != 1 || length(A_tot) != 1)
        error('Both C_tot or A_tot must have length 1 to avoid conflation of independent vars.')
    else
    

    kapp=  1/model.kccm + 1/model.kcr +  0.5 / ( model.krm * model.kcr )  + 0.5 / ( model.kmr * model.kccm ); 

    %roots([ C_tot*kapp -1*(A_tot*kapp+C_tot*kapp+1) A_tot*kapp ])

    theta = min(roots([ C_tot*kapp -1*(A_tot*kapp+C_tot*kapp+1) A_tot*kapp ]) ) ; 

end

