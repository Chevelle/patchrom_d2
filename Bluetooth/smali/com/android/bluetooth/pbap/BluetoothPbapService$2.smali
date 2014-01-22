.class Lcom/android/bluetooth/pbap/BluetoothPbapService$2;
.super Landroid/bluetooth/IBluetoothPbap$Stub;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPbap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 759
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    const-string v0, "BluetoothPbapService"

    const-string v1, "connect(): not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :goto_0
    return v3

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 5

    .prologue
    .line 770
    const-string v1, "BluetoothPbapService"

    const-string v2, "disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 773
    const-string v1, "BluetoothPbapService"

    const-string v2, "disconnect(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :goto_0
    return-void

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    monitor-enter v2

    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 797
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 782
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 783
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 784
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v3, 0x0

    #setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;
    invoke-static {v1, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1702(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeSocket(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1800(Lcom/android/bluetooth/pbap/BluetoothPbapService;ZZ)V

    .line 788
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v3, 0x0

    #setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$402(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 792
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v3, 0x0

    const/4 v4, 0x2

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V
    invoke-static {v1, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1900(Lcom/android/bluetooth/pbap/BluetoothPbapService;II)V

    goto :goto_1

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "BluetoothPbapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught the error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 734
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClient"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 737
    const-string v1, "BluetoothPbapService"

    const-string v2, "getClient(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    :goto_0
    return-object v0

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 722
    const-string v0, "BluetoothPbapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    const-string v0, "BluetoothPbapService"

    const-string v1, "getState(): not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v0, 0x0

    .line 730
    :goto_0
    return v0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v0

    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 749
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 750
    const-string v1, "BluetoothPbapService"

    const-string v2, "isConnected(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    :goto_0
    return v0

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
