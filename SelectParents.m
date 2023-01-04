function parents = SelectParents(population, fitnesses1, popSize, n)

parents = zeros(popSize, n);

s = sum(fitnesses1);
p = fitnesses1 / s;
a = cumsum(p);

for i=1:popSize
    r = rand();
    selectedIndex = find(a>=r, 1);
    parents(i, :) = population(selectedIndex, :);
end

end