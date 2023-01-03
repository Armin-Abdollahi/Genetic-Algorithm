function population = Initialize(popSize, n)

population = zeros(popSize, n);

for i=1:popSize
    population(i,:)=randperm(n);
end

end