j = (a,b) -> (
for i in 1:length(a)
	if a[i] != b[i]
		return a[1:i-1] end
end;
return a
)
#also:  *("(a,b)->",[" a[$i]!=b[$i] ? a[1:$i-1] :" for i in 1:length(A)]..., " exit()")|>Meta.parse|>eval

J = (A,B) -> if length(A)<=length(B) j(A,B) else j(B,A) #=J(B,A)=# end
# also (A,B) -> length(A)<=length(B) ? j(A,B) : j(B,A) #J(B,A)
# so also (A,B) -> length(A)<=length(B) ? j(A,B) : j(B,A) #J(B,A)

#note that ( a=b if j(a,b)=j(b,a) ) and ( j(a,b)=J(b,a) if a=b )
#and the same for 
(a,b) -> (
for i in 1:length(a)
	if a[i] != b[i]
		return (a[1:i-1], (a[i:end],b[i,end])) end
end;
return (a,(a[i+1:end],b[i+1:end])
)

# or
(a,b) -> (
for i in 1:length(a)
	if a[i] != b[i]
		return (a[1:i-1], Set((a[i:end],b[i,end]))) end
end;
return (a,Set((a[i+1:end],b[i+1:end])))
)
#this would yield the same for (a,b) and (b,a) when j(a,b)=j(b,a)
#and if we protect it like J protects j then the above statement would with J  
#say (a,b) -> length(a)<=length(b) ? GOTO #25 ($a,$b) : GOTO #25(b,a)
#see methods(@eval)


#note
() 







