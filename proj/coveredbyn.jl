n #obs in record
N = n|>factor|>collect

[p .^ (0:a) for (p,a) in N]
∏ = Base.product
prod.(first.(N) .^ Base.product((:).(0,last.(N))))
Base.product( (:).(0,last.(N))...) .|> (v->first.(N) .^)

prod.(∏([p .^ (0:a) for (p,a) in N]...))