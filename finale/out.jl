THE wav BITS ON MIDI TICKS
wav patchmap @ mid .ticks

https://www.itu.int/dms_pubrec/itu-r/rec/bt/R-REC-BT.709-6-201506-I!!PDF-E.pdf



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

I wonder because not much else cuts across a partition like musical things: ebbing in the woeful, vibrant among the intimate, and a durable pulse through and throughout communities. It sure seems natural– not merely human. And we have yet to see a the greater part of a century globally offering the option to record, playback, copy, edit, and transmit audio and visual matrial.

The effect is undisputably generally positive. Far beyond that– people deeply appreciate and value musical works. How much so is a spectacle:

    At the end of 2021, Bruce Springsteen exchanged master recordings and publishing rights to 20 studio albums with Sony for an estimated $500,000,000. Suppose: there are 20 tracks per album, tracks and their associated rights may be totally ordered by dollar value, and the dollar value of a track with its associated rights is proportional to 1 divided by its rank. And these values partition the total of $500,000,000.

    The highest value track is:
        1
        // 1228884515967872712251672909004982497901388975685728237120075555522246093340961692523451736163237183161567142377749856340898436843471517588948954743006778882051196591337071
        //187046829073114601650818088978393541681209145313523704295048172193984970320336574588961640760313676135013142307766553383804638697532241829188594060015362048530542880992000
    -th of half a billion dollars; which, rounding to the nearest penny, is  $76,104,315.19 for the highest $-value track. If the track is 4 minutes of proper CD stero audio:
        44100frames/second * 24bits/channel * 2channels/frame * 60seconds * 4 = 508,032,000 bits or 63,504,000 bytes 
    Then the highest $-value track is $1.20 per byte with its associated rights or $0.15 per bit and associated right.

https://www.bbc.com/news/entertainment-arts-59680797
https://www.billboard.com/pro/bruce-springsteen-sells-masters-publishing-sony/

    Only a few collections of data with rights that play in that $-total ballpark come to mind. All of them are financial. Relative to $0.15 per bit and associated right, these collections are likely closer to light year away than not. So an arrangement of bits is valued when its a valued arrangement. In particular, realizing its value requires no interpretation, just some commonplace hardware. Choosing to 'protect' that value, via some method; well, thats up to the rights holder.

A MIDI file will not do. It needs to be interpreted, requiring less common software capabilities which permit variation in the content delivered through the same audio interface on the same device. This is by no means a pitfall. It's the sacrifice made for abstraction, smaller file sizes, and plural interpretation.

    Worthwhile and incredibly executed. (A great appreciation is discovered by reading some 1600-odd pages of the FIX Protocol)



PAGE
Lerdhal Quote 104
2-3 low/high level and quot about audio recordings
6-7
    - score vs performacnce
    -transformative vs generative vs sequence
    -instrument vs player
9 processing chain
164
    -sequence vs generative vs transformative
    - arpeggiate harmonizer inverter stretcher sawer looper 181-2
    sequencing 191


Three points:
- Existing programs have room to grow.
    - Acclaimed or not, I have yet to be sent a computer generated musical thing by a friend.
    - 

-Here's a program that supports riches.

    - Length (number of frames) is a geometrically distributed whole number: Prob(Length=l) = 1/2^l
    - Given a length l, each bit in the first l frames is 1 w.p. 1/2 and 0 w.p. 1/2.
    - Voila! Every 0x0001-format wav file has positive probability.

- I'm still waiting for the song of the summer. AI has not delivered.






Humans Appreciated, , and valued.

At a very practical level.

https://www.rollingstone.com/pro/features/famous-musicians-selling-catalog-music-rights-1114580/?sub_action=logged_in
https://www.rollingstone.com/pro/features/universal-music-bob-dylan-catalog-survival-1100390/




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