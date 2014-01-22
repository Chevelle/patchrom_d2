.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;
.super Landroid/os/Handler;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentBroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    return-void
.end method

.method private onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .parameter "device"
    .parameter "prevState"
    .parameter "state"

    .prologue
    .line 740
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 742
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 743
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 744
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 745
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 747
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, p3, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 748
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 752
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 758
    :goto_0
    return-void

    .line 754
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    .line 755
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    #getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
