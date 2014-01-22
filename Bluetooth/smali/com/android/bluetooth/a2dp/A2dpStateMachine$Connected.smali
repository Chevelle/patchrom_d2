.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
.super Lcom/android/internal/util/State;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    return-void
.end method

.method private processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "state"
    .parameter "device"

    .prologue
    const/16 v3, 0xb

    const/16 v2, 0xa

    .line 557
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    const-string v0, "A2dpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio State Device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is different from ConnectedDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 578
    const-string v0, "A2dpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3802(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 566
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 571
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x0

    #setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3802(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 573
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v3, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "state"
    .parameter "device"

    .prologue
    .line 538
    packed-switch p1, :pswitch_data_0

    .line 552
    const-string v0, "A2dpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :goto_0
    return-void

    .line 540
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 543
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$602(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 545
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$2400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v2

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 546
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 548
    :cond_0
    const-string v0, "A2dpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from unknown device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0xa

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 467
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "message"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 471
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connected process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 472
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_1

    .line 473
    const-string v4, "A2dpStateMachine"

    const-string v5, "ERROR: mCurrentDevice is null in Connected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 533
    :cond_0
    :goto_0
    return v2

    .line 477
    :cond_1
    const/4 v2, 0x1

    .line 478
    .local v2, retValue:Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 531
    goto :goto_0

    .line 481
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 482
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 486
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v7, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 488
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->disconnectA2dpNative([B)Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 489
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v3, v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 494
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v4

    .line 495
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$702(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 496
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;
    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    move-result-object v5

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 497
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 502
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 503
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v5, 0x3

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v5, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 508
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v5, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->disconnectA2dpNative([B)Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 509
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v8, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 513
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    move-result-object v4

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$3600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 517
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    .line 518
    .local v1, event:Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    .line 526
    const-string v3, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected stack event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 520
    :pswitch_0
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 523
    :pswitch_1
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 478
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch

    .line 518
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
