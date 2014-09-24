.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .parameter
    .parameter "vib"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 524
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 525
    #getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1000(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 526
    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1000(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 527
    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 528
    return-void
.end method

.method private delay(J)V
    .locals 6
    .parameter "duration"

    .prologue
    const-wide/16 v4, 0x0

    .line 531
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, p1, v2

    .line 535
    .local v0, bedtime:J
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    .line 545
    .end local v0           #bedtime:J
    :cond_1
    :goto_1
    return-void

    .line 542
    .restart local v0       #bedtime:J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long p1, v0, v2

    .line 543
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    .line 537
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 548
    const/4 v8, -0x8

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 549
    monitor-enter p0

    .line 550
    :try_start_0
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v5

    .line 551
    .local v5, pattern:[J
    array-length v4, v5

    .line 552
    .local v4, len:I
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    .line 553
    .local v6, repeat:I
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    .line 554
    .local v7, uid:I
    const/4 v2, 0x0

    .line 555
    .local v2, index:I
    const-wide/16 v0, 0x0

    .local v0, duration:J
    move v3, v2

    .line 557
    .end local v2           #index:I
    .local v3, index:I
    :goto_0
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v8, :cond_7

    .line 559
    if-ge v3, v4, :cond_0

    .line 560
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-wide v8, v5, v3

    add-long/2addr v0, v8

    move v3, v2

    .line 564
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 565
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v8, :cond_3

    move v2, v3

    .line 585
    .end local v3           #index:I
    .restart local v2       #index:I
    :goto_1
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 586
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v9

    monitor-enter v9

    .line 588
    :try_start_1
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v8, v8, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v8, p0, :cond_1

    .line 589
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 591
    :cond_1
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v8, :cond_2

    .line 594
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 595
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v10, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #calls: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v8, v10}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 596
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #calls: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 598
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 599
    return-void

    .line 569
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_3
    if-ge v3, v4, :cond_4

    .line 572
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_2
    aget-wide v0, v5, v3

    .line 573
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_6

    .line 574
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #calls: Lcom/android/server/VibratorService;->doVibratorOn(JI)V
    invoke-static {v8, v0, v1, v7}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;JI)V

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 577
    :cond_4
    if-gez v6, :cond_5

    move v2, v3

    .line 578
    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 580
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_5
    move v2, v6

    .line 581
    .end local v3           #index:I
    .restart local v2       #index:I
    const-wide/16 v0, 0x0

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 586
    .end local v0           #duration:J
    .end local v3           #index:I
    .end local v4           #len:I
    .end local v5           #pattern:[J
    .end local v6           #repeat:I
    .end local v7           #uid:I
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 598
    .restart local v0       #duration:J
    .restart local v2       #index:I
    .restart local v4       #len:I
    .restart local v5       #pattern:[J
    .restart local v6       #repeat:I
    .restart local v7       #uid:I
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    :cond_6
    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    :cond_7
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1
.end method
