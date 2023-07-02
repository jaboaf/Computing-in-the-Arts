# k is the top, indexes c-major harmonics 
k = "CEFEDEFGFEFEDEDCDEFGFEDC"
# duration seq. same for all parts
d = [2;2;1;1;1//2;1//2;1;3//2;1//2;2;3//2;1//2;2;3//2;1//2;1//2;1//2;1//2;1//2;1;1;1;1;4]

α(n) =
	n=='C' ? "CEG" :
	n=='D' ? "DFA" :
	n=='E' ? "EGB" :
	n=='F' ? "FAC" :
	n=='G' ? "GBD" :
	n=='A' ? "ACE" :
	n=='B' ? "BDF" :
	exit()

r(n) =
	n=='C' ? 'A' :
	n=='D' ? 'B' :
	n=='E' ? 'C' :
	n=='F' ? 'D' :
	n=='G' ? 'E' :
	n=='A' ? 'F' :
	n=='B' ? 'G' :
	exit()
β(n) = α(r(n))
γ(n) = α(r(r(n)))
# incidence
L(n) = [α(n),β(n),γ(n)];
