#=desc essentially for some whole number n and x in 1:n,
let C = map(pf -> pf[1]^pf[2],collect(factor(n)))
return Tuple( vec(CartesianIndices(C))[x] )  =# 
function primepowindx(x::Integer,n::Integer)
	if n<1 || x<1 error("<1") end
	if n<x primepowindx(x,n) end
	f = factor(n) |> collect .|> (a -> first(a)^last(a) )
	I = []
	if x % f[1] == 0
		push!(I,f[1])
		y = ((x - f[1])//f[1]).num
	else
		push!(I, x % f[1])
		y = ((x - (x % f[1]))//f[1]).num
	end
	if length(f)==1 return (I[1],) end
	F = f[2:end]
	while F!=[]
		push!(I, (y % F[1]) + 1 )
		y = ((y - (y % F[1]))//F[1]).num
		push!(f, popfirst!(F))
	end
	return tuple(I...)
end

# RHS (1:p^x,...,1:r^z) | CartesianIndices |> vec .|> Tuple
n=60 # say
primepowindx.(1:n,n) == (n |> factor |> collect |> (x-> first.(x) .^ last.(x)) |> Tuple |> CartesianIndices |> vec .|> Tuple)

using Plots
[(k |> factor |>collect |>(x-> first.(x) .^ last.(x)) |> sum )/k for k in 1:5000] |> scatter
savefig("savings_by_n_of_elements.png") #sorta


CartesianIndices(Tuple([ 1:p^a for (p,a) in N])).|>
Tuple.|>
(x -> x.//(first.(N) .^ last.(N)) ).|>
sum.|>
(x-> ((x * n).num % n) +1) |>
vec |> scatter

# (x-> ((x * n).num % n) +1) same as (x-> ((x.num % x.den) * (n//x.den)).num +1)

CartesianIndices(Tuple([ 1:p^a for (p,a) in N])).|>Tuple.|>
(x -> x.//(first.(N) .^ last.(N)) ).|>sum.|>
(x -> (x * n).num ) |>
vec |>scatter

#opt
# (x -> x.num % x.den) |>

function V(n)
	N = n|>factor|>collect
	CartesianIndices(Tuple([ 1:p^a for (p,a) in N])).|>
	Tuple.|>
	(x -> x.//(first.(N) .^ last.(N)) ).|>
	sum.|>
	(x-> ((x * n).num % n) +1) |>
	vec
end

n=120#say
A=zeros(Int,(n,n)); for (i,iv) in enumerate(V(n)) A[i,iv] == 1 end
anim = Animation()
for k in 1:n
	frame(anim, scatter( Tuple.(findall(==(1),A^k)),ticks=[24:24:120;15:15:120;40:40:120],label=false,title="A^$k"))
end
gif(anim,"attempt4.gif")


# why expend energy
using FFTW
@assert ([0;1;0]|>fft|>ifft)==[0;1;0]
@assert ([0;1;0]|>fft) .^ 3 ==[0;1;0]


