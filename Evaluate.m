function fitnesses = Evaluate(solutions, popSize, n)

fitnesses = zeros(1, popSize);

for i=1:popSize
    sol = solutions(i, :);

    %Calculate errors
    error = 0;
    for a=1:n-1
        for b=a+1:n
            a_row = sol(a);
            a_col = a;
            b_row = sol(b);
            b_col = b;

            diff_row = abs(a_row - b_row);
            diff_col = abs(a_col - b_col);

            if(diff_row == diff_col)
                error = error + 1;
            end
        end
    end
    fitnesses(i) = 1/(error + 1);
end
end