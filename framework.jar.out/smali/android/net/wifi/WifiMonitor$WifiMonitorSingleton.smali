.class Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiMonitorSingleton"
.end annotation


# static fields
.field private static sSingletonLock:Ljava/lang/Object;

.field private static sWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;


# instance fields
.field private mConnected:Z

.field private mIfaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 394
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->sSingletonLock:Ljava/lang/Object;

    .line 395
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->sWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 401
    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 393
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    iput-boolean p1, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    return p1
.end method

.method static getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;
    .locals 2

    .prologue
    .line 405
    sget-object v1, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    sget-object v0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->sWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-direct {v0}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->sWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .line 410
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    sget-object v0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->sWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    return-object v0

    .line 410
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .parameter "iface"

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized killSupplicant(Z)V
    .locals 4
    .parameter "p2pSupported"

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-static {p1}, Landroid/net/wifi/WifiNative;->killSupplicant(Z)Z

    .line 481
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 482
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 483
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 485
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiMonitor;

    .line 486
    .local v2, m:Landroid/net/wifi/WifiMonitor;
    const/4 v3, 0x0

    #setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v2, v3}, Landroid/net/wifi/WifiMonitor;->access$002(Landroid/net/wifi/WifiMonitor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 480
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;>;"
    .end local v2           #m:Landroid/net/wifi/WifiMonitor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 488
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerInterfaceMonitor(Ljava/lang/String;Landroid/net/wifi/WifiMonitor;)V
    .locals 1
    .parameter "iface"
    .parameter "m"

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;

    if-nez v0, :cond_0

    .line 463
    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {p2}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :cond_0
    monitor-exit p0

    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 6
    .parameter "iface"

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiMonitor;

    .line 416
    .local v2, m:Landroid/net/wifi/WifiMonitor;
    if-nez v2, :cond_0

    .line 417
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startMonitor called with unknown iface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :goto_0
    monitor-exit p0

    return-void

    .line 421
    :cond_0
    :try_start_1
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startMonitoring("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") with mConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-boolean v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    if-eqz v3, :cond_1

    .line 424
    const/4 v3, 0x1

    #setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v2, v3}, Landroid/net/wifi/WifiMonitor;->access$002(Landroid/net/wifi/WifiMonitor;Z)Z

    .line 425
    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    .end local v2           #m:Landroid/net/wifi/WifiMonitor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 428
    .restart local v2       #m:Landroid/net/wifi/WifiMonitor;
    :cond_1
    const/4 v0, 0x0

    .local v0, connectTries:I
    move v1, v0

    .line 430
    .end local v0           #connectTries:I
    .local v1, connectTries:I
    :goto_1
    :try_start_2
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    const/4 v3, 0x1

    #setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v2, v3}, Landroid/net/wifi/WifiMonitor;->access$002(Landroid/net/wifi/WifiMonitor;Z)Z

    .line 432
    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 433
    new-instance v3, Landroid/net/wifi/WifiMonitor$MonitorThread;

    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {v3, v4, p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;-><init>(Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->start()V

    .line 434
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 437
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    const/16 v3, 0x32

    if-ge v1, v3, :cond_3

    .line 439
    const-wide/16 v3, 0x64

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    move v1, v0

    .line 441
    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    goto :goto_1

    .line 440
    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    :catch_0
    move-exception v3

    move v1, v0

    .line 441
    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    goto :goto_1

    .line 443
    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    :cond_3
    :try_start_4
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24002

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 445
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startMonitoring("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 3
    .parameter "iface"

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiMonitor;

    .line 455
    .local v0, m:Landroid/net/wifi/WifiMonitor;
    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiMonitor;->access$002(Landroid/net/wifi/WifiMonitor;Z)Z

    .line 456
    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24002

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    .line 453
    .end local v0           #m:Landroid/net/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopSupplicant()V
    .locals 1

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    monitor-exit p0

    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterInterfaceMonitor(Ljava/lang/String;)V
    .locals 2
    .parameter "iface"

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    .local v0, m:Landroid/net/wifi/WifiMonitor;
    monitor-exit p0

    return-void

    .line 471
    .end local v0           #m:Landroid/net/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
