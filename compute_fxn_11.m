function theta = compute_fxn_21 (model,C,A)
%
% theta= compute_fxn(model,C,A) ;
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

    if (isfield(model,kccm) &&
        isfield(model,kccm) &&
        isfield(model,krb) &&
        isfield(model,kmb) ) 

    top= 1/model.kccm + 1/model.kcr + C .* ( 0.5 / ( model.krb * model.kccr )  + 0.5 / ( model.kmb * model.kccm ) ); 

    bottom= 1./A + top ; 

    theta=top./bottom

    else
        error(1,'Not all necessary parameters are supplied by the input model') ;
    end

end

