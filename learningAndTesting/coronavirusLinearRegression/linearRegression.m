function results = linearRegression(constants, xData, yData, learningRate, threshold, flexibility)
    
    oldCost=costFunction(constants,xData,yData);
    disp(sprintf('first varient: %0.2f with initial learning rate of %f', oldCost,learningRate));
    while true,
        constants=gradientDescent(constants,xData,yData,learningRate);
        newCost = costFunction(constants,xData,yData);
        changeRatio=(oldCost-newCost)/oldCost;
        if changeRatio<0,
            learningRate*=abs(oldCost/(oldCost+newCost));
        else
            learningRate+=learningRate/changeRatio*flexibility;
        end;
        if changeRatio>0 && changeRatio < threshold,
            break;
        end;
        oldCost=newCost;
    end;
    disp(sprintf('last varient: %0.2f with final learning rate of %f',oldCost,learningRate));
    results = constants;