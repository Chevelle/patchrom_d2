.class Lcom/android/bluetooth/map/BluetoothMns$EventHandler$2;
.super Ljava/lang/Object;
.source "BluetoothMns.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMns$EventHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$2;->this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 315
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BtMns"

    const-string v1, "MNS_BT: Started Deregister Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$2;->this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    #calls: Lcom/android/bluetooth/map/BluetoothMns;->canDisconnect()Z
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMns;->access$600(Lcom/android/bluetooth/map/BluetoothMns;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$2;->this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns;->stop()V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$2;->this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    #calls: Lcom/android/bluetooth/map/BluetoothMns;->mnsCleanupInstances()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMns;->access$700(Lcom/android/bluetooth/map/BluetoothMns;)V

    .line 320
    return-void
.end method
