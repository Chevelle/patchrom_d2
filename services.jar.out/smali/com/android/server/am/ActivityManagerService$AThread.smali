.class Lcom/android/server/am/ActivityManagerService$AThread;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AThread"
.end annotation


# instance fields
.field mLooper:Landroid/os/Looper;

.field mReady:Z

.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1912
    const-string v0, "ActivityManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z

    .line 1913
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1917
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1919
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1921
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 1923
    new-instance v0, Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService;-><init>(Lcom/android/server/am/ActivityManagerService$1;)V

    .line 1925
    .local v0, m:Lcom/android/server/am/ActivityManagerService;
    monitor-enter p0

    .line 1926
    :try_start_0
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1927
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mLooper:Landroid/os/Looper;

    .line 1928
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$AThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 1929
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1930
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1932
    monitor-enter p0

    .line 1933
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    .line 1935
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1936
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1930
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1939
    :cond_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1942
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1943
    const-string v1, "ActivityManager"

    const-string v2, "Enabled StrictMode logging for AThread\'s Looper"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :cond_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1947
    return-void

    .line 1939
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
