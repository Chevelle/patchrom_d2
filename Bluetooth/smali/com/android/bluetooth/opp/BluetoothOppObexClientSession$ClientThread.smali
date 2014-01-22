.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# static fields
.field private static final sSleepTime:I = 0x1f4


# instance fields
.field private mConnected:Z

.field private mContext1:Landroid/content/Context;

.field private mCs:Ljavax/obex/ClientSession;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mTransport1:Ljavax/obex/ObexTransport;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

.field private volatile waitingForShare:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .line 144
    const-string v1, "BtOpp ClientThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 141
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 145
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 146
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    .line 147
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 148
    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {p1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 150
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 151
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "BtOppObexClient"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 152
    return-void
.end method

.method private connect()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 233
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create ClientSession with transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_0
    new-instance v3, Ljavax/obex/ClientSession;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-direct {v3, v4}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 236
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-eqz v3, :cond_0

    .line 241
    iput-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 242
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    .line 243
    .local v2, hs:Ljavax/obex/HeaderSet;
    monitor-enter p0

    .line 244
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 245
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v3, v2}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 248
    const-string v3, "BtOppObexClient"

    const-string v4, "OBEX session created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 254
    .end local v2           #hs:Ljavax/obex/HeaderSet;
    :cond_0
    :goto_1
    monitor-enter p0

    .line 255
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 256
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 257
    return-void

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, e1:Ljava/io/IOException;
    const-string v3, "BtOppObexClient"

    const-string v4, "OBEX session create error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v2       #hs:Ljavax/obex/HeaderSet;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 250
    :catch_1
    move-exception v0

    .line 251
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BtOppObexClient"

    const-string v4, "OBEX session connect error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 256
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #hs:Ljavax/obex/HeaderSet;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 208
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 209
    const-string v1, "BtOppObexClient"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_1

    .line 215
    const-string v1, "BtOppObexClient"

    const-string v2, "OBEX session close mCs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V

    .line 217
    const-string v1, "BtOppObexClient"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    if-eqz v1, :cond_2

    .line 224
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 230
    :cond_2
    :goto_2
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 226
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BtOppObexClient"

    const-string v2, "mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doSend()V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    .line 261
    const/16 v2, 0xc8

    .line 264
    .local v2, status:I
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-nez v3, :cond_0

    .line 266
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/InterruptedException;
    const/16 v2, 0x1ea

    .line 269
    goto :goto_0

    .line 271
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-nez v3, :cond_1

    .line 273
    const/16 v2, 0x1f1

    .line 275
    :cond_1
    if-ne v2, v5, :cond_3

    .line 277
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 278
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I

    move-result v2

    .line 283
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 288
    :goto_2
    if-ne v2, v5, :cond_4

    .line 289
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 290
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 291
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 292
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 300
    :goto_3
    return-void

    .line 281
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget v2, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    goto :goto_1

    .line 285
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v4, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_2

    .line 294
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 295
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 296
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput v2, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 297
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 4
    .parameter "exception"

    .prologue
    .line 541
    const-string v1, "BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when sending file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/16 v0, 0x1f0

    .line 543
    .local v0, status:I
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v1, v2, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 544
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 308
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 309
    .local v1, fileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v3, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 311
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 331
    :goto_0
    return-object v1

    .line 321
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .local v2, updateValues:Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 324
    .local v0, contentUri:Landroid/net/Uri;
    const-string v3, "hint"

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v3, "total_bytes"

    iget-wide v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 326
    const-string v3, "mimetype"

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I
    .locals 26
    .parameter "fileInfo"

    .prologue
    .line 335
    const/4 v8, 0x0

    .line 336
    .local v8, error:Z
    const/16 v17, -0x1

    .line 337
    .local v17, responseCode:I
    const/16 v18, 0xc8

    .line 338
    .local v18, status:I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 341
    .local v6, contentUri:Landroid/net/Uri;
    new-instance v16, Ljavax/obex/HeaderSet;

    invoke-direct/range {v16 .. v16}, Ljavax/obex/HeaderSet;-><init>()V

    .line 342
    .local v16, request:Ljavax/obex/HeaderSet;
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 343
    const/16 v22, 0x42

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v23, v0

    const/16 v24, 0xc0

    invoke-static/range {v22 .. v24}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 349
    const/16 v22, 0xc3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 350
    const/4 v14, 0x0

    .line 351
    .local v14, putOperation:Ljavax/obex/ClientOperation;
    const/4 v12, 0x0

    .line 352
    .local v12, outputStream:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 354
    .local v9, inputStream:Ljava/io/InputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 355
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 356
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljavax/obex/ClientOperation;

    move-object v14, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5

    .line 367
    :goto_0
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    .line 368
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 369
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 371
    if-nez v8, :cond_0

    .line 374
    :try_start_5
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 375
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v9

    .line 383
    :cond_0
    :goto_1
    if-nez v8, :cond_1

    .line 384
    :try_start_6
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v21, updateValues:Landroid/content/ContentValues;
    const-string v22, "current_bytes"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    const-string v22, "status"

    const/16 v23, 0xc0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 390
    .end local v21           #updateValues:Landroid/content/ContentValues;
    :cond_1
    if-nez v8, :cond_1b

    .line 391
    const/4 v13, 0x0

    .line 392
    .local v13, position:I
    const/4 v15, 0x0

    .line 393
    .local v15, readLength:I
    const/4 v10, 0x0

    .line 394
    .local v10, okToProceed:Z
    const-wide/16 v19, 0x0

    .line 395
    .local v19, timestamp:J
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v11

    .line 396
    .local v11, outputBufferSize:I
    new-array v5, v11, [B

    .line 397
    .local v5, buffer:[B
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v22, v0

    const/16 v23, 0x4000

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 399
    .local v4, a:Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v22

    if-nez v22, :cond_3

    int-to-long v0, v13

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_3

    .line 400
    #calls: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->readFully(Ljava/io/InputStream;[BI)I
    invoke-static {v4, v5, v11}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Ljava/io/InputStream;[BI)I

    move-result v15

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v23, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    const-wide/32 v24, 0xc350

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 405
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    .line 406
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 407
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 410
    const/16 v22, 0x0

    :try_start_8
    move/from16 v0, v22

    invoke-virtual {v12, v5, v0, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 412
    add-int/2addr v13, v15

    .line 414
    int-to-long v0, v13

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_16

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5

    .line 417
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 418
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 429
    :goto_2
    :try_start_a
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 431
    const/16 v22, 0x90

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0xa0

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 434
    :cond_2
    const/4 v10, 0x1

    .line 435
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 436
    .restart local v21       #updateValues:Landroid/content/ContentValues;
    const-string v22, "current_bytes"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 444
    .end local v21           #updateValues:Landroid/content/ContentValues;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v22

    if-nez v22, :cond_19

    if-eqz v10, :cond_19

    int-to-long v0, v13

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_19

    .line 448
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v5, v0, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v15

    .line 449
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v5, v0, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 452
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5

    move-result v17

    .line 454
    const/16 v22, 0x90

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_18

    const/16 v22, 0xa0

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_18

    .line 457
    const/4 v10, 0x0

    goto :goto_3

    .line 356
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #okToProceed:Z
    .end local v11           #outputBufferSize:I
    .end local v13           #position:I
    .end local v15           #readLength:I
    .end local v19           #timestamp:J
    :catchall_0
    move-exception v22

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_5

    .line 494
    :catch_0
    move-exception v7

    .line 495
    .local v7, e:Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 503
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 504
    if-nez v8, :cond_6

    .line 505
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 506
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_24

    .line 508
    const/16 v22, 0xa0

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 509
    const-string v22, "BtOppObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Response error code is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v18, 0x1ef

    .line 511
    const/16 v22, 0xcf

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 512
    const/16 v18, 0x196

    .line 514
    :cond_4
    const/16 v22, 0xc3

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    const/16 v22, 0xc6

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 516
    :cond_5
    const/16 v18, 0x193

    .line 525
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 527
    if-eqz v9, :cond_7

    .line 528
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 530
    :cond_7
    if-eqz v14, :cond_8

    .line 531
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 537
    .end local v7           #e:Ljava/io/IOException;
    :cond_8
    :goto_5
    return v18

    .line 360
    :catch_1
    move-exception v7

    .line 361
    .restart local v7       #e:Ljava/io/IOException;
    const/16 v18, 0x1f0

    .line 362
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 364
    const-string v22, "BtOppObexClient"

    const-string v23, "Error when put HeaderSet "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_5

    .line 365
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 369
    .end local v7           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v22

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v22
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_5

    .line 496
    :catch_2
    move-exception v7

    .line 497
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_12
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 503
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 504
    if-nez v8, :cond_b

    .line 505
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 506
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_25

    .line 508
    const/16 v22, 0xa0

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 509
    const-string v22, "BtOppObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Response error code is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v18, 0x1ef

    .line 511
    const/16 v22, 0xcf

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 512
    const/16 v18, 0x196

    .line 514
    :cond_9
    const/16 v22, 0xc3

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    const/16 v22, 0xc6

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 516
    :cond_a
    const/16 v18, 0x193

    .line 525
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 527
    if-eqz v9, :cond_c

    .line 528
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 530
    :cond_c
    if-eqz v14, :cond_8

    .line 531
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_5

    .line 533
    :catch_3
    move-exception v7

    .line 534
    .local v7, e:Ljava/io/IOException;
    const-string v22, "BtOppObexClient"

    const-string v23, "Error when closing stream after send"

    :goto_7
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 376
    .end local v7           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 377
    .restart local v7       #e:Ljava/io/IOException;
    const/16 v18, 0x1f0

    .line 378
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 379
    const-string v22, "BtOppObexClient"

    const-string v23, "Error when openOutputStream"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_5

    .line 380
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 407
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #okToProceed:Z
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:I
    .restart local v15       #readLength:I
    .restart local v19       #timestamp:J
    :catchall_2
    move-exception v22

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    throw v22
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_5

    .line 498
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #okToProceed:Z
    .end local v11           #outputBufferSize:I
    .end local v13           #position:I
    .end local v15           #readLength:I
    .end local v19           #timestamp:J
    :catch_5
    move-exception v7

    .line 499
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_17
    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 503
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 504
    if-nez v8, :cond_f

    .line 505
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 506
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_26

    .line 508
    const/16 v22, 0xa0

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 509
    const-string v22, "BtOppObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Response error code is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v18, 0x1ef

    .line 511
    const/16 v22, 0xcf

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 512
    const/16 v18, 0x196

    .line 514
    :cond_d
    const/16 v22, 0xc3

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    const/16 v22, 0xc6

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 516
    :cond_e
    const/16 v18, 0x193

    .line 525
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 527
    if-eqz v9, :cond_10

    .line 528
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 530
    :cond_10
    if-eqz v14, :cond_8

    .line 531
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_6

    goto/16 :goto_5

    .line 533
    :catch_6
    move-exception v7

    .line 534
    .local v7, e:Ljava/io/IOException;
    const-string v22, "BtOppObexClient"

    const-string v23, "Error when closing stream after send"

    goto/16 :goto_7

    .line 418
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #okToProceed:Z
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:I
    .restart local v15       #readLength:I
    .restart local v19       #timestamp:J
    :catchall_3
    move-exception v22

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    throw v22
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1a} :catch_5

    .line 501
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #okToProceed:Z
    .end local v11           #outputBufferSize:I
    .end local v13           #position:I
    .end local v15           #readLength:I
    .end local v19           #timestamp:J
    :catchall_4
    move-exception v22

    .line 503
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 504
    if-nez v8, :cond_13

    .line 505
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 506
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_23

    .line 508
    const/16 v23, 0xa0

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    .line 509
    const-string v23, "BtOppObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Response error code is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v18, 0x1ef

    .line 511
    const/16 v23, 0xcf

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 512
    const/16 v18, 0x196

    .line 514
    :cond_11
    const/16 v23, 0xc3

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    const/16 v23, 0xc6

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 516
    :cond_12
    const/16 v18, 0x193

    .line 525
    :cond_13
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 527
    if-eqz v9, :cond_14

    .line 528
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 530
    :cond_14
    if-eqz v14, :cond_15

    .line 531
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_8

    .line 501
    :cond_15
    :goto_a
    throw v22

    .line 422
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #okToProceed:Z
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:I
    .restart local v15       #readLength:I
    .restart local v19       #timestamp:J
    :cond_16
    :try_start_1c
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    monitor-enter p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_5

    .line 425
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 426
    monitor-exit p0

    goto/16 :goto_2

    :catchall_5
    move-exception v22

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :try_start_1e
    throw v22

    .line 440
    :cond_17
    const-string v22, "BtOppObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Remote reject, Response code is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 459
    :cond_18
    add-int/2addr v13, v15

    .line 465
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 466
    .restart local v21       #updateValues:Landroid/content/ContentValues;
    const-string v22, "current_bytes"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    .line 473
    .end local v21           #updateValues:Landroid/content/ContentValues;
    :cond_19
    const/16 v22, 0xc3

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_1a

    const/16 v22, 0xc6

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_20

    .line 475
    :cond_1a
    const-string v22, "BtOppObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Remote reject file "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " length "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_5

    .line 477
    const/16 v18, 0x193

    .line 503
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #okToProceed:Z
    .end local v11           #outputBufferSize:I
    .end local v13           #position:I
    .end local v15           #readLength:I
    .end local v19           #timestamp:J
    :cond_1b
    :goto_b
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 504
    if-nez v8, :cond_1e

    .line 505
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 506
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_27

    .line 508
    const/16 v22, 0xa0

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_1e

    .line 509
    const-string v22, "BtOppObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Response error code is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v18, 0x1ef

    .line 511
    const/16 v22, 0xcf

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    .line 512
    const/16 v18, 0x196

    .line 514
    :cond_1c
    const/16 v22, 0xc3

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_1d

    const/16 v22, 0xc6

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    .line 516
    :cond_1d
    const/16 v18, 0x193

    .line 525
    :cond_1e
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 527
    if-eqz v9, :cond_1f

    .line 528
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 530
    :cond_1f
    if-eqz v14, :cond_8

    .line 531
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_7

    goto/16 :goto_5

    .line 533
    :catch_7
    move-exception v7

    .line 534
    .restart local v7       #e:Ljava/io/IOException;
    const-string v22, "BtOppObexClient"

    const-string v23, "Error when closing stream after send"

    goto/16 :goto_7

    .line 478
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #okToProceed:Z
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:I
    .restart local v15       #readLength:I
    .restart local v19       #timestamp:J
    :cond_20
    const/16 v22, 0xcf

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    .line 479
    :try_start_20
    const-string v22, "BtOppObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Remote reject file type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/16 v18, 0x196

    goto/16 :goto_b

    .line 481
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v22

    if-nez v22, :cond_22

    int-to-long v0, v13

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-nez v22, :cond_22

    .line 482
    const-string v22, "BtOppObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SendFile finished send out file "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " length "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_b

    .line 486
    :cond_22
    const/4 v8, 0x1

    .line 487
    const/16 v18, 0x1ea

    .line 488
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->abort()V

    .line 490
    const-string v22, "BtOppObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SendFile interrupted when send out file "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " at "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " of "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_20} :catch_5

    goto/16 :goto_b

    .line 533
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #okToProceed:Z
    .end local v11           #outputBufferSize:I
    .end local v13           #position:I
    .end local v15           #readLength:I
    .end local v19           #timestamp:J
    :catch_8
    move-exception v7

    .line 534
    .restart local v7       #e:Ljava/io/IOException;
    const-string v23, "BtOppObexClient"

    const-string v24, "Error when closing stream after send"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 521
    .end local v7           #e:Ljava/io/IOException;
    :cond_23
    const/16 v18, 0x1f1

    goto/16 :goto_9

    .line 533
    .restart local v7       #e:Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 534
    const-string v22, "BtOppObexClient"

    const-string v23, "Error when closing stream after send"

    goto/16 :goto_7

    .line 521
    :cond_24
    const/16 v18, 0x1f1

    goto/16 :goto_4

    .local v7, e:Ljava/lang/NullPointerException;
    :cond_25
    const/16 v18, 0x1f1

    goto/16 :goto_6

    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :cond_26
    const/16 v18, 0x1f1

    goto/16 :goto_8

    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_27
    const/16 v18, 0x1f1

    goto/16 :goto_c
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 156
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 158
    return-void
.end method

.method public interrupt()V
    .locals 4

    .prologue
    .line 549
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 550
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$000(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v2}, Ljavax/obex/ObexTransport;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 558
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 559
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 560
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 563
    :cond_0
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 565
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    monitor-exit p0

    .line 566
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BtOppObexClient"

    const-string v3, "mTransport.close error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 162
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 165
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 168
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->connect()V

    .line 177
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    if-nez v2, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->doSend()V

    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, e1:Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    goto :goto_0

    .line 182
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    const-string v2, "BtOppObexClient"

    const-string v3, "Client thread waiting for next share, sleep for 500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 185
    :catch_1
    move-exception v2

    goto :goto_1

    .line 190
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->disconnect()V

    .line 192
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 197
    .local v1, msg:Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 198
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 201
    return-void
.end method
