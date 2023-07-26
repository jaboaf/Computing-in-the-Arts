write("endianess",0x0000ac44)
read("endianess",UInt8)
read("endianess",UInt16)
read("endianess",UInt32)
read("endianess",Int8)
read("endianess",Int16)


#= NOT EFFECTIVE. HACK something together with audioqueue file in WAV.jl 
TC4() = wavplay(tc4[1],tc4[2]);
tsk = Task(TC4)
istaskdone(tsk)
istaskstarted(tsk)
schedule(tsk)
=#

for f in dir()
	w = wavread(f,format="native")
	f
	WAV.getformat(w[4]).compression_code
	isformat(WAV.getformat(ans),WAVE_FORMAT_PCM)