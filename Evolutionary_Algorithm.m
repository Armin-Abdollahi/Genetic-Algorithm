function Evolutionary_Algorithm()

clc

%Input Parameters
n=8;                                 %Number Of Queens
popSize=30;                          %Population Size (Number Of Solutions In The Population)
Pc=0.7;                              %Recombination Probability
Pm=0.3;                              %Mutation Probability
maxGen=199;                          %Maximum Number Of Generations

%Variables
population=zeros(popSize,n);
parents=zeros(popSize,n);
offsprings=zeros(popSize,n);
childs=zeros(popSize,n);
fitnesses1=zeros(1,popSize);         %Fitness Of Old Solutions
fitnesses2=zeros(1,popSize);         %Fitness Of New Solutions (Childs)

genNum=0;                                                            %Generation Number

population=Initialize(popSize,n);                                    %Generate initial population
fitnesses1=Evaluate(population, popSize,n);                          %Calculate the fitness of each individual (solution)
while (~IsTerminate(genNum,maxGen,fitnesses1))                       %Check Termination Condition
    parents=SelectParents(population,fitnesses1,popSize,n);          %Select Parent based on fitness values (Natural Selection)
    offsprings=Recombination(parents,popSize,n,Pc);                  %Recombine [two] parents and generate [two] offsprings
    childs=Mutation(offsprings,popSize,n,Pm);                        %Mutate offspring
    fitnesses2=Evaluate(childs,popSize,n);                           %Calculate the fitness of new individuals (solutions)
    [population,fitnesses1]=Replacement(population,childs,fitnesses1,fitnesses2,popSize);   %Select individuals for the next generation
    genNum=genNum+1;                                                 %Increase Generation Number
    Output(genNum,fitnesses1);                                       %Display Some Information
end

[maxValue, index]=max(fitnesses1);
bestSol=population(index,:);
fprintf('\n-------------------- Final Result --------------------');
fprintf('\nBest Sol Fitness: %f\n', maxValue);
fprintf('\nBest Sol: ');
disp(bestSol);
fprintf('-------------------- END --------------------\n');

end
