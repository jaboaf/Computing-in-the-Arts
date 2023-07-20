prompt=collect("ECGFEDEFGAGFEFEDCBCBCDEDEFGDGFEFGEDCDgC")
L=Rational[1;1;3//2;1//2;1//2;1//2;1//2;1//2;2;1;1;1;1;1//2;1//2;1//2;1//2;2;1//2;1//2;1//2;1//2;1//2;1//2;1//2;1//2;1;1;3//2;1//2;1//2;1//2;1;1//2;1//2;1;1;1;2]
# A way
see = collect("BCDEFGA")
f(c) =
	c in see ? findfirst(==(c),see)-1 :
	uppercase(c) in see ? f(uppercase(c))-7 :
	exit()
p = 6*7 .+ f.(prompt)
r = rand([2 2 3; 4 5 5; 7 7 7],39) + 7*rand(Bool,39)
a = p .- r
#7^1 place is octave, 7^0 place is note in see octave
#julia default is Int64 so bitwise works too
N = getfield.(L * lcm(getfield.(L, :den)), :num)
@assert 1 in N
scoresheetcol = ("| "^25)[1:49]
(println( (*(see...)^7)[1:32]*" "*(*(see...)^7)[34:40]*" "*(*(see...)^7)[42:end]);
println(" "^32 * "F" * " "^7 * "g" * " "^7 * " ");
for z in a println(scoresheetcol[1:z-1] * "O" * scoresheetcol[z+1:end]) end)

ontoMidiPiano(n) =
	12*floor(Int,n/7) + (
	n%7 ==0 ? -1 :
	n%7 ==1 ? 0 :
	n%7 ==2 ? 2 :
	n%7 ==3 ? 4 :
	n%7 ==4 ? 5 :
	n%7 ==5 ? 7 :
	n%7 ==6 ? 9 :
	exit())

open("hw.mid","w") do f
write(f,0x4d,0x54,0x68,0x64) # MThd
write(f,0x00,0x00,0x00,0x06) # 6 bytes
write(f,0x00,0x00) # format 0
write(f,0x00,0x01) # ntrcks 1
write(f,0x00,0x02) # ticks-per-quaver 2
write(f,0x4d,0x54,0x72,0x6B) # MTrk
write(f,0x00,0x00,0x00,0xef) # 239 bytes
write(f,0x00,0x90) # 0 ticks Note On Ch 1
for i in 1:39
	# a[i] On w/ velocity 64 for N[i] ticks 
	write(f,UInt8(ontoMidiPiano(a[i])),0x40,UInt8(N[i]))
	# a[i] On w/ velocity 0 for 0 ticks)
	write(f,UInt8(ontoMidiPiano(a[i])),0x00,0x00)
end
write(f,0xff,0x2f,0x00) # end of track
end

open("hwprompt_and_hw.mid","w") do f
write(f,0x4d,0x54,0x68,0x64) # MThd
write(f,0x00,0x00,0x00,0x06) # 6 bytes
write(f,0x00,0x00) # format 0
write(f,0x00,0x01) # ntrcks 1
write(f,0x00,0x02) # ticks-per-quaver 2
write(f,0x4d,0x54,0x72,0x6B) # MTrk
write(f,0x00,0x00,0x01,0xd9) # 473 bytes
write(f,0x00,0x90) # 0 ticks Note On Ch 1
for i in 1:39
	write(f,UInt8(ontoMidiPiano(p[i])),0x40,0x00)
	write(f,UInt8(ontoMidiPiano(a[i])),0x40,UInt8(N[i]))
	write(f,UInt8(ontoMidiPiano(p[i])),0x00,0x00)
	write(f,UInt8(ontoMidiPiano(a[i])),0x00,0x00)
end
write(f,0xff,0x2f,0x00) # end of track
end

using MIDI
file = MIDIFile()
file.tpq=lcm(getfield.(L, :den))
track = MIDITrack()
notes = Notes(tpq=lcm(getfield.(L, :den)))
pos = [0;cumsum(N)]
for i in 1:39
	push!(notes, Note( ontoMidiPiano(a[i]),pos[i],duration=N[i]) )
end
addnotes!(track, notes)
push!(file.tracks, track)
save("hw_via_MIDI_julia_Pkg.mid", file)