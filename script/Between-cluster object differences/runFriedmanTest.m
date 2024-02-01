function avg_p_value = runFriedmanTest(dataStruct)

    numTables = 8; %k cluster
    index = 0;
    arrayJoints = {'indexPIP', 'indexMCP', 'middlePIP', 'middleMCP', 'ringPIP', 'ringMCP', 'littlePIP', 'littleMCP', 'thumbPIP', 'thumbMCP'};
    
    disp('Friedman Test:');
    for i = 1:numTables
    
        sub = table2array(dataStruct.(['cluster' num2str(i)]));
    
        if width(sub) > 1
            index = index + 1;
            if width(sub) > 2
                % Friedman
                pValues(index) = friedman(sub,1,"off");
            else
                % Wilcoxon
                pValues(index) = signrank(sub(:,1), sub(:,2));
            end
        end
    end
    
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
    title('Friedman test between clusters: p-values');
    
    avg_p_value = mean(pValues);
    disp(avg_p_value);

end
