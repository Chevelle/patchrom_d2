.class Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothMns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketConnectThread"
.end annotation


# instance fields
.field private final device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMns;

.field private timestamp:J


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMns;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter
    .parameter "device"

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    .line 633
    const-string v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 634
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 635
    return-void
.end method

.method private markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 669
    if-eqz p1, :cond_0

    .line 670
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    #getter for: Lcom/android/bluetooth/map/BluetoothMns;->mSessionHandler:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMns;->access$1500(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 676
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtMns"

    const-string v2, "Error when close socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public interrupt()V
    .locals 0

    .prologue
    .line 638
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;->timestamp:J

    .line 644
    const/4 v0, 0x0

    .line 646
    .local v0, btSocket:Landroid/bluetooth/BluetoothSocket;
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->MessageNotificationServer:Landroid/os/ParcelUuid;

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BtMns"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rfcomm socket connection attempt took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;->timestamp:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMnsRfcommTransport;

    invoke-direct {v2, v0}, Lcom/android/bluetooth/map/BluetoothMnsRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 659
    .local v2, transport:Ljavax/obex/ObexTransport;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BtMns"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send transport message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    #getter for: Lcom/android/bluetooth/map/BluetoothMns;->mSessionHandler:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMns;->access$1500(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v2}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 662
    .end local v2           #transport:Ljavax/obex/ObexTransport;
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v1

    .line 650
    .local v1, e:Ljava/io/IOException;
    const-string v3, "BtMns"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BtSocket Connect error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_0
.end method
