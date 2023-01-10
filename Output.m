function Output(genNum, fitnesses1)

avg_fit = mean(fitnesses1);
max_fit = max(fitnesses1);

fprintf('\n------- GenNum:%d -------', genNum);
fprintf('\nAvg Fit: %f', avg_fit);
fprintf('\nMax Fit: %f \n\n', max_fit);

end