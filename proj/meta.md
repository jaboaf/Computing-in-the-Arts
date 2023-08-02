OD
[ ] dependencies
[ ] AIFF file format
[ ] develop sound lib
[ ] upload channel pic
[ ] picture of sound module thing
[ ] note [smpl](https://www.recordingblogs.com/wiki/sample-chunk-of-a-wave-file) and cue  chunks

I want(ed) to make music with record(ing)s. Various computer applications exist.

Most, many, and all i've encountered provide a 'GUI' natigated via point-click-drag. Not the interface I envision using (or yearn for), nor accessible[^1]. There's a lot of magic that seems to go on behind the scenes and that freaks me the fuck out.

Also, I was very sad when I plugged in an analog keyboard to the USB port on my Mac and couln't associate arbitrary sounds to *those* keys (112 buttons, 1 wheel) through various applications.
?what other kinds of keys are there?

![](keyboard.HEIC)


not to mention, exercising options.
So real device interface does not always coincide with application interface.


EFFECTs

need a live programmable interface to speaker channels.

CHANNELS DO WORK WITH WAV.jl
```julia
tc4 = wavread("../test/trumpet-C4.wav", format="native");
wavplay([zeros(eltype(tc4[1]),length(tc4[1])) tc4[1] ],tc4[2]);
wavplay([tc4[1] zeros(eltype(tc4[1]),length(tc4[1])) ],tc4[2])
```
WORKS
```julia
io=open("filename.html","w");
show(io,MIME("text/html"),TC4)
```

SCHEDULING A TASK (expression or callable symbol) YIELDS IMMEDIATELY bc a.s. ccall gets higher order precesence than a jl expr to be passed to eval
~mayb because wavplay calls CFRunLoopRun() after AudioQueueStart
~mayb just write your own callback...
~mayb @threadccall every ccall ? does this function the same for @cfunction defined stuff
~mayb @inline shit ?..
> just get down and dirty with ccall s to AudioToolbox and CoreAudio.
> or figure it out in C.
> if neither of those work its your fault
FYI 
```julia
Base.Sys|>names Base.Sys.cpu_summary()
```

PS WAV.jl alternatives exist. idt any can natively loop & esp do that and let you mutate the class function. PortAudio.jl does provide interface for callback of some kind which supports C_NULL exclusively.
html output works which is nice
```julia
io=open("filename.html","w");
show(io,MIME("text/html"),TC4)
```



[^1]: The MIDI Association. Music Accessibility Standard Webinar May 27. https://www.youtube.com/watch?v=PRjvOY9_X28
