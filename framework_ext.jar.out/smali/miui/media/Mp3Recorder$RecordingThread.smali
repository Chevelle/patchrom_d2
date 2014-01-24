.class Lmiui/media/Mp3Recorder$RecordingThread;
.super Ljava/lang/Thread;
.source "Mp3Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/Mp3Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/media/Mp3Recorder;


# direct methods
.method private constructor <init>(Lmiui/media/Mp3Recorder;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 366
    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 367
    const-string v1, "Mp3Recorder"

    const-string v2, "RecordingThread started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mRecordingState:I
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 369
    const-string v1, "Mp3Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error illegal state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mRecordingState:I
    invoke-static {v3}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v2, 0x1

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v1, v2}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    .line 427
    :goto_0
    return-void

    .line 373
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-nez v1, :cond_1

    .line 374
    const-string v1, "Mp3Recorder"

    const-string v2, "Error out put stream not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v2, 0x2

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v1, v2}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto :goto_0

    .line 378
    :cond_1
    const/16 v16, 0x1

    .line 379
    .local v16, firstSample:Z
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mRecordingState:I
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$500(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v6

    .line 381
    .local v6, readSize:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    int-to-long v2, v6

    invoke-static {v1, v2, v3}, Lmiui/media/Mp3Recorder;->access$614(Lmiui/media/Mp3Recorder;J)J

    .line 382
    if-gtz v6, :cond_4

    .line 383
    const-string v1, "Mp3Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error record sample failed, read size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v2, 0x3

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v1, v2}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    .line 424
    .end local v6           #readSize:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v2, 0x0

    #setter for: Lmiui/media/Mp3Recorder;->mMaxAmplitude:I
    invoke-static {v1, v2}, Lmiui/media/Mp3Recorder;->access$702(Lmiui/media/Mp3Recorder;I)I

    .line 425
    const/16 v16, 0x0

    .line 426
    const-string v1, "Mp3Recorder"

    const-string v2, "RecordingThread stoped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 387
    .restart local v6       #readSize:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v3}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v3

    #calls: Lmiui/media/Mp3Recorder;->findMaxAmplitude([SI)I
    invoke-static {v2, v3, v6}, Lmiui/media/Mp3Recorder;->access$800(Lmiui/media/Mp3Recorder;[SI)I

    move-result v2

    #setter for: Lmiui/media/Mp3Recorder;->mMaxAmplitude:I
    invoke-static {v1, v2}, Lmiui/media/Mp3Recorder;->access$702(Lmiui/media/Mp3Recorder;I)I

    .line 388
    const/4 v15, 0x0

    .line 389
    .local v15, encodeSize:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mAudioChannel:I
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$900(Lmiui/media/Mp3Recorder;)I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v7}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)[B

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v8}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)[B

    move-result-object v8

    array-length v8, v8

    #calls: Lmiui/media/Mp3Recorder;->lame_encode(J[S[SI[BI)I
    invoke-static/range {v1 .. v8}, Lmiui/media/Mp3Recorder;->access$1200(Lmiui/media/Mp3Recorder;J[S[SI[BI)I

    move-result v15

    .line 396
    :goto_3
    if-gtz v15, :cond_7

    .line 397
    if-nez v15, :cond_6

    if-eqz v16, :cond_6

    .line 398
    const/16 v16, 0x0

    .line 399
    const-string v1, "Mp3Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First sample encode size is 0 read size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", skiped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 393
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->ptr_lame_global_flag:J
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mChannelCount:I
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1300(Lmiui/media/Mp3Recorder;)I

    move-result v1

    div-int v11, v6, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)[B

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)[B

    move-result-object v1

    array-length v13, v1

    #calls: Lmiui/media/Mp3Recorder;->lame_encode_interleaved(J[SI[BI)I
    invoke-static/range {v7 .. v13}, Lmiui/media/Mp3Recorder;->access$1400(Lmiui/media/Mp3Recorder;J[SI[BI)I

    move-result v15

    goto :goto_3

    .line 402
    :cond_6
    const-string v1, "Mp3Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error encode PCM failed, encode size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1500(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v2, 0x4

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v1, v2}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto/16 :goto_2

    .line 408
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1600(Lmiui/media/Mp3Recorder;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/16 v2, 0x8

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v1, v2}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto/16 :goto_2

    .line 413
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v15}, Ljava/io/FileOutputStream;->write([BII)V

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    int-to-long v2, v15

    invoke-static {v1, v2, v3}, Lmiui/media/Mp3Recorder;->access$1714(Lmiui/media/Mp3Recorder;J)J

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1700(Lmiui/media/Mp3Recorder;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mMaxFileSize:J
    invoke-static {v3}, Lmiui/media/Mp3Recorder;->access$1800(Lmiui/media/Mp3Recorder;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v2, 0x7

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v1, v2}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 418
    :catch_0
    move-exception v14

    .line 419
    .local v14, e:Ljava/io/IOException;
    const-string v1, "Mp3Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when write sample to file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    #getter for: Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;
    invoke-static {v3}, Lmiui/media/Mp3Recorder;->access$1900(Lmiui/media/Mp3Recorder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v2, 0x5

    #calls: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v1, v2}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto/16 :goto_2
.end method
