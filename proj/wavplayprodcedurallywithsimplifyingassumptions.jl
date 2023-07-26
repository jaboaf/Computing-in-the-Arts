# Apple Core Audio Type
struct AudioStreamPacketDescription
    mStartOffset::Int64
    mVariableFramesInPacket::UInt32
    mDataByteSize::UInt32
end
# Apple Core Audio Type
mutable struct AudioQueueBuffer
    mAudioDataBytesCapacity::UInt32
    mAudioData::Ptr{Cvoid}
    mAudioDataByteSize::UInt32
    mUserData::Ptr{Cvoid}
    mPacketDescriptionCapacity::UInt32
    mPacketDescription::Ptr{AudioStreamPacketDescription}
    mPacketDescriptionCount::UInt32
end
const AudioQueueBufferRef = Ptr{AudioQueueBuffer}


# function wavplay(data::AbstractVecOrMat{<:Real}, fs::Real)
CH = rand([1,2]); L::Int ; fs<:Real
const C = CH 
const T = Int16
L x C Array{T,C} data
userData = AudioQueueData{T,C}(
    data,
    convert(AudioQueueRef, 0),
    0,
    size(data, 1),
    0,
    convert(CFRunLoopRef, 0))
# new{eltype(data),ndims(data)}(data, convert(AudioQueueRef, 0), 0, size(data, 1), 0, convert(CFRunLoopRef, 0))

ASBD = AudioStreamBasicDescription(
    fs,
    0x6c70636d,
    (1<<2),
    2 * CH,  #= bytes per packet =#
    1,       #= frames per packet =#
    2 * CH,  #= bytes per frame =#
    CH,           #=channels per frame=#
    16)          #=bits per channel=#

#= formerly
userData.aq = AudioQueueNewOutput(ASBD, userData)

function AudioQueueNewOutput(ASBD, userData::AudioQueueData{T,C}) where {T,C}
#body of AudioQueueNewOutput =# 
runLoop = CFRunLoopGetCurrent();
userData.runLoop = runLoop;
runLoopMode = getCoreFoundationRunLoopDefaultMode();
newAudioQueue = Ref{AudioQueueRef}(0)

cCallbackProc = @cfunction(playCallback, Cvoid, (Ref{AudioQueueData{T,C}}, AudioQueueRef, AudioQueueBufferRef))

result = ccall((:AudioQueueNewOutput, AudioToolbox), OSStatus,
    (Ptr{AudioStreamBasicDescription}, Ptr{Cvoid}, Ref{AudioQueueData{T,C}}, CFRunLoopRef, CFStringRef, UInt32, Ref{AudioQueueRef}),
    Ref(ASBD), cCallbackProc, Ref(userData), runLoop, runLoopMode, 0, newAudioQueue)
if result != 0
    error("AudioQueueNewOutput failed with $result")
end
# return newAudioQueue[]
#end
# former assignment
userData.aq = newAudioQueue[]

# note const AudioQueueBufferRef = Ptr{AudioQueueBuffer}
# note const kNumberBuffers = 3
#= 
allocateAllBuffers(userData, kNumberBuffers, 16384) =
        AudioQueueBufferRef[AudioQueueAllocateBuffer(userData.aq, 16384) for i=1:kNumberBuffers] 
for buf in allocateAllBuffers(userData, kNumberBuffers, 16384)
    enqueueBuffer(userData, buf)
end =#

# buf = AudioQueueAllocateBuffer(userData.aq, 16384)
# function AudioQueueAllocateBuffer(aq::AudioQueueRef, BufferByteSize::Integer)::AudioQueueBufferRef
# body of AudioQueueAllocateBuffer
newBuffer = Ref{AudioQueueBufferRef}(0)
result = ccall((:AudioQueueAllocateBuffer, AudioToolbox), OSStatus,
              (AudioQueueRef, UInt32, Ref{AudioQueueBufferRef}),
              userData.aq, 16384, newBuffer)
if result != 0
    error("AudioQueueAllocateBuffer failed with $result")
end
# return newBuffer[]
# end
# former assignment
buf = newBuffer[]
@inline function enqueueBuffer(userData::AudioQueueData{T,N}, buf::AudioQueueBufferRef) where {T,N}
    # @inline needed to keep playCallback allocation free
    if userData.offset >= userData.nSamples
        return false
    end
    buffer::AudioQueueBuffer = unsafe_load(buf)
    nFrames::Int = buffer.mAudioDataBytesCapacity ÷ (sizeof(T) * size(userData.samples, 2))
    offset = userData.offset
    nFrames = min(nFrames, userData.nSamples - offset)
    nChannels = size(userData.samples, 2)
    coreAudioData = convert(Ptr{T}, buffer.mAudioData)
    if nChannels == 1
        for i = 1:nFrames
            unsafe_store!(coreAudioData, userData.samples[i+offset], i)
        end
    else
        coreAudioIndex = 0
        for i = 1:nFrames
            for j = 1:nChannels
                coreAudioIndex += 1
                unsafe_store!(coreAudioData, userData.samples[i+offset, j], coreAudioIndex)
            end
        end
    end
    buffer.mAudioDataByteSize = nFrames * nChannels * sizeof(T)
    unsafe_store!(buf, buffer)
    userData.offset = offset + nFrames
    userData.nBuffersEnqueued += 1
    # AudioQueueEnqueueBuffer(userData.aq, buf)
    result = ccall((:AudioQueueEnqueueBuffer, AudioToolbox),
                   OSStatus,
                   (AudioQueueRef, AudioQueueBufferRef, UInt32, Ptr{Cvoid}),
                   userData.aq, buf, 0, C_NULL)
    if result != 0
        error("AudioQueueEnqueueBuffer failed with $result")
    end
    return true
end

AudioQueueStart(userData.aq)
CFRunLoopRun()
AudioQueueDispose(userData.aq, true)
# end