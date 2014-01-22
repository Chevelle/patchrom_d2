.class Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 1
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/pbap/BluetoothPbapService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 519
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v3

    if-nez v3, :cond_3

    .line 520
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->initSocket()Z
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 521
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 539
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 540
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v4, 0x7f040075

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 542
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 545
    .local v2, trust:Z
    if-eqz v2, :cond_4

    .line 549
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->startObexServerSession()V
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    :goto_1
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 526
    .end local v2           #trust:Z
    :cond_3
    :goto_2
    iget-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    if-nez v3, :cond_0

    .line 529
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    #setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$402(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 532
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    #setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$502(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 533
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_1

    .line 534
    const-string v3, "BluetoothPbapService"

    const-string v4, "getRemoteDevice() = null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, ex:Ljava/io/IOException;
    iput-boolean v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    goto :goto_2

    .line 550
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v2       #trust:Z
    :catch_1
    move-exception v0

    .line 551
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_4
    const-string v3, "BluetoothPbapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch exception starting obex server session"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 555
    .end local v0           #ex:Ljava/io/IOException;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 561
    const-string v3, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const-string v3, "android.bluetooth.device.extra.CLASS_NAME"

    const-class v4, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 565
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v4, 0x1

    #setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$802(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z

    .line 574
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7530

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    .line 592
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->interrupt()V

    .line 593
    return-void
.end method
