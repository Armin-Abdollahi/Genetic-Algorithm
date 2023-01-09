function out = IsTerminate(genNum, maxGen, fitnesses1)

found = any(fitnesses1==1);

if(found==true || genNum > maxGen)
    out = true;
else
    out = false;
end

end