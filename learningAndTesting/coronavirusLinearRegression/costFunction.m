function cost =  costFunction(constants, xData, yData)

cost = sum(([ones(length(xData),1) xData]*constants - yData) .^2) / 2 / length(xData);