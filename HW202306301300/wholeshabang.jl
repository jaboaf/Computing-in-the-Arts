F = filter(x->x[12]!='.',readdir("Falling Up",join=true))
poems = read.(F) #::Vector{Vector{UInt8}}
alphabet = sort(union(poems...)) #::Vector{UInt8}
write("alphabet.txt",alphabet);
for poem in poems

i = findfirst(0x0a,poem)
push!(lines, poem[1:i-1])

