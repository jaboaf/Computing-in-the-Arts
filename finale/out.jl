THE wav BITS ON MIDI TICKS
wav patchmap @ mid .ticks

https://www.itu.int/dms_pubrec/itu-r/rec/bt/R-REC-BT.709-6-201506-I!!PDF-E.pdf

names:
CD-DA bits per sector # 75sectors = 1 s

We just couldn't get our stage right entry correct.

The first two steps were on the balls of each foot, the third had to secure a demi-PLEIA while the other foot, pointed and turned out, swept forward to knee hight faster than we demi-plied so un-plieing and flexing our planted calves sprung our planted heels off the ground and brought the pointed foot to the spot it should land on count 4... as the first step of the same phrase, but this time with the oppositite feet.

Tight spacing stole a foot-level peripheral, making syncing-up a blind art and any departure a sore thumb. Our last practice before stage rehersal ended with the entry tune on repeat and eyes glued to the ground.

That– is the last time I heard music.

After a vacation love affair, a few years later, I really started listening to music; or at least to *those* tracks on *that* playlist. So it must've been after that, but before 2018 when I began feeling music. Or maybe it was 2018, cause one day that Summer I stepped and twirled, hopped and bopped, and sang dangled and floated for 19 miles.

The day after that, too.

How ever we encounter sounds. There are delights, and the unmoving, and even those that leave you yearning for a pair of florescent orange foam ear plugs. They cross our paths too.

What ever you find musical. Whatever it may be to you, for some one, or to us. Whereever it is.
    What is it, exactly, that we do?
    do we hear those musical things?
    or maybe we listen.
    do we play those musical things?
    or are we observing them?
    do we sense ?

I wonder.

I'm sure some of us hear musical things. But is it that we hear ?
And many say they listen to musical things. Are they listening ?
Many do play aloud musical things. Yet, few, play.
If blessed to see one playing, what do we mean by that?
At some point we definatley do sense. In what sense?

I wonder because not much else cuts across a partition like musical things: ebbing in the woeful, vibrant among the intimate, and a durable pulse through and throughout community. It sure seems natural– not merely human. And we have yet to see a the greater part of a century globally offering the option to record, playback, copy, edit, and transmit audio and visual matrial.

The effect is undisputably generally positive. Far beyond that– people deeply appreciate and value musical works. How much so is a spectacle:

    At the end of 2021, Bruce Springsteen exchanged master recordings and publishing rights to 20 studio albums with Sony for an estimated $500,000,000. Suppose: there are 20 tracks per album, tracks and their associated rights may be totally ordered by dollar value, and the dollar value of a track with its associated rights is proportional to 1 divided by its rank. And these values partition the total of $500,000,000.

    The highest value track is:
        187046829073114601650818088978393541681209145313523704295048172193984970320336574588961640760313676135013142307766553383804638697532241829188594060015362048530542880992000 // 1228884515967872712251672909004982497901388975685728237120075555522246093340961692523451736163237183161567142377749856340898436843471517588948954743006778882051196591337071
    of half a billion dollars, which is  $76,104,315.19 to the nearest penny. If that track is 4 minutes of CD digital audio:
        4 * 60seconds * 44100frames/second * 2channels/frame * 16bits/channel = 338,688,000 bits or 42,336,000 bytes 
    Then the highest $-value track is $1.80 per byte with associated rights or $0.22 per bit and associated right.

https://www.bbc.com/news/entertainment-arts-59680797
https://www.billboard.com/pro/bruce-springsteen-sells-masters-publishing-sony/

    Only a few collections of data with rights that play in that $-total ballpark come to mind. All of them are financial. Relative to $0.22 per bit and associated right, these collections are likely closer to light year away than not. So an arrangement of bits is valued when its a valued arrangement. In particular, realizing its value requires no interpretation, just some commonplace hardware. Choosing to 'protect' that value, via some method; well, thats up to the rights holder.

A MIDI file will not do. They are to be interpreted. Requiring less common software (capability), permiting variation in the content delivered through the same audio interface on the same device.

DUMP:
- Worthwhile in its mission and executed, incredibly. (A great appreciation is discovered by reading some 1600-odd pages of the FIX Protocol)

Are you sure about that? In "What is MIDI?" published by the MIDI Association, Lehrman writes,
> It is not "music", in that a set of MIDI commands is not the same as a recording, say, of a French horn playing a tune. However, those commands can *describe* the horn performance in such a way that a device receiving them–such as a synthesizer–can *reconstruct* the horn tune with perfect accuracy.

**A French horn playing a tune!** Awesome. Anyways, in the spirit and use of MIDI, I'm sure(-ish). In order for MIDI-file distribution of audio to be on par with digital audio, devices must yeild audio output that is identical or perceptually similar (the -ish) to that produced using digital audio.

MEH: what is a (horn) tune?  How do we know its reconstruction, accurate or not? DOT DOT DOT]

Foregoing digital audio for a MIDI description warrants interpretation. In spirit, this yields an abstraction with the orignal flexibility in the digital audio, but also how and when it is realized. To earn the latter benefits, in the letter of it, we must actually forgo something when opting for a MIDI description. Something is foregone, typically, but not nessisarily.

This consideration is essentially obsolete in the context of computer programs/systems/ applications leveraging MIDI data for a creative end. Robert Rowe describes a number *interactive computer music systems* and considers the impacts of music theory, music cognitition, and artificial intelligence on their design. The broad exposition was essential in the devising a path through to other ideas without loops.

Orthogonal to his motivation for classifications, we restrict to MIDI-driven interactive computer music systems, and identify two characteristics of programs:

    1) MIDI data depenence
    - score-driven aka MIDI-file dependent
    - performance-driven aka MIDI-stream dependent

    compositional   = ¬ performance ∩ score
    improvisational = performance ∩ ¬score
    realizational   = performance ∩ score

    2) MIDIation
    - indicative:   shows the user something MIDI data depenent.
    - accomaning:   supplements MIDI data: not interfering with its realization
    - augmenting:   alters MIDI data & not supplemental

    collaborate = accompany ⊔ augment
    supplement  = indicate ⊔ accompany
    contribute  = indicate ⊔ accompany ⊔ augment
                = supplement ⊔ augment
                = indicate ⊔ collaborate

Rowe's *Cypher* is realizational. The listener component is indicative and improvisational. And the player component can be augmenting, yet the user can always ensure it is accomaning by indicating it send output to any number of empty/free channels or by indiciating it should not respond to MIDI events on any channel. This component is realizational.

There are plently of computer music systems. Each may split into components which may itself split over this categorization dependening on something or other. Research on computer programs or applications tends to focuses on certain flavors *the transformative and innovative * (\* sholder shimmy\*) or those managing to buzz the right ... words.

Don't impart that on domain of the above labelling scheme. Starting with 1, MIDI data depenence, its clear digital-audio-workstations-like-things, sleek or dank, aren't forgotted. Computer music systems going 'beyond' by accomanying scores or performances programmatically earn more research attention. One presented at the Thirteenth International Conference on Computational Creativity is *Calliope: An Online Generative Music System for Symbolic Multi-Track Composition*[^Calliope]. 

> We presented the Calliope system, a co-creative interface for multi-track music generation. We presented its features in- cluding the ability to view and play MIDI files, the ability to select bars to guide partial generation, and complete set of global (model-level) and local (track-specific) controls and how their combination allows users to tackle a broad range of compositional tasks. We situated our system with respect to other existing CAC systems and discussed the co-creative aspect of the system along with the compositional workflow it affords.

Also,
> It is a web application
> It assists users in performing a variety of multi-track composition tasks in the symbolic domain
> Is is presented in context machine learning-based (ML) computer-assisted composition sysetms
> it supports the General MIDI (GM) standard for MIDI playback

'The user can upload MIDI files,
  visualize and edit MIDI tracks
    export generated MIDI materials
              stream MIDI playback from the system to their favorite Digital Audio Workstation (DAW).
and generate partial or complete multi-track content using the Multi-Track Music Machine (MMM)
'
Awesome. I tried to use it with each of the .mid HW files for a number of instruments and every time it would not generate anything or supply one drawn out final note in the last bar (free note density, broad range of batch sizes). MIDI files were never generated in the frame to the right on Firefox or Chrome.
Replicating the example on the home page stalled both browsers. The MIDI files uploaded more than 3 minites of Bach. It stalled for more than half of the requests for 4 or 8 bars, some with infilling, others without. Generation requests did yield MIDI files.

That's just a taste of Callioe of Calliope's taste with some MIDI files for some values of named parameters named (instrument type, node density, polyphony range, note length range, bar selection within a piece).
Global Params
- Temperature ∈ Float[0.8, 1.2]: how much the structure of the generated
MIDI content is closer (conservative) or farther (experimental) to what the MMM model is most likely to generate
- Polyphony Hard Limit ∈ 1:6, maximum number of simultaneous notes 
- Percentage ∈ 0:100, controls how much of the existing MIDI content is preserved or replaced by the generation.
- Model Dimensions ∈ 1:8, dimension of the model in bars
- Tracks per Step ∈ 1:8, tracks processed at each generation step, default 4.
- Bars per Step ∈ 1:8, bars processed in each track at each generative step,default 2.
- Max Steps ∈ 0:8, maximum number of generation steps, ignored when 0.
- Tempo is a positive integer, tempo for the generated output.
Track Parameters
- Instrument Type, one of the 128 GM instruments, which are partitioned into 8 groups.
- Note Density ∈ 0:10, number of notes generated per bar size.
- Polyphony Range ∈ 0:6, the number range of simultaneous notes used by the model for generation, a soft constraint.
- Note Duration Range ∈ {Any, 1/32, 1/16, 1/8, 1/4, 1/2, Whole}

They do not describe the generative mechanism in the paper but you can read about it (here)[https://github.com/AI-Guru/MMM-JSB/tree/main], tagged

> (MMM: Exploring Conditional Multi-Track Music Generation with the Transformer and the Johann Sebastian Bach Chorales Dataset)[https://github.com/AI-Guru/MMM-JSB/tree/main#mmm-exploring-conditional-multi-track-music-generation-with-the-transformer-and-the-johann-sebastian-bach-chorales-dataset]

In helpers/noteseqhelpers.py they write
```
NOTE_LENGTH_16TH_120BPM = 0.25 * 60 / 120
BAR_LENGTH_120BPM = 4.0 * 60 / 120
```
then define `set_note_sequence_tempo(note_sequence, target_tempo)` and `split_note_sequence_into_bars(note_sequence, absolute_times, threshold=0.0, quantized=False)` the latter begins with
```
# We cannot handle tempo changes.
raise_exception_on_multiple_tempos(note_sequence)
```
In mmmtrainer they write
```
# Create the model.
model_config = GPT2Config(
        vocab_size=tokenizer.get_vocab_size(),
        #bos_token_id=tokenizer.token_to_id("PIECE_START"),
        #eos_token_id=tokenizer.token_to_id("PIECE_END"),
        pad_token_id=tokenizer.token_to_id("[PAD]"),
        n_head=self.config.n_head,
        n_layer=self.config.n_layer,
        n_embd=self.config.n_embd,
        n_positions=self.config.n_positions,
        n_ctx=self.config.n_ctx
    )
logger.info(model_config)
model = GPT2LMHeadModel(model_config)
```
What is GPT2?
> It’s a causal (unidirectional) transformer pretrained using language modeling on a very large corpus of ~40 GB of text data.[^GPT2]
The abstract of *Language Models are Unsupervised Multitask Learners* by Alec Radford, Jeffrey Wu, Rewon Child, David Luan, Dario Amodei and Ilya Sutskeve reads
> GPT-2 is a large transformer-based language model with 1.5 billion parameters, trained on a dataset[1] of 8 million web pages. GPT-2 is trained with a simple objective: predict the next word, given all of the previous words within some text. The diversity of the dataset causes this simple goal to contain naturally occurring demonstrations of many tasks across diverse domains. GPT-2 is a direct scale-up of GPT, with more than 10X the parameters and trained on more than 10X the amount of data.
They model the data at a sequence of sequences of (UTF-8) symbols and assume that the sequences of (UTF-8) symbols are mutually independent. They mention a factorization of a probability function and do not write down a statistical model or describe the bit depth of the 1.5 Billion parameters.
Wait what is the data again? ~40 GB of text.
> 4 * 10^10 / (1.5 * 10^9) = 8 * 10 / 3 = 80/3
A parameter has got to be bit or are we just fooling around p a r a m e t e r s. I promise ot be fair! Suppose k is the maximum number of parameter values that (when substitued) do not separate points in the remaining parameters ( of which there are 1.5*10^9 - k).

    consider
        80*8 / (3 * 2^(1.5*10^9 - k) )
        we or at least i don't know probability function (maybe someone else does?)
        so k is unknown ! who knows?
        who cares?
        the expression is expressive enought for me
    you should prolly fiddle with the web appliation (here)[https://metacreation.net/calliope/] to get a sense of the calliber.
This might be a good time to mention that the Standard MIDI Files 1.0 specifies that:
```
MIDI files are of the form <Header Chunk> <TrackChunk>+ where
-<Header Chunk> = <chunk type> <length> <format> <ntrks> <division>
 -<chunk type> is 4D 54 68 64
 -32-bit <length> is 00 00 00 06, the number of bytes after <length> in the chunk
 -16-bit <format> is 00 00, 00 01, or 00 02
 -16-bit <ntrks> is 00 01 if format is 00 00,
 -16-bit <division> is 0<15bit ticks per quaver> or 1<7bit negaitve SMPTE format><8bit ticks per frame> 
-<Track Chunk> = <chunk type> <length> <Mtrkevent>+
 -<chunk type> is 4D 54 72 6B
 -32 bit <length>, the number of bytes after <length> in the chunk
 -<Mtrkevent> = <delta-time> (<MIDI event> | <sysex event> | <meta-event>)
  -<MIDI event> is any command followed by the appropriate number of data bytes
  -<sysex event> = (F0 <length> <data>)|(F7 <length> <DATA>)
   -<data> ends with F7, <data> is <length> bytes, and <length> is in (80-FF)* (01-7F)
   -<DATA> is <length> bytes and <length> is in (80-FF)* (00-7F)
  -<meta-event> = FF <type> (<length> <data> | 00)
   -<type> is in 00-7F
   -<data> is <length> bytes, and <length> is in (80-FF)* (01-7F)
```
So:
-<Header Chunk>s are 14 bytes (<chunk type> <length> <format> <ntrks> <division>)
-if <format> is 00 00 then
 -<ntrks> is 00 01 
 -the <Track Chunk>= 4D 54 72 6B <length> <Mtrkevent>+ is 4+4+<length> bytes
 -where <length> is in 00 00 00 02 - FF FF FF FF
 -so <Track Chunk> is between 10 and 8+2^32-1 bytes
-if <format> is 00 01 or 00 02 then
 -we have one track (hence, one or more)
 -no more than 2^16 - 1 tracks (because <length> in <Track Chunk> is 16 bits)
 -so between 10 and (8+2^32-1)(2^16-1) = 2^48 - 2^32 + 2^19 - 2^16 - 2^3 + 1 = 281_470_682_202_105 bytes
 -if <format> is 00 01 then tracks are 'simultaneous' (interpreted as aligned & unordered)
 -if <format> is 00 02 then tracks are 'sequentially independent' (interpreted as any-ordered)
-in any format
 -permuting ~identical track chunks yields the same file
 -rearranging whole track chunks within a file yields an equivalent file

From here we go one of two or three directions
"Symbolic"? MIDI drill down
-> patchmap variations
-> "synthesizer" device
gettin jiggy with data
-> a lady's silly sonification thoughts
oh yeah and wiggling sample to more useful and percepually dimilar fake sampling rates! PLOTS
-> implementing the the cyclic group of order 44100
    -> bc path length situation w compled embeddings
    -> soln (positive) cyclic rep (or narrowly Z_2 & projective which is strait bools)
    -> booling with bools, bool tiles


q = BitArray([0 1;1 0])
w = BitArray([0 1 0;0 0 1;1 0 0])
r = BitArray([0 1 0 0 0;0 0 1 0 0;0 0 0 1 0;0 0 0 0 1;1 0 0 0 0])
y = BitArray([0 1 0 0 0 0 0;0 0 1 0 0 0 0;0 0 0 1 0 0 0;0 0 0 0 1 0 0;0 0 0 0 0 1 0;0 0 0 0 0 0 1;1 0 0 0 0 0 0])
Q = []


  they defin
and the def of  begins with
> # We cannot handle tempo changes.
> raise_exception_on_multiple_tempos(note_sequence)



CO-CREATION
Those controls set the creative context for the system to generate, allowing the user to steer the generative behavior of the model and guide the composition process.
The system generates new musical phrases by outputting multi-track polyphonic sequences of notes for the set of selected bars and in accordance to the attribute control values.
The user listens and analyzes the resulting output and updates the generation request accordingly. The steps involved in Calliope’s interactive workflow are shown in

In terms of co-creation, the user can configure multiple attribute controls for generation .

Generation of new MIDI excerpts can be done in batch and can be combined with active playback listening for an enhanced assisted-composition workflow.

The aim is to enable users to effectively co-create with a generative system.

With the rise of artificial intelligence in recent years, there has been a rapid increase in its application towards creative domains, including music. 



Many machine learning-based (ML) systems have been developed for computer-assisted composition including:
    Flow Machines (Pachet 2004),
    Style Machine (Anderson, Eigenfeldt, and Pasquier 2013),
    Magenta Studio (Roberts et al. 2019),
    Manuscore (Maxwell et al. 2012),
    Morpheus (Herremans and Chew 2017);
demo systems such as
    Sornting,
    DrumVAE (Thio et al. 2019),
    DeepDrum (Makris, Kaliakatsos-Papakostas, and Kermanidis 2018)
and commercial systems such as
    AIVA 1,
    Spliqs 2 and 
    Melody Sauce


Those that go 'beyond' by unobscured augmenting are less abundant and earn less attention.

    **sex appeal is not a prerequisite**

interactive computer music systems



    -transformative vs generative vs sequence
    -instrument vs player
208 quote
9 processing chain
164
    -sequence vs generative vs transformative
    - arpeggiate harmonizer inverter stretcher s


> MIDI vs Digitized Audio
    > the MIDI file does not contain the sampled audio data, it contains only the instructions needed by a synthesizer to play the sounds. These instructions are in the form of MIDI messages, which instruct the synthesizer which sounds to use, which notes to play, and how loud to play each note. The actual sounds are then generated by the synthesizer.
> MIDI Basics
    > The synthesizer receiving the MIDI data must generate the actual sounds
> Synthesizer Basics
    > Sounds
        > The different sounds that a synthesizer or sound generator can produce are sometimes called "patches", "programs", "algorithms", or "timbres". Programmable synthesizers commonly assign "program numbers" (or patch numbers) to each sound. ... The association of all patch numbers to all sounds is often referred to as a patch map.

Conclude:
In Mono Mode: we can embedd 14 bits of LPCM on a channel
- 2 7-bit places
- e.g. (note,vel) -> vel*128 + note
In Poly Mode: we can embedd 896 bits of LPCM on a channel
- 128 7-bit places
- e.g. (note,vel) -> vel*128^note

ticks per quaver is 15 bits
microseconds per quaver is 24 bits






Co-Creation sorta a bullshit term
- dependence vs. stateted assumtion disguising a restriction of evaluation domain
- depenence of output on (user) input does not make it co-creative. Thats just a more pleasant version of open-source.
Form-centric research agenda
- thats just not how artists are partitioned
Randomness:
- if the image is finite, then if the program/function/algorithm is random and supported on the image, its not exactly creative
- depenent on what should be clear.
If its not fixed under equivalent variation, sorry pal...
- RGB,RBG,GRB,BGR,BRG,GBR 
- Patch Map
- percepuality of permuting certain channels at certain times in life



PAGE
Lerdhal Quote 104

2-3 low/high level and quot about audio recordings
6-7
    - score vs performance
    -transformative vs generative vs sequence
    -instrument vs player
9 processing chain
164
    -sequence vs generative vs transformative
    - arpeggiate harmonizer inverter stretcher sawer looper 181-2
    sequencing 191


spectromorphology-explaining-sound-shapes.pdf

SCANNED SYNTHESIS PATENT ?? https://ccrma.stanford.edu/courses/250a-fall-2013/lectures/scan/D0CB4F7Fd01.gif
https://ccrma.stanford.edu/courses/250a-fall-2013/lectures/scan/ScannedSynthesis.pdf

MIDI GM 1 Sound Set https://www.midi.org/specifications-old/item/gm-level-1-sound-set

Three points:
- Existing programs have room to grow.
    - Acclaimed or not, I have yet to be sent a computer generated musical thing by a friend.
    - 

-Heres a program that supports riches.
    - Length (number of frames) is a geometrically distributed whole number: Prob(Length=l) = 1/2^l
    - Given a length l, each bit in the first l frames is 1 w.p. 1/2 and 0 w.p. 1/2.
    - Voila! Every 0x0001-format wav file has positive probability.
- Im still waiting for the song of the summer. AI has not delivered.

midi <: 
wavpatchmap <: [128]-> wav.data

out("|name|compression_code|nchannels|sample_rate|bytes_per_second|block_align|nbits|fmt |data")
out("|---"^7 *"|")
for f in readdir("wavs")
if f[length(f)-2 : end] == "wav"
    F = wavread("wavs/$f",format="native")[4]|>WAV.getformat;
    out("$f | $(F.compression_code) | $(F.nchannels) | $(F.sample_rate) | $(F.bytes_per_second) | $(F.block_align) | $(F.nbits) |$(wavread("wavs/$f",format="native")[4])")
end
end


https://www.auralsonology.com/
https://www.spectromusic.com/writing-with-sonova/




[]: Annie Dillard. Pilgrim at Tinker Creek. 2007. HarperCollins Publishers Inc.
[]: Jim Heckroth. Tutorial on MIDI and Music Synthesis. Revised April 2006. MIDI Manufacturers Association.
[]: Paul D Lehrman. What is MIDI?. 2017
[]: Standard MIDI Files 1.0. Revised February 1996. MIDI Manufacturers Association.
[]: Paul D Lehrman, Howard Massey. General MIDI System Level 1 Developer Guidelines For Manufacturers and Composers. Second Revision July 1998. MIDI Manufacturers Association
[]: Steve Reich. Music as a Gradual Process in Writings about Music.
https://people.ucsc.edu/~dej/migrated/Ewha%20Materials/RHYTHM/Reich.Writings.pdf)
[]: Dennis Smalley. Spectromorphology: explaining sound-shapes. Organised Sound, Volume 2, Issue 2, August 1997, Pages 107–126. https://doi.org/10.1017/S1355771897009059
[]: Dennis Smalley. Space-form and the acousmatic image. Organised Sound, Volume 12, Issue 1, April 2007, Pages 35-58. https://doi.org/10.1017/S1355771807001665
[]: Manuella Blackburn. The Visual Sound-Shapes of Spectromorphology: an illustrative guide to composition. Organised Sound, Volume 16 , Issue 1: Denis Smalley: his influence on the theory and practice of electroacoustic music , April 2011, Pages 5-13. https://doi.org/10.1017/S1355771810000385 
[]: BT.709 : Parameter values for the HDTV standards for production and international programme exchange. https://www.itu.int/dms_pubrec/itu-r/rec/bt/R-REC-BT.709-6-201506-I!!PDF-E.pdf
[^Calliope]: Renaud Bougueng Tchemeube, Jeff Ens, Philippe Pasquier. Calliope: An Online Generative Music System for Symbolic Multi-Track Composition. Pages 251-255. https://computationalcreativity.net/iccc22/wp-content/uploads/2022/08/ICCC22_proceedings.pdf
[^GPT2]:OpenAI GPT2. Hugging Face. Accessed August 9 2023. https://huggingface.co/docs/transformers/model_doc/gpt2
[^MMMgh]: https://github.com/AI-Guru/MMM-JSB/tree/main


Jason Yust, Steve Reich’s Signature Rhythm and an Introduction to Rhythmic
Qualities, Music Theory Spectrum, Volume 43, Issue 1, Spring 2021, Pages 74–90,
[https://doi.org/10.1093/mts/mtaa017](https://doi.org/10.1093/mts/mtaa017)

Ragnhild Brøvig-Hanssen, Bjørnar Sandvik, Jon Marius Aareskjold-Drecker, Anne
Danielsen, A Grid in Flux: Sound and Timing in Electronic Dance Music, Music
Theory Spectrum, Volume 44, Issue 1, Spring 2022, Pages 1–16,
[https://doi.org/10.1093/mts/mtab013](https://doi.org/10.1093/mts/mtab013)

Jonathan De Souza, Melodic Transformation in George Garzone’s Triadic Chromatic
Approach; or, Jazz, Math, and Basket Weaving, Music Theory Spectrum, Volume 44,
Issue 2, Fall 2022, Pages 213–230,
[https://doi.org/10.1093/mts/mtac003](https://doi.org/10.1093/mts/mtac003)


Treatise on Musical Objects: An Essay across Disciplines
By Pierre Schaeffer

# Reflection
I should learn how to build my own (computer) hardware.
Instagram Poll: DO YOUR DREAMS HAVE SOUND? 59 Yes and 7 No.
