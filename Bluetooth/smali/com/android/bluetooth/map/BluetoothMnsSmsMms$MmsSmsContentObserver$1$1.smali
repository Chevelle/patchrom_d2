.class Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1$1;
.super Ljava/lang/Object;
.source "BluetoothMnsSmsMms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1$1;->this$2:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1$1;->this$2:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;->this$1:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->update(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1$1;->this$2:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;->this$1:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;

    #calls: Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->sendEvents()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->access$100(Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;)V

    .line 167
    return-void
.end method
