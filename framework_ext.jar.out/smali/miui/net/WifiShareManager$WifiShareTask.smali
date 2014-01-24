.class abstract Lmiui/net/WifiShareManager$WifiShareTask;
.super Ljava/util/concurrent/FutureTask;
.source "WifiShareManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/WifiShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "WifiShareTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/WifiShareManager$WifiShareTask$IWifiShareManagerResponseImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mResponse:Lmiui/net/IWifiShareManagerResponse;

.field private mService:Lmiui/net/IWifiShareManagerService;

.field private mWifiShareListener:Lmiui/net/WifiShareManager$WifiShareListener;

.field final synthetic this$0:Lmiui/net/WifiShareManager;


# direct methods
.method protected constructor <init>(Lmiui/net/WifiShareManager;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/net/WifiShareManager$WifiShareTask;-><init>(Lmiui/net/WifiShareManager;Landroid/content/Context;Lmiui/net/WifiShareManager$WifiShareListener;)V

    .line 142
    return-void
.end method

.method protected constructor <init>(Lmiui/net/WifiShareManager;Landroid/content/Context;Landroid/os/Handler;Lmiui/net/WifiShareManager$WifiShareListener;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "handler"
    .parameter "wifiShareListener"

    .prologue
    .line 148
    iput-object p1, p0, Lmiui/net/WifiShareManager$WifiShareTask;->this$0:Lmiui/net/WifiShareManager;

    .line 149
    new-instance v0, Lmiui/net/WifiShareManager$WifiShareTask$1;

    invoke-direct {v0, p1}, Lmiui/net/WifiShareManager$WifiShareTask$1;-><init>(Lmiui/net/WifiShareManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 157
    iput-object p2, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mContext:Landroid/content/Context;

    .line 158
    iput-object p3, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mHandler:Landroid/os/Handler;

    .line 159
    iput-object p4, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mWifiShareListener:Lmiui/net/WifiShareManager$WifiShareListener;

    .line 160
    new-instance v0, Lmiui/net/WifiShareManager$WifiShareTask$IWifiShareManagerResponseImpl;

    invoke-direct {v0, p0}, Lmiui/net/WifiShareManager$WifiShareTask$IWifiShareManagerResponseImpl;-><init>(Lmiui/net/WifiShareManager$WifiShareTask;)V

    iput-object v0, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mResponse:Lmiui/net/IWifiShareManagerResponse;

    .line 161
    return-void
.end method

.method protected constructor <init>(Lmiui/net/WifiShareManager;Landroid/content/Context;Lmiui/net/WifiShareManager$WifiShareListener;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "wifiShareListener"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/net/WifiShareManager$WifiShareTask;-><init>(Lmiui/net/WifiShareManager;Landroid/content/Context;Landroid/os/Handler;Lmiui/net/WifiShareManager$WifiShareListener;)V

    .line 146
    return-void
.end method

.method static synthetic access$200(Lmiui/net/WifiShareManager$WifiShareTask;)Lmiui/net/WifiShareManager$WifiShareListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mWifiShareListener:Lmiui/net/WifiShareManager$WifiShareListener;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/net/WifiShareManager$WifiShareTask;Lmiui/net/WifiShareManager$WifiShareListener;)Lmiui/net/WifiShareManager$WifiShareListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mWifiShareListener:Lmiui/net/WifiShareManager$WifiShareListener;

    return-object p1
.end method

.method private ensureNotOnMainThread()V
    .locals 4

    .prologue
    .line 312
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 313
    .local v1, looper:Landroid/os/Looper;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, exception:Ljava/lang/IllegalStateException;
    const-string v2, "WifiShareManager"

    const-string v3, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    throw v0

    .line 320
    .end local v0           #exception:Ljava/lang/IllegalStateException;
    :cond_0
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 199
    invoke-virtual {p0}, Lmiui/net/WifiShareManager$WifiShareTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-direct {p0}, Lmiui/net/WifiShareManager$WifiShareTask;->ensureNotOnMainThread()V

    .line 203
    :cond_0
    if-nez p1, :cond_1

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lmiui/net/WifiShareManager$WifiShareTask;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :goto_0
    invoke-virtual {p0, v4}, Lmiui/net/WifiShareManager$WifiShareTask;->cancel(Z)Z

    .line 206
    return-object v2

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v2

    :try_start_3
    invoke-virtual {p0, v2, v3, p2}, Lmiui/net/WifiShareManager$WifiShareTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    :try_start_4
    check-cast v2, Landroid/os/Bundle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Ljava/util/concurrent/CancellationException;
    :try_start_5
    new-instance v2, Lmiui/net/exception/OperationCancelledException;

    const-string v3, "cancelled by user"

    invoke-direct {v2, v3}, Lmiui/net/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 228
    .end local v1           #e:Ljava/util/concurrent/CancellationException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v4}, Lmiui/net/WifiShareManager$WifiShareTask;->cancel(Z)Z

    throw v2

    .line 214
    :catch_1
    move-exception v1

    .line 215
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    :try_start_6
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 216
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 217
    check-cast v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 218
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_2
    instance-of v2, v0, Lmiui/net/exception/AuthenticationFailureException;

    if-eqz v2, :cond_3

    .line 219
    check-cast v0, Lmiui/net/exception/AuthenticationFailureException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 220
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_3
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_4

    .line 221
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 222
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_4
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_5

    .line 223
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 225
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 212
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    .line 228
    :goto_1
    invoke-virtual {p0, v4}, Lmiui/net/WifiShareManager$WifiShareTask;->cancel(Z)Z

    .line 230
    new-instance v2, Lmiui/net/exception/OperationCancelledException;

    const-string v3, "cancelled by exception"

    invoke-direct {v2, v3}, Lmiui/net/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_1

    .line 210
    :catch_7
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected bind()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lmiui/net/WifiShareManager$WifiShareTask;->bindToWifiShareService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const-string v0, "WifiShareManager"

    const-string v1, "bind to service failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    return-void
.end method

.method protected bindToWifiShareService()Z
    .locals 3

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.WIFI_SHARE_UPLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method protected abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected done()V
    .locals 2

    .prologue
    .line 260
    iget-object v1, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mWifiShareListener:Lmiui/net/WifiShareManager$WifiShareListener;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/net/WifiShareManager$WifiShareTask;->this$0:Lmiui/net/WifiShareManager;

    #getter for: Lmiui/net/WifiShareManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/net/WifiShareManager;->access$100(Lmiui/net/WifiShareManager;)Landroid/os/Handler;

    move-result-object v0

    .line 262
    .local v0, handler:Landroid/os/Handler;
    :goto_0
    new-instance v1, Lmiui/net/WifiShareManager$WifiShareTask$2;

    invoke-direct {v1, p0}, Lmiui/net/WifiShareManager$WifiShareTask$2;-><init>(Lmiui/net/WifiShareManager$WifiShareTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mHandler:Landroid/os/Handler;

    .line 288
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method protected getResponse()Lmiui/net/IWifiShareManagerResponse;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mResponse:Lmiui/net/IWifiShareManagerResponse;

    return-object v0
.end method

.method public getResult()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, v0, v0}, Lmiui/net/WifiShareManager$WifiShareTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lmiui/net/WifiShareManager$WifiShareTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lmiui/net/IWifiShareManagerService;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mService:Lmiui/net/IWifiShareManagerService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 293
    const-string v1, "WifiShareManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected, component:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {p2}, Lmiui/net/IWifiShareManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IWifiShareManagerService;

    move-result-object v1

    iput-object v1, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mService:Lmiui/net/IWifiShareManagerService;

    .line 297
    :try_start_0
    invoke-virtual {p0}, Lmiui/net/WifiShareManager$WifiShareTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmiui/net/WifiShareManager$WifiShareTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 305
    invoke-virtual {p0}, Lmiui/net/WifiShareManager$WifiShareTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const-string v0, "WifiShareManager"

    const-string v1, "wifi share service disconnected, but task is not completed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mService:Lmiui/net/IWifiShareManagerService;

    .line 309
    return-void
.end method

.method protected set(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 235
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p0}, Lmiui/net/WifiShareManager$WifiShareTask;->unBind()V

    .line 237
    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/net/WifiShareManager$WifiShareTask;->set(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 241
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    .line 242
    invoke-virtual {p0}, Lmiui/net/WifiShareManager$WifiShareTask;->unBind()V

    .line 243
    return-void
.end method

.method public final start()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lmiui/net/WifiShareManager$WifiShareTask;->bind()V

    .line 175
    return-void
.end method

.method protected unBind()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 186
    const-string v0, "WifiShareManager"

    const-string v1, "service unbinded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/net/WifiShareManager$WifiShareTask;->mContext:Landroid/content/Context;

    .line 189
    return-void
.end method
