.class Lcom/android/bluetooth/map/BluetoothMns$EventHandler$1;
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

.field final synthetic val$masId:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMns$EventHandler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$1;->this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$1;->val$masId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$1;->this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$1;->val$masId:I

    #calls: Lcom/android/bluetooth/map/BluetoothMns;->deregister(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMns;->access$500(Lcom/android/bluetooth/map/BluetoothMns;I)V

    .line 304
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$1;->this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    #calls: Lcom/android/bluetooth/map/BluetoothMns;->canDisconnect()Z
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMns;->access$600(Lcom/android/bluetooth/map/BluetoothMns;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$1;->this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns;->stop()V

    .line 307
    :cond_0
    return-void
.end method
