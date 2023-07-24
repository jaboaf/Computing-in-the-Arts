using Primes:factor
# provides (a representative of) a generator of ℤ/nℤ
generator(n::Integer) = 
n|>factor|> collect .|> ( x -> 1// first(x)^last(x)) |> sum |> mod1 )

subgroup_generators(n::Integer) =
P = n|>factor|>collect.|>first
K = n|>factor|>collect.|>last
A = map(CartesianIndices( (:).(0,K) )) do k
	sum(1 .// (P .^ k)) |> r->mod(r.num,r.den)
end
A[zeros(length(P))...]=n
return A