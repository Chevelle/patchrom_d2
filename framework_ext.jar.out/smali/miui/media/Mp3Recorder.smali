.class public Lmiui/media/Mp3Recorder;
.super Ljava/lang/Object;
.source "Mp3Recorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/Mp3Recorder$1;,
        Lmiui/media/Mp3Recorder$EventHandler;,
        Lmiui/media/Mp3Recorder$RecordingThread;,
        Lmiui/media/Mp3Recorder$RecordingErrorListener;
    }
.end annotation


# static fields
.field public static final ERR_COULD_NOT_START:I = 0x6

.field public static final ERR_ENCODE_PCM_FAILED:I = 0x4

.field public static final ERR_FILE_NOT_EXIST:I = 0x8

.field public static final ERR_ILLEGAL_STATE:I = 0x1

.field public static final ERR_MAX_SIZE_REACHED:I = 0x7

.field public static final ERR_OUT_STREAM_NOT_READY:I = 0x2

.field public static final ERR_RECORD_PCM_FAILED:I = 0x3

.field public static final ERR_WRITE_TO_FILE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "Mp3Recorder"

.field private static final MP3_RECORDER_EVENT_ERROR:I = 0x1

.field private static final OUT_BIT_RATE_DEFAULT:I = 0x40

.field public static final OUT_MODE_MONO:I = 0x3

.field public static final OUT_MODE_STEREO:I = 0x0

.field private static final STATE_IDEL:I = 0x0

.field private static final STATE_PAUSED:I = 0x3

.field private static final STATE_PREPARED:I = 0x1

.field private static final STATE_RECORDING:I = 0x2

.field private static final STATE_STOPED:I = 0x4


# instance fields
.field private bufferMP3:[B

.field private bufferPCM:[S

.field private mAudioChannel:I

.field private mAudioSource:I

.field private mChannelCount:I

.field private mCountRecordingSamples:J

.field private mCurrentRecordingSize:J

.field private mEventHandler:Landroid/os/Handler;

.field private mMaxAmplitude:I

.field private mMaxFileSize:J

.field private mMinBufferSize:I

.field private mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

.field private mOutBitRate:I

.field private mOutMode:I

.field private mOutputFile:Ljava/io/File;

.field private mOutputFilePath:Ljava/lang/String;

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mParams:Ljava/lang/String;

.field private mQuality:I

.field private mRecorder:Landroid/media/AudioRecord;

.field private mRecordingState:I

.field private mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

.field private mSampleRate:I

.field private ptr_lame_global_flag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "mp3lame"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Lmiui/media/Mp3Recorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$EventHandler;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    .line 113
    :goto_0
    invoke-virtual {p0}, Lmiui/media/Mp3Recorder;->reset()V

    .line 114
    return-void

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v1, Lmiui/media/Mp3Recorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$EventHandler;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_0

    .line 110
    :cond_1
    const-string v1, "Mp3Recorder"

    const-string v2, "Could not create event handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$100(Lmiui/media/Mp3Recorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    return v0
.end method

.method static synthetic access$1000(Lmiui/media/Mp3Recorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J

    return-wide v0
.end method

.method static synthetic access$1100(Lmiui/media/Mp3Recorder;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    return-object v0
.end method

.method static synthetic access$1200(Lmiui/media/Mp3Recorder;J[S[SI[BI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p7}, Lmiui/media/Mp3Recorder;->lame_encode(J[S[SI[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lmiui/media/Mp3Recorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    return v0
.end method

.method static synthetic access$1400(Lmiui/media/Mp3Recorder;J[SI[BI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p6}, Lmiui/media/Mp3Recorder;->lame_encode_interleaved(J[SI[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    return-object v0
.end method

.method static synthetic access$1600(Lmiui/media/Mp3Recorder;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1700(Lmiui/media/Mp3Recorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1714(Lmiui/media/Mp3Recorder;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1800(Lmiui/media/Mp3Recorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    return-wide v0
.end method

.method static synthetic access$1900(Lmiui/media/Mp3Recorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/media/Mp3Recorder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder;->notifyError(I)V

    return-void
.end method

.method static synthetic access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/media/Mp3Recorder;)[S
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    return-object v0
.end method

.method static synthetic access$500(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$614(Lmiui/media/Mp3Recorder;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    return-wide v0
.end method

.method static synthetic access$702(Lmiui/media/Mp3Recorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lmiui/media/Mp3Recorder;->mMaxAmplitude:I

    return p1
.end method

.method static synthetic access$800(Lmiui/media/Mp3Recorder;[SI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lmiui/media/Mp3Recorder;->findMaxAmplitude([SI)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lmiui/media/Mp3Recorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    return v0
.end method

.method private findMaxAmplitude([SI)I
    .locals 4
    .parameter "buffer"
    .parameter "size"

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 347
    aget-short v3, p1, v0

    if-gez v3, :cond_1

    aget-short v3, p1, v0

    neg-int v2, v3

    .line 348
    .local v2, tmp:I
    :goto_1
    if-le v2, v1, :cond_0

    .line 349
    move v1, v2

    .line 346
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .end local v2           #tmp:I
    :cond_1
    aget-short v2, p1, v0

    goto :goto_1

    .line 352
    :cond_2
    return v1
.end method

.method private native lame_close(J)I
.end method

.method private native lame_encode(J[S[SI[BI)I
.end method

.method private native lame_encode_interleaved(J[SI[BI)I
.end method

.method private native lame_flush(J[BI)I
.end method

.method private native lame_init(IIIIII)J
.end method

.method private notifyError(I)V
    .locals 3
    .parameter "err"

    .prologue
    .line 431
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 433
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 434
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxAmplitude()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lmiui/media/Mp3Recorder;->mMaxAmplitude:I

    return v0
.end method

.method public getRecordingSizeInByte()J
    .locals 2

    .prologue
    .line 256
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method public getRecordingTimeInMillis()J
    .locals 4

    .prologue
    .line 252
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    long-to-double v0, v0

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public isExtraParmaSupported()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 360
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-nez v1, :cond_1

    .line 261
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Recording not started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 264
    :cond_1
    const/4 v1, 0x3

    :try_start_1
    iput v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :try_start_2
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v1}, Lmiui/media/Mp3Recorder$RecordingThread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 271
    :goto_0
    :try_start_3
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 272
    const-string v1, "Mp3Recorder"

    const-string v2, "AudioRecord stoped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 274
    const-string v1, "Mp3Recorder"

    const-string v2, "AudioRecord released"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 276
    const-string v1, "Mp3Recorder"

    const-string v2, "Mp3Recorder paused"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public prepare()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xc

    const/4 v8, 0x1

    const/4 v4, 0x2

    .line 196
    iget v0, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v1, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    invoke-static {v0, v1, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    .line 198
    iget v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    if-gez v0, :cond_0

    .line 199
    const-string v0, "Mp3Recorder"

    const-string v1, "Error when getting min buffer size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not calculate the min buffer size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    iget v1, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    if-ge v0, v1, :cond_2

    .line 203
    iget v0, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    .line 207
    :goto_0
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v3, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    iget-object v5, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    array-length v5, v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 209
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setParameters(Ljava/lang/String;)I

    move-result v7

    .line 211
    .local v7, ok:I
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v7           #ok:I
    :cond_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Apply new AudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    if-ne v0, v6, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lmiui/media/Mp3Recorder;->mOutMode:I

    .line 215
    iget v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    if-ne v0, v6, :cond_4

    :goto_2
    iput v4, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    .line 218
    const-wide v0, 0x40bc200000000000L

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    array-length v2, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    .line 219
    iget v1, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v2, p0, Lmiui/media/Mp3Recorder;->mOutMode:I

    iget v3, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    iget v4, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v5, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    iget v6, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiui/media/Mp3Recorder;->lame_init(IIIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J

    .line 222
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;

    .line 223
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    .line 224
    iput v8, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 225
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 205
    :cond_2
    iget v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    goto/16 :goto_0

    .line 214
    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    move v4, v8

    .line 215
    goto :goto_2
.end method

.method public release()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 337
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J

    invoke-direct {p0, v0, v1}, Lmiui/media/Mp3Recorder;->lame_close(J)I

    .line 340
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J

    .line 341
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 182
    iput v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 184
    const/4 v0, 0x1

    iput v0, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    .line 185
    const v0, 0xac44

    iput v0, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    .line 186
    const/16 v0, 0x10

    iput v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    .line 187
    iput v1, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    .line 188
    iput v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 189
    const/16 v0, 0x40

    iput v0, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    .line 190
    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    .line 191
    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    .line 192
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    .line 193
    return-void
.end method

.method public declared-synchronized resume()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 280
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    if-ne v0, v6, :cond_1

    .line 281
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v3, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    const/4 v4, 0x2

    iget-object v5, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    array-length v5, v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 283
    const-string v0, "Mp3Recorder"

    const-string v1, "Apply new AudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 285
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 288
    :cond_0
    :try_start_1
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 290
    new-instance v0, Lmiui/media/Mp3Recorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    .line 291
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->start()V

    .line 292
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 294
    :cond_1
    :try_start_2
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording is going on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording is going on"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setAudioChannel(I)V
    .locals 0
    .parameter "audioChannel"

    .prologue
    .line 145
    iput p1, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    .line 146
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 0
    .parameter "samplingRate"

    .prologue
    .line 125
    iput p1, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    .line 126
    return-void
.end method

.method public setAudioSource(I)V
    .locals 0
    .parameter "audio_source"

    .prologue
    .line 121
    iput p1, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    .line 122
    return-void
.end method

.method public setMaxDuration(J)V
    .locals 2
    .parameter "maxDurByMillis"

    .prologue
    .line 174
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 175
    iget v0, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    goto :goto_0
.end method

.method public setMaxFileSize(J)V
    .locals 2
    .parameter "maxSizeByByte"

    .prologue
    .line 159
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 160
    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    goto :goto_0
.end method

.method public setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 133
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    .line 134
    return-void
.end method

.method public setOutBitRate(I)V
    .locals 0
    .parameter "brate"

    .prologue
    .line 129
    iput p1, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    .line 130
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 117
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 141
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setQuality(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 137
    iput p1, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    .line 138
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    if-ne v0, v1, :cond_1

    .line 230
    :cond_0
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording has started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 234
    :cond_1
    :try_start_1
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 235
    const-string v0, "Mp3Recorder"

    const-string v1, "Recorder not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    .line 239
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    .line 240
    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 241
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 242
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_3
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v0, Lmiui/media/Mp3Recorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    .line 247
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->start()V

    .line 248
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 300
    monitor-enter p0

    const/4 v3, 0x4

    :try_start_0
    iput v3, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :try_start_1
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder$RecordingThread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder$RecordingThread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    .line 310
    iget-wide v3, p0, Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J

    iget-object v5, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    iget-object v6, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    array-length v6, v6

    invoke-direct {p0, v3, v4, v5, v6}, Lmiui/media/Mp3Recorder;->lame_flush(J[BI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 312
    .local v2, flushSize:I
    if-lez v2, :cond_2

    .line 313
    :try_start_3
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v4, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 321
    :try_start_4
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 325
    :goto_1
    :try_start_5
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    .line 326
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 327
    const-string v3, "Mp3Recorder"

    const-string v4, "AudioRecord stoped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    :goto_2
    const-string v3, "Mp3Recorder"

    const-string v4, "Mp3Recorder stoped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 305
    .end local v2           #flushSize:I
    :catch_0
    move-exception v1

    .line 306
    .local v1, e1:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v3, "Mp3Recorder"

    const-string v4, "InterruptedException when stop"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 300
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 315
    .restart local v2       #flushSize:I
    :cond_2
    :try_start_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Buffer flush must greater than 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 317
    :catch_1
    move-exception v0

    .line 318
    .local v0, e:Ljava/io/IOException;
    :try_start_8
    const-string v3, "Mp3Recorder"

    const-string v4, "Error file cannot be written when flush"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 321
    :try_start_9
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 325
    :goto_3
    :try_start_a
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    .line 326
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 327
    const-string v3, "Mp3Recorder"

    const-string v4, "AudioRecord stoped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 320
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 321
    :try_start_b
    iget-object v4, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 325
    :goto_4
    :try_start_c
    iget-object v4, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v4, :cond_3

    .line 326
    iget-object v4, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V

    .line 327
    const-string v4, "Mp3Recorder"

    const-string v5, "AudioRecord stoped"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_3
    throw v3

    .line 322
    :catch_2
    move-exception v0

    .line 323
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mp3Recorder"

    const-string v5, "Error file cannot be closed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 322
    :catch_3
    move-exception v0

    .line 323
    const-string v3, "Mp3Recorder"

    const-string v4, "Error file cannot be closed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 322
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 323
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "Mp3Recorder"

    const-string v4, "Error file cannot be closed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1
.end method
