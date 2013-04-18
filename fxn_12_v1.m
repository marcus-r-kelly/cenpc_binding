function theta = fxn_12_v1(model,C,A)
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
% model.kr2
% model.km2
%
%
%

    theta=[] ; 

    if (   ~isfield(model,"kccm") ||
           ~isfield(model,"kcr") ||
           ~isfield(model,"kmr") ||
           ~isfield(model,"krm") ||
           ~isfield(model,"km2") ||
           ~isfield(model,"kr2") ) 
        error('Not all necessary parameters are supplied by the input model') ;
    elseif ( length(C) != 1 || length(A) != 1)
        error('Both C_tot or A_tot must have length 1 to avoid conflation of independent vars.')
    else
    
    F= (1 /  model.kcr + 1/model.kccm )  ;
    U=(1/(2*model.krm*model.kcr) + 1/(2*model.kmr*model.kccm) %
             + 1/(model.kr2*model.kcr) + 1/(model.km2 * model.kccm)) ; 

    possible_thetas=roots([C^2*U (-C*U*A-C*F-2*C^2*U) (1 + F*A + 2*C*U*A + F*C + C^2*U) (-1*F*A - C*A*U)]) ; 

    for ( i=1:length(possible_thetas) )
        if (isreal(possible_thetas(i)) && possible_thetas(i) <=1 && possible_thetas(i) >= 0 )
            theta=possible_thetas(i) ; 
        end
    end

    if ( isempty(theta) )
        error('No valid values of theta could be determined') ;    
    end

    %theta = min(roots([C^2*U (-C*U*A-C*F-2*C^2*U) (1 + F*A + 2*C*U*A + F*C + C^2*U) (-1*F*A - C*A*U)])); 

end

