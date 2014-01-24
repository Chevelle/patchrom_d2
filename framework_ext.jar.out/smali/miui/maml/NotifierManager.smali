.class public final Lmiui/maml/NotifierManager;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/NotifierManager$MultiBroadcastNotifier;,
        Lmiui/maml/NotifierManager$MobileDataNotifier;,
        Lmiui/maml/NotifierManager$BroadcastNotifier;,
        Lmiui/maml/NotifierManager$BaseNotifier;,
        Lmiui/maml/NotifierManager$OnNotifyListener;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "NotifierManager"

.field public static TYPE_MOBILE_DATA:Ljava/lang/String;

.field public static TYPE_WIFI_STATE:Ljava/lang/String;

.field private static sInstance:Lmiui/maml/NotifierManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/NotifierManager$BaseNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    .line 22
    const-string v0, "MobileData"

    sput-object v0, Lmiui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    .line 23
    const-string v0, "WifiState"

    sput-object v0, Lmiui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 28
    iput-object p1, p0, Lmiui/maml/NotifierManager;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    return v0
.end method

.method private static createNotifier(Ljava/lang/String;Landroid/content/Context;)Lmiui/maml/NotifierManager$BaseNotifier;
    .locals 4
    .parameter "t"
    .parameter "c"

    .prologue
    .line 32
    sget-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNotifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    new-instance v0, Lmiui/maml/NotifierManager$MobileDataNotifier;

    invoke-direct {v0, p1}, Lmiui/maml/NotifierManager$MobileDataNotifier;-><init>(Landroid/content/Context;)V

    .line 44
    :goto_0
    return-object v0

    .line 37
    :cond_1
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    new-instance v0, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    aput-object v3, v1, v2

    invoke-direct {v0, p1, v1}, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Lmiui/maml/NotifierManager$BroadcastNotifier;

    invoke-direct {v0, p1, p0}, Lmiui/maml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmiui/maml/NotifierManager;
    .locals 2
    .parameter "c"

    .prologue
    .line 48
    const-class v1, Lmiui/maml/NotifierManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/maml/NotifierManager;->sInstance:Lmiui/maml/NotifierManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lmiui/maml/NotifierManager;

    invoke-direct {v0, p0}, Lmiui/maml/NotifierManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/maml/NotifierManager;->sInstance:Lmiui/maml/NotifierManager;

    .line 51
    :cond_0
    sget-object v0, Lmiui/maml/NotifierManager;->sInstance:Lmiui/maml/NotifierManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized acquireNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .locals 4
    .parameter "type"
    .parameter "l"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lmiui/maml/NotifierManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "NotifierManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireNotifier:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$BaseNotifier;

    .line 63
    .local v0, notifier:Lmiui/maml/NotifierManager$BaseNotifier;
    if-nez v0, :cond_2

    .line 64
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lmiui/maml/NotifierManager;->createNotifier(Ljava/lang/String;Landroid/content/Context;)Lmiui/maml/NotifierManager$BaseNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 65
    if-nez v0, :cond_1

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->init()V

    .line 69
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_2
    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->addListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V

    .line 72
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->addRef()I

    .line 73
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->addActiveRef()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    .end local v0           #notifier:Lmiui/maml/NotifierManager$BaseNotifier;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pause(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .locals 2
    .parameter "t"
    .parameter "l"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$BaseNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .local v0, notifier:Lmiui/maml/NotifierManager$BaseNotifier;
    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->removeListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V

    .line 97
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->releaseActiveRef()I

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    .end local v0           #notifier:Lmiui/maml/NotifierManager$BaseNotifier;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized releaseNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .locals 4
    .parameter "type"
    .parameter "l"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lmiui/maml/NotifierManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "NotifierManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseNotifier:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$BaseNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .local v0, notifier:Lmiui/maml/NotifierManager$BaseNotifier;
    if-nez v0, :cond_2

    .line 90
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->releaseActiveRef()I

    .line 85
    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->removeListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V

    .line 86
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->releaseRef()I

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->finish()V

    .line 88
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    .end local v0           #notifier:Lmiui/maml/NotifierManager$BaseNotifier;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized resume(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .locals 3
    .parameter "t"
    .parameter "l"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$BaseNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .local v0, notifier:Lmiui/maml/NotifierManager$BaseNotifier;
    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->addListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V

    .line 106
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->addActiveRef()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 107
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    .end local v0           #notifier:Lmiui/maml/NotifierManager$BaseNotifier;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
