.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
.super Lcom/android/internal/util/State;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method

.method private processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "state"
    .parameter "device"

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xb

    .line 780
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    const-string v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio changed on disconnected device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :goto_0
    return-void

    .line 785
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 801
    const-string v0, "HeadsetStateMachine"

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

    .line 788
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6402(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)I

    .line 789
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 790
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v3, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 792
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 795
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6402(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)I

    .line 796
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v1, 0xa

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v2, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 785
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
    .line 756
    packed-switch p1, :pswitch_data_0

    .line 773
    :pswitch_0
    const-string v0, "HeadsetStateMachine"

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

    .line 776
    :goto_0
    return-void

    .line 758
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 761
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v1

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$802(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 763
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 764
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 766
    :cond_0
    const-string v0, "HeadsetStateMachine"

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

    .line 770
    :pswitch_2
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->processSlcConnected()V

    goto :goto_0

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processSlcConnected()V
    .locals 3

    .prologue
    .line 807
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Z)V

    .line 814
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetPhone;->queryPhoneState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_0
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Handsfree phone proxy null for query phone state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "message"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 595
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connected process message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    .line 603
    const/4 v2, 0x1

    .line 604
    .local v2, retValue:Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 751
    :goto_0
    return v5

    .line 607
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 608
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_1
    move v5, v2

    .line 751
    goto :goto_0

    .line 612
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v0, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 614
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v6, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectHfpNative([B)Z
    invoke-static {v3, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 615
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v0, v5, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 620
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v4

    .line 621
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$902(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 622
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;
    invoke-static {v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;

    move-result-object v5

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 623
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 628
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 629
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v4, 0x3

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v0, v4, v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 634
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v4, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectHfpNative([B)Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 635
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v0, v8, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 639
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;

    move-result-object v4

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 645
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->connectAudioNative([B)Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    goto :goto_1

    .line 648
    :sswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processLocalVrEvent(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_1

    .line 651
    :sswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processLocalVrEvent(I)V
    invoke-static {v3, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_1

    .line 654
    :sswitch_5
    iget-object v6, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/hfp/HeadsetCallState;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v4, :cond_4

    :goto_2
    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V
    invoke-static {v6, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    goto/16 :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    .line 657
    :sswitch_6
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processIntentBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v4, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 660
    :sswitch_7
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processRoamChanged(Z)V
    invoke-static {v4, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)V

    goto/16 :goto_1

    .line 663
    :sswitch_8
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processDeviceStateChanged(Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V
    invoke-static {v4, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V

    goto/16 :goto_1

    .line 666
    :sswitch_9
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/hfp/HeadsetClccResponse;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSendClccResponse(Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V
    invoke-static {v4, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V

    goto/16 :goto_1

    .line 669
    :sswitch_a
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 670
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z
    invoke-static {v3, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4702(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 671
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3, v5, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto/16 :goto_1

    .line 675
    :sswitch_b
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->initiateScoUsingVirtualVoiceCall()Z

    goto/16 :goto_1

    .line 678
    :sswitch_c
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->terminateScoUsingVirtualVoiceCall()Z

    goto/16 :goto_1

    .line 681
    :sswitch_d
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 682
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z
    invoke-static {v3, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4802(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 683
    const-string v3, "HeadsetStateMachine"

    const-string v4, "Timeout waiting for voice recognition to start"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3, v5, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto/16 :goto_1

    .line 688
    :sswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    .line 692
    .local v1, event:Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iget v3, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    .line 744
    const-string v3, "HeadsetStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown stack event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 694
    :pswitch_0
    iget v3, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 697
    :pswitch_1
    iget v3, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 700
    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processVrEvent(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_1

    .line 704
    :pswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAnswerCall()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 708
    :pswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processHangupCall()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 711
    :pswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget v5, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt2:I

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processVolumeEvent(II)V
    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;II)V

    goto/16 :goto_1

    .line 714
    :pswitch_6
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processDialCall(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 717
    :pswitch_7
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSendDtmf(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_1

    .line 720
    :pswitch_8
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processNoiceReductionEvent(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_1

    .line 723
    :pswitch_9
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtChld(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_1

    .line 726
    :pswitch_a
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSubscriberNumberRequest()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 729
    :pswitch_b
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCind()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 732
    :pswitch_c
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCops()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 735
    :pswitch_d
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtClcc()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 738
    :pswitch_e
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processUnknownAt(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 741
    :pswitch_f
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processKeyPressed()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 604
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_8
        0xc -> :sswitch_7
        0xd -> :sswitch_9
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x65 -> :sswitch_e
        0x66 -> :sswitch_a
        0x67 -> :sswitch_d
    .end sparse-switch

    .line 692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
