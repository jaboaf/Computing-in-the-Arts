F = filter(x->x[12]!='.',readdir("Falling Up",join=true))
poems = read.(F) #::Vector{Vector{UInt8}}
alphabet = sort(union(poems...)) #::Vector{UInt8}
write("alphabet.txt",alphabet);

