# PRESENTATION
using WAV, Plots, Primes, MIDI
# this whole thing relies on work of other humans who have been kind enough to share their work with the world

#=ImageInTerminal 
turn off: ImageInTerminal.disable_encoding()
turn on: ImageInTerminal.enable_encoding()
ImageView
=#
const cdhz = 44100

# named functions
# A for audio output
# V for viusal output
# AV for audio/visual output
println("|name|compression_code|nchannels|sample_rate|bytes_per_second|block_align|nbits")
println("|---"^7)
for f in readdir("wavs")
if f[length(f)-2 : end] == "wav"
    F = wavread("wavs/$f",format="native")[4]|>WAV.getformat;
    println("$f | $(F.compression_code) | $(F.nchannels) | $(F.sample_rate) | $(F.bytes_per_second) | $(F.block_align) | $(F.nbits) ")
end
end

pc4 =  wavread("wavs/piano-C4.wav",format="native");
pc5 =  wavread("wavs/piano-C5.wav",format="native");
pc6 =  wavread("wavs/piano-C6.wav",format="native");

tc4 =  wavread("wavs/trumpet-C4.wav",format="native");
tc5 =  wavread("wavs/trumpet-C5.wav",format="native");
tc6 =  wavread("wavs/trumpet-C6.wav",format="native");

frogg = wavread("wavs/froggg.wav",format="native");
froggerworks = wavread("wavs/froggerworks.wav",format="native");
agua = wavread("wavs/ludloville water.wav",format="native");
willy = wavread("wavs/willy are you a transformer.wav",format="native");
chipchirp = wavread("wavs/rapid chirp strait.wav",format="native");
gramjoing = wavread("wavs/graham banjoing.wav",format="native");
hyjamhy = wavread("wavs/hydraulic jack hammer hydraulic",format="native");