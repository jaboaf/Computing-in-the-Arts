import Base.:-
import Base.:+

-(A::Vector{String},B::Vector{String}) =
	m = minimum([length(A),length(B)])
	if m<1 return String[] end
	f = findfirst(i-> A[i]!=B[i],1:m)
	if f == nothing return A
	else return A[1:(f-1)]
	end
end

function +(A::Vector{String},B::Vector{String})
	m = minimum([length(A),length(B)])
	return A[findall(i-> A[i]==B[i],1:m)]
end