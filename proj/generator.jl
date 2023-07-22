using Primes:factor
# provides (a representative of) a generator of ℤ/nℤ
generator(n::Integer) = 
n|>factor|> collect .|> ( x -> 1// first(x)^last(x)) |> sum |> (r -> mod(r.num,r.den) )