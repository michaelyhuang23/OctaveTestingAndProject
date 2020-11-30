function newInputs = scaleInputs(inputs)
    newScales = sum(inputs')'/size(inputs)(1,2);
    for i = [1:size(inputs)(1,2)],
        inputs(:,i) ./= newScales;
    end;
    save scaleFile.txt newScales;
    newInputs = inputs;
