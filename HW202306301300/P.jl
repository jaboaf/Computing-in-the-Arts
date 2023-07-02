s = read(Unfair.txt)
if s==UInt8[] return UInt8[]
if 0x0a in s[1,end] return UInt8[] #
f = findfirst(==(0x0a),s)
if f==nothing return exit()
if s[f+1]