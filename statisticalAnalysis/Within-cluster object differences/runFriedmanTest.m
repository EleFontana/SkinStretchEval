function avg_p_value = runFriedmanTest(dataStruct)

    array_joints = {'indexPIP', 'indexMCP', 'middlePIP', 'middleMCP', 'ringPIP', 'ringMCP', 'littlePIP', 'littleMCP', 'thumbPIP', 'thumbMCP'};
    
    disp('Friedman Test:');
    
    %tabella sui cui fare il test
    sub = table2array(dataStruct);
    
    % Friedman
    pValues = friedman(sub,1,"off");
    
    
    if all(pValues > 0.05)
        disp('Null Hypothesis accepted. No significant differences exist.');
    else
        disp('Null Hypothesis rejected.');
    end

    % boxplot
    figure;
    boxplot(pValues);
    xlabel('Clusters');
    ylabel('P-values');
    title('Friedman test within clusters: p-value');
    
    avg_p_value = mean(pValues);
    disp(avg_p_value);

end
