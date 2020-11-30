function newConstants = gradientDescent (constants, xData, yData, growthRate)

    differenceMatrix = ([ones(length(xData),1) xData]*constants - yData);
    newConstants = constants-[sum(differenceMatrix) ; sum(differenceMatrix .* xData)] * growthRate / length(xData);
    