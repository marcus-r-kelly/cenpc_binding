function theta = compute_fxn_11 (model,C,A)
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

    if (isfield(model,"kccm") &&
        isfield(model,"kcr") &&
        isfield(model,"kmr") &&
        isfield(model,"krm") ) 

    top= A * ( 1/model.kccm + 1/model.kcr +  0.5 / ( model.krm * model.kcr )  + 0.5 / ( model.kmr * model.kccm )); 
    top' 

    bottom= 1 + top ; 
    bottom'

    theta=top./bottom

    else
        error('Not all necessary parameters are supplied by the input model') ;
    end

end

