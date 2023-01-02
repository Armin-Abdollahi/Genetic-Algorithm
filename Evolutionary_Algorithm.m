function Evolutionary_Algorithm()
clc
%Input Parameters
N=8;
Pop_Size=30;
Pc=0.7;
Pm=0.3;
Max_Gen=100;
%Variables
Population=zeros(Pop_Size,N);
Parents=zeros(Pop_Size,N);
Offsprings=zeros(Pop_Size,N);
Childs=zeros(Pop_Size,N);
Fitnesses_1=zeros(1,Pop_Size);
Fitnesses_2=zeros(1,Pop_Size);
Gen_Num=0;
Population=initialize(Pop_Size,N);
Fitnesses_1=Evaluate(Population, Pop_Size,N);
while (~Isterminate(Gen_Num,Max_Gen,Fitnesses_1))
    Parents=Select_Parents(Population,Fitnesses_1,Pop_Size,N);
    Offsprings=Recombination(Parents,Pop_Size,N,Pc);
    Childs=mutation(Offsprings,Pop_Size,N,Pm);
    Fitnesses_2=Evaluate(Childs,Pop_Size,N);
    [Population,Fitnesses_1]=Replacement(Population,Childs,Fitnesses_1,Fitnesses_2,Pop_Size);
    Output(Gen_Num,Fitnesses_1);
end

end