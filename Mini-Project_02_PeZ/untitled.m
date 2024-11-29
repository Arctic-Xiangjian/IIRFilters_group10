inputFolder = '.'; 
wavFiles = dir(fullfile(inputFolder, '*.wav'));


for i = 1:length(wavFiles)

    inputFile = fullfile(inputFolder, wavFiles(i).name);
    

    [signal, sampleRate] = audioread(inputFile);

    [~, name, ~] = fileparts(wavFiles(i).name);
    outputFile = fullfile(inputFolder, [name, '.mp3']);

    audiowrite(outputFile, signal, sampleRate);
end
