.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;
.super Lcom/android/internal/util/State;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioOn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method

.method private processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "state"
    .parameter "device"

    .prologue
    const/16 v2, 0xa

    .line 995
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 996
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

    .line 1019
    :goto_0
    :pswitch_0
    return-void

    .line 1000
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1016
    :pswitch_1
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

    .line 1002
    :pswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6402(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)I

    .line 1004
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1005
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v1, 0xc

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v2, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "state"
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 973
    packed-switch p1, :pswitch_data_0

    .line 988
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

    .line 991
    :goto_0
    return-void

    .line 975
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    invoke-direct {p0, v3, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    .line 977
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 979
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v1

    .line 980
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$802(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 981
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v2

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 982
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 984
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

    .line 973
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private processIntentScoVolume(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 1022
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1023
    .local v0, volumeValue:I
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getSpeakerVolume()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setSpeakerVolume(I)V

    .line 1025
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->setVolumeNative(II)Z
    invoke-static {v1, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;II)Z

    .line 1027
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter AudioOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "message"

    .prologue
    const/16 v8, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 834
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioOn process message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    .line 842
    const/4 v2, 0x1

    .line 843
    .local v2, retValue:Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 968
    :goto_0
    return v5

    .line 846
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 847
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_1
    move v5, v2

    .line 968
    goto :goto_0

    .line 850
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v6, 0x2

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V

    .line 854
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v4, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectAudioNative([B)Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$7200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 855
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I
    invoke-static {v3, v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6402(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)I

    .line 856
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 857
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/16 v5, 0xc

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v4, v8, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 862
    :sswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processLocalVrEvent(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto :goto_1

    .line 865
    :sswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processLocalVrEvent(I)V
    invoke-static {v3, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto :goto_1

    .line 868
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->processIntentScoVolume(Landroid/content/Intent;)V

    goto :goto_1

    .line 871
    :sswitch_5
    iget-object v6, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/hfp/HeadsetCallState;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v4, :cond_2

    :goto_2
    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V
    invoke-static {v6, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    .line 874
    :sswitch_6
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processIntentBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v4, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V

    goto :goto_1

    .line 877
    :sswitch_7
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processRoamChanged(Z)V
    invoke-static {v4, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)V

    goto :goto_1

    .line 880
    :sswitch_8
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processDeviceStateChanged(Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V
    invoke-static {v4, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V

    goto/16 :goto_1

    .line 883
    :sswitch_9
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/hfp/HeadsetClccResponse;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSendClccResponse(Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V
    invoke-static {v4, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V

    goto/16 :goto_1

    .line 887
    :sswitch_a
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->initiateScoUsingVirtualVoiceCall()Z

    goto/16 :goto_1

    .line 890
    :sswitch_b
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->terminateScoUsingVirtualVoiceCall()Z

    goto/16 :goto_1

    .line 894
    :sswitch_c
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 895
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z
    invoke-static {v3, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4702(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 896
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3, v5, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto/16 :goto_1

    .line 900
    :sswitch_d
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 901
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z
    invoke-static {v3, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4802(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 902
    const-string v3, "HeadsetStateMachine"

    const-string v4, "Timeout waiting for voice recognition to start"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3, v5, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto/16 :goto_1

    .line 907
    :sswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    .line 911
    .local v1, event:Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iget v3, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    .line 961
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

    .line 913
    :pswitch_0
    iget v3, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 916
    :pswitch_1
    iget v3, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 919
    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processVrEvent(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_1

    .line 922
    :pswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAnswerCall()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 925
    :pswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processHangupCall()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 928
    :pswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget v5, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt2:I

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processVolumeEvent(II)V
    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;II)V

    goto/16 :goto_1

    .line 931
    :pswitch_6
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processDialCall(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 934
    :pswitch_7
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSendDtmf(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_1

    .line 937
    :pswitch_8
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processNoiceReductionEvent(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_1

    .line 940
    :pswitch_9
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtChld(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_1

    .line 943
    :pswitch_a
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSubscriberNumberRequest()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 946
    :pswitch_b
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCind()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 949
    :pswitch_c
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCops()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 952
    :pswitch_d
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtClcc()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 955
    :pswitch_e
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processUnknownAt(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 958
    :pswitch_f
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    #calls: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processKeyPressed()V
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_1

    .line 843
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_8
        0xc -> :sswitch_7
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x65 -> :sswitch_e
        0x66 -> :sswitch_c
        0x67 -> :sswitch_d
    .end sparse-switch

    .line 911
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
