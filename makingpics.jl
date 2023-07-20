using Plots ; plotlyjs()

makepic(P,a,Q,b) = k -> (
	plot(aspect_ratio=1,legend=false);
	scatter!([P],color="blue",ms=0.5);
	scatter!([Q],color="red",ms=0.5);
	scatter!( k|>r(P,a),color="yellow",ms=0.5);
	scatter!( k|>R(P,a)|>r(Q,b), color="yellow",ms=0.5)
	)
R(p,θ) = x-> (x-p)* exp(2*pi*im*θ) + p
r(p,θ) = x -> [ x|>R(p,t) for t in 0:1/360:θ]
# observe the 1/360

# say
P = 0+0im
a = 42
Q = -2.5 -2.5im
b = 25

# say
k = -1 + 4im

# e.g.
k |> makepic(P,a,Q,b)