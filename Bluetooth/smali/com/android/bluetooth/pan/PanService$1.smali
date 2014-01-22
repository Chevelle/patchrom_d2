.class Lcom/android/bluetooth/pan/PanService$1;
.super Landroid/os/Handler;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 133
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 134
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    #calls: Lcom/android/bluetooth/pan/PanService;->connectPanNative([BII)Z
    invoke-static {v0, v2, v3, v4}, Lcom/android/bluetooth/pan/PanService;->access$000(Lcom/android/bluetooth/pan/PanService;[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 145
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 146
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    #calls: Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z
    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/PanService;->access$100(Lcom/android/bluetooth/pan/PanService;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    #getter for: Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$200(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 149
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    #getter for: Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$200(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 157
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/bluetooth/pan/PanService$ConnectState;

    .line 158
    .local v6, cs:Lcom/android/bluetooth/pan/PanService$ConnectState;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->addr:[B

    #calls: Lcom/android/bluetooth/pan/PanService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/PanService;->access$300(Lcom/android/bluetooth/pan/PanService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 161
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    #getter for: Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$200(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    iget v3, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    #calls: Lcom/android/bluetooth/pan/PanService;->convertHalState(I)I
    invoke-static {v3}, Lcom/android/bluetooth/pan/PanService;->access$400(I)I

    move-result v3

    iget v4, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->local_role:I

    iget v5, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->remote_role:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method
