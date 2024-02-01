function avg_p_value = runFriedmanTest(dataStruct)
    numTables = 10;
    arrayJoints = {'indexPIP', 'indexMCP', 'middlePIP', 'middleMCP', 'ringPIP', 'ringMCP', 'littlePIP', 'littleMCP', 'thumbPIP', 'thumbMCP'};
    pValues = zeros(1, numTables);

    disp('Friedman Test:');
    for i = 1:numTables
        sub = table2array(dataStruct.(arrayJoints{i}));
        
        % Friedman
        pValues(i) = friedman(sub, 1, 'off');
    end

    if all(pValues > 0.05)
        disp('Null Hypothesis accepted. No significant differences exist.');
    else
        disp('Null Hypothesis rejected.');
    end

    % boxplot
    figure;
    boxplot(pValues);
    xlabel('Subjects');
    ylabel('P-values');
    title('Friedman test between subjects: p-values');
    
    avg_p_value = mean(pValues);
    disp(avg_p_value);
end
