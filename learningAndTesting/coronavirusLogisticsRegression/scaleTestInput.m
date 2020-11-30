function newInputs = scaleTestInput(input)
    load scaleFile.txt;
    newInputs = input./scaleFile;