.class Lcom/android/bluetooth/map/BluetoothMns$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMns;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMns;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns$1;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 587
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns$1;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    #getter for: Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMns;->access$100(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    const-string v1, "BtMns"

    const-string v2, " Memory Full "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns$1;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    const-string v2, "MemoryFull"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEventMemory(Ljava/lang/String;)V

    .line 597
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 592
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    const-string v1, "BtMns"

    const-string v2, " Memory Available "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns$1;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    const-string v2, "MemoryAvailable"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEventMemory(Ljava/lang/String;)V

    goto :goto_0
.end method
