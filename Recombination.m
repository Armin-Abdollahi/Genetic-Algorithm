%Order Crossover
function offsprings = Recombination(parents, popSize, n, Pc)

offsprings = zeros(popSize, n);

for i=1:2:popSize
    p1 = parents(i, :);
    p2 = parents(i+1, :);
    o1 = zeros(1, n);
    o2 = zeros(1, n);

    r = rand();
    if(r<=Pc)
        r1 = randi([1, n]);

        %Offspring 1
        o1(1:r1) = p1(1:r1);
        temp = [p2(r1+1:n), p2(1:r1)];
        temp = setdiff(temp, o1);
        o1(r1+1:n) = temp;

        %Offspring 2
        o2(1:r1) = p2(1:r1);
        temp = [p1(r1+1:n), p1(1:r1)];
        temp = setdiff(temp, o2);
        o2(r1+1:n) = temp;
        
    else
        o1 = p1;
        o2 = p2;
    end
    offsprings(i, :) = o1;
    offsprings(i+1, :) = o2;
end
end