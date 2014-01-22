.class Lcom/android/bluetooth/btservice/RemoteDevices$1;
.super Landroid/os/Handler;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/RemoteDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$1;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 436
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 438
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 439
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$1;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    #calls: Lcom/android/bluetooth/btservice/RemoteDevices;->sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$900(Lcom/android/bluetooth/btservice/RemoteDevices;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
