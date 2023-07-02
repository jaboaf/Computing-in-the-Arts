import Base.:-

function -(A::String,B::String)
	w = ""
	m = minimum([length(A),length(B)])
	for i in 1:m
		if A[i] == B[i]
			w *= ' '
		else
			w *= B[i]
		end
	end
	if m<length(B)
		return w * B[m+1:end]
	else
		return w
	end
end

o = unique!(sort(readlines("words.txt")))

W() = o
function W(s::String)
	filter(s,W())

PRE = readlines("PREs.txt")
po = vcat(map(p->repeat([p],length(p)),PRE)...)
LB(A) = vcat(map(a->repeat([a],length(a)),A)...)
em = Dict([p=> filter(==(p),o)for p in PRE])
rand(po,14)
