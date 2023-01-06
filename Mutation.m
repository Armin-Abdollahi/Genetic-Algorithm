%Swap Mutation
function childs = Mutation(offsprings, popSize, n, Pm)

childs = offsprings;

for i=1:popSize
    r = rand(); %Random number between 0 and 1
    if(r<=Pm)
        r1 = randi([1, n]);
        r2 = randi([1, n]);
        temp = childs(i, r1);
        childs(i, r1) = childs(i, r2);
        childs(i, r2) = temp;
    else

    end
end

end