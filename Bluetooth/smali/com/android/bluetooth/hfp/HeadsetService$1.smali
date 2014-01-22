.class Lcom/android/bluetooth/hfp/HeadsetService$1;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetService;->access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, streamType:I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetService;->access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 106
    .end local v1           #streamType:I
    :cond_2
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v2, "HeadsetService"

    const-string v3, "HeadsetService -  Received BluetoothDevice.ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    #getter for: Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetService;->access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->handleAccessPermissionResult(Landroid/content/Intent;)V

    goto :goto_0
.end method
