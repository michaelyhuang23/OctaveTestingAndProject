function resultConstants = logisticRegression(constants, inputs, outputs, learningRate, endThreshold)
    cost = costFunction(constants, inputs, outputs);
    while true,
        constants -= getGradients(constants, inputs, outputs)*learningRate;
        newCost = costFunction(constants,inputs,outputs);
        if (cost - newCost) / cost < endThreshold,
            break;
        end;
        cost = newCost;
    end;
    resultConstants = constants;
