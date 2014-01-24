.class public Lmiui/maml/LifecycleResourceManager;
.super Lmiui/maml/ResourceManager;
.source "LifecycleResourceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleResourceManager"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field private static mLastCheckCacheTime:J


# instance fields
.field private mCheckTime:J

.field private mInactiveTime:J


# direct methods
.method public constructor <init>(Lmiui/maml/ResourceLoader;JJ)V
    .locals 0
    .parameter "resourceLoader"
    .parameter "inactiveTime"
    .parameter "checkTime"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    .line 21
    iput-wide p2, p0, Lmiui/maml/LifecycleResourceManager;->mInactiveTime:J

    .line 22
    iput-wide p4, p0, Lmiui/maml/LifecycleResourceManager;->mCheckTime:J

    .line 23
    return-void
.end method


# virtual methods
.method public checkCache()V
    .locals 13

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 27
    .local v1, currentTimeMillis:J
    sget-wide v7, Lmiui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    sub-long v7, v1, v7

    iget-wide v9, p0, Lmiui/maml/LifecycleResourceManager;->mCheckTime:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 46
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v7, "LifecycleResourceManager"

    const-string v8, "begin check cache... "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v5, mToBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lmiui/maml/LifecycleResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v8

    .line 33
    :try_start_0
    iget-object v7, p0, Lmiui/maml/LifecycleResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v7}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 34
    .local v4, key:Ljava/lang/String;
    iget-object v7, p0, Lmiui/maml/LifecycleResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v7, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ResourceManager$BitmapInfo;

    .line 35
    .local v0, bi:Lmiui/maml/ResourceManager$BitmapInfo;
    iget-wide v9, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    sub-long v9, v1, v9

    iget-wide v11, p0, Lmiui/maml/LifecycleResourceManager;->mInactiveTime:J

    cmp-long v7, v9, v11

    if-lez v7, :cond_1

    .line 36
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    .end local v0           #bi:Lmiui/maml/ResourceManager$BitmapInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 40
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 41
    .local v6, s:Ljava/lang/String;
    const-string v7, "LifecycleResourceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remove cache: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v7, p0, Lmiui/maml/LifecycleResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v7, v6}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 44
    .end local v6           #s:Ljava/lang/String;
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    sput-wide v1, Lmiui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    goto :goto_0
.end method

.method public finish(Z)V
    .locals 0
    .parameter "keepResource"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lmiui/maml/LifecycleResourceManager;->checkCache()V

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/ResourceManager;->finish(Z)V

    .line 59
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lmiui/maml/LifecycleResourceManager;->checkCache()V

    .line 51
    return-void
.end method
