function wavplay(data::AbstractVecOrMat{<:Real}, fs::Real)
    userData = AudioQueueData(data)
    # === new{eltype(data),ndims(data)}(data, convert(AudioQueueRef, 0), 0, size(data, 1), 0, convert(CFRunLoopRef, 0))

    userData.aq = AudioQueueNewOutput(getFormatForData(data, fs), userData)
    #= 
    getFormatForData(data, fs) = 
    elType = eltype(data); elSize = sizeof(elType); nChannels = size(data, 2)
    fmtFlags = (1 << 31)|(elType <: AbstractFloat ? | (1 << 0) : elType <: Integer ? : (1 << 2) : error())
    return AudioStreamBasicDescription(fs,
                                       kAudioFormatLinearPCM, # 0x6c70636d or 'l"p"c"m'
                                       fmtFlags,
                                       elSize * nChannels,  # bytes per packet
                                       1,                   # frames per packet
                                       elSize * nChannels,  # bytes per frame
                                       nChannels,           # channels per frame
                                       elSize * 8)          # bits per channel
    end=#
    # note const AudioQueueBufferRef = Ptr{AudioQueueBuffer}
    # note const kNumberBuffers = 3
    for buf in allocateAllBuffers(userData, kNumberBuffers, 16384)# =AudioQueueBufferRef[AudioQueueAllocateBuffer(userData.aq, 16384) for i=1:kNumberBuffers]
        enqueueBuffer(userData, buf)
    end
    AudioQueueStart(userData.aq)

    CFRunLoopRun()
    AudioQueueDispose(userData.aq, true)
end