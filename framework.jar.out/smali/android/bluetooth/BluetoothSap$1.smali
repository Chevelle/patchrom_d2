.class Landroid/bluetooth/BluetoothSap$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothSap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothSap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSap;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 5
    .parameter "on"

    .prologue
    .line 149
    const-string v2, "BluetoothSap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBluetoothStateChange on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz p1, :cond_1

    .line 152
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    #getter for: Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;
    invoke-static {v2}, Landroid/bluetooth/BluetoothSap;->access$000(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/IBluetoothSap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 153
    const-string v2, "BluetoothSap"

    const-string/jumbo v3, "onBluetoothStateChange call bindService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSap;->doBind()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "BluetoothSap"

    const-string/jumbo v3, "onBluetoothStateChange: could not bind to SAP service: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 158
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "BluetoothSap"

    const-string/jumbo v3, "onBluetoothStateChange: could not bind to SAP service: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    #getter for: Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Landroid/bluetooth/BluetoothSap;->access$100(Landroid/bluetooth/BluetoothSap;)Landroid/content/ServiceConnection;

    move-result-object v3

    monitor-enter v3

    .line 164
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    #getter for: Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;
    invoke-static {v2}, Landroid/bluetooth/BluetoothSap;->access$000(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/IBluetoothSap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    .line 166
    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    #getter for: Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;
    invoke-static {v2}, Landroid/bluetooth/BluetoothSap;->access$000(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/IBluetoothSap;

    move-result-object v2

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothSap;->cleanup()Z

    .line 167
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    const/4 v4, 0x0

    #setter for: Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothSap;->access$002(Landroid/bluetooth/BluetoothSap;Landroid/bluetooth/IBluetoothSap;)Landroid/bluetooth/IBluetoothSap;

    .line 168
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    #getter for: Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/bluetooth/BluetoothSap;->access$200(Landroid/bluetooth/BluetoothSap;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    #getter for: Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Landroid/bluetooth/BluetoothSap;->access$100(Landroid/bluetooth/BluetoothSap;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 173
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 169
    :catch_2
    move-exception v1

    .line 170
    .local v1, re:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "BluetoothSap"

    const-string v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
