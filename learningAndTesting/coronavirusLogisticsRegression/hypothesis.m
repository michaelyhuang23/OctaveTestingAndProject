function hypo = hypothesis(constants, input)
    hypo = (1./(1+e.^(-(constants')*input)))';