.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;
.super Lcom/android/internal/util/State;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pending"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "state"
    .parameter "device"

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 456
    packed-switch p1, :pswitch_data_0

    .line 580
    :pswitch_0
    const-string v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 458
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 462
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v1

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$802(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 464
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 466
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->connectHfpNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 471
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v1

    .line 472
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$902(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 473
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 474
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 464
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v1

    .line 478
    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1002(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 479
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 480
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 486
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v1

    .line 487
    :try_start_4
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$902(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 488
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 489
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 491
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 494
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v1

    .line 495
    :try_start_5
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1002(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 496
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 497
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    .line 499
    :cond_4
    const-string v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown device Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 503
    :pswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 505
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v5, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 507
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 508
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 511
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v1

    .line 512
    :try_start_6
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$902(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 513
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 514
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 543
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->configAudioParameters()V
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_0

    .line 514
    :catchall_5
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    .line 515
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 516
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v5, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 518
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v1

    .line 519
    :try_start_8
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$802(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 520
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$902(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 521
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 522
    monitor-exit v1

    goto :goto_1

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0

    .line 523
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 524
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v5, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 526
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v1

    .line 527
    :try_start_9
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$802(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 528
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1002(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 529
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 530
    monitor-exit v1

    goto/16 :goto_1

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    throw v0

    .line 532
    :cond_8
    const-string v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown device Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v5, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 536
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v1

    .line 537
    :try_start_a
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$802(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 538
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$902(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 539
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1002(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 540
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 541
    monitor-exit v1

    goto/16 :goto_1

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    throw v0

    .line 546
    :pswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 547
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v1, "current device tries to connect back"

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 549
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 558
    const-string v0, "HeadsetStateMachine"

    const-string v1, "Another connecting event on the incoming device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 562
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v1, "Incoming connection while pending, ignore"

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 566
    :pswitch_4
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    :cond_c
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 572
    const-string v0, "HeadsetStateMachine"

    const-string v1, "TargetDevice is getting disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 573
    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 574
    const-string v0, "HeadsetStateMachine"

    const-string v1, "IncomingDevice is getting disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 576
    :cond_e
    const-string v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting unknow device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 397
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pending process message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    .line 399
    const/4 v2, 0x1

    .line 400
    .local v2, retValue:Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 451
    :goto_0
    return v5

    .line 403
    :sswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V

    :goto_1
    move v5, v2

    .line 451
    goto :goto_0

    .line 406
    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v4, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->onConnectionStateChanged(I[B)V
    invoke-static {v3, v5, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I[B)V

    goto :goto_1

    .line 410
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 411
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v0, v5, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 416
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v4

    .line 417
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v5, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$902(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 418
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 420
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 424
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processIntentBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v4, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V

    goto :goto_1

    .line 427
    :sswitch_4
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processRoamChanged(Z)V
    invoke-static {v4, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)V

    goto :goto_1

    .line 430
    :sswitch_5
    iget-object v6, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/hfp/HeadsetCallState;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v4, :cond_1

    :goto_2
    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V
    invoke-static {v6, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_2

    .line 434
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    .line 438
    .local v1, event:Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iget v3, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    .line 444
    const-string v3, "HeadsetStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 440
    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v4, 0xc9

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 441
    iget v3, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xc -> :sswitch_4
        0x65 -> :sswitch_6
        0xc9 -> :sswitch_1
    .end sparse-switch

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
