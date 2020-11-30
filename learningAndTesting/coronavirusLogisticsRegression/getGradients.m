function gradients = getGradients(constants, inputs, outputs)
    differences = hypothesis(constants, inputs) - outputs;
    gradients = inputs*differences./length(outputs);
