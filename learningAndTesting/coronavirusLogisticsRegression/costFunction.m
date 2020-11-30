function cost = costFunction(constants, inputs, outputs) # each dataset goes vertically downward
    hypo=hypothesis(constants,inputs);
    costs = (-outputs.*log(hypo)-(1-outputs).*log(1-hypo));
    cost = sum(costs)/length(outputs);
