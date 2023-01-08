function [newSolutions, newFitnesses] = Replacement(population, childs, fitnesses1, fitnesses2, popSize)

allSolutions = [population; childs];
allFitnesses = [fitnesses1, fitnesses2];

[~, indices] = sort(allFitnesses, 'descend');
SelectIndices = indices(1:popSize);

newSolutions = allSolutions(SelectIndices, :);
newFitnesses = allFitnesses(SelectIndices);

end