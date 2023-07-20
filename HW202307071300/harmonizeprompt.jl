# HW Prompt
p=["ECGFEDEFGAGFEFEDCBCBCDEDEFGDGFEFGEDCDgC"...]
d=Rational[1;1;3//2;1//2;1//2;1//2;1//2;1//2;2;1;1;1;1;1//2;1//2;1//2;1//2;2;1//2;1//2;1//2;1//2;1//2;1//2;1//2;1//2;1;1;3//2;1//2;1//2;1//2;1;1//2;1//2;1;1;1;2]
include("Cmajorharmonics.jl")
P=uppercase.(p)
z=[2;3;1]
h = rand([α; n->β(n)[z]; n->γ(n)[z[z]] ], length(p))
@assert P == (P.|>h.|>first)
X = map(P.|>h) do s
	if s[1]<s[2]<s[3] lowercase(s)
	elseif s[2]<s[3] lowercase(s[1])*s[2:3]
	else  lowercase(s[1:2])*s[3] end
end
swapcase(c::Char) =
	islowercase(c) ? uppercase(c) :
	isuppercase(c) ? lowercase(c) :
	c
X[length(P)-1] = map(swapcase,X[length(P)-1])
X = map(X) do x
	map(swapcase,x)*x
end
@assert p == first.(X)
println(X .* p)
println(map(x->rand(x),X))
println(0x01)