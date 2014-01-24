.class public abstract Lmiui/os/DaemonAsyncTask;
.super Lmiui/os/ObservableAsyncTask;
.source "DaemonAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/DaemonAsyncTask$StackJobPool;,
        Lmiui/os/DaemonAsyncTask$JobPool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Job:",
        "Ljava/lang/Object;",
        "JobResult:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/os/ObservableAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<TJob;TJobResult;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoStop:Z

.field private mAutoStopDelayedTime:J

.field private mJobPool:Lmiui/os/DaemonAsyncTask$JobPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/os/DaemonAsyncTask$JobPool",
            "<TJob;>;"
        }
    .end annotation
.end field

.field private mLocker:[B

.field private mNeedStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    invoke-direct {p0}, Lmiui/os/ObservableAsyncTask;-><init>()V

    .line 20
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lmiui/os/DaemonAsyncTask;->mAutoStopDelayedTime:J

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    .line 27
    return-void
.end method


# virtual methods
.method public addJob(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJob;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    .local p1, job:Ljava/lang/Object;,"TJob;"
    iget-object v0, p0, Lmiui/os/DaemonAsyncTask;->mJobPool:Lmiui/os/DaemonAsyncTask$JobPool;

    invoke-interface {v0, p1}, Lmiui/os/DaemonAsyncTask$JobPool;->addJob(Ljava/lang/Object;)V

    .line 47
    iget-object v1, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/os/DaemonAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    .line 62
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    const/4 v0, 0x0

    .line 63
    .local v0, delayed:Z
    :goto_0
    iget-boolean v4, p0, Lmiui/os/DaemonAsyncTask;->mNeedStop:Z

    if-nez v4, :cond_1

    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, job:Ljava/lang/Object;,"TJob;"
    iget-object v4, p0, Lmiui/os/DaemonAsyncTask;->mJobPool:Lmiui/os/DaemonAsyncTask$JobPool;

    invoke-interface {v4}, Lmiui/os/DaemonAsyncTask$JobPool;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    iget-object v4, p0, Lmiui/os/DaemonAsyncTask;->mJobPool:Lmiui/os/DaemonAsyncTask$JobPool;

    invoke-interface {v4}, Lmiui/os/DaemonAsyncTask$JobPool;->getNextJob()Ljava/lang/Object;

    move-result-object v3

    .line 68
    .end local v3           #job:Ljava/lang/Object;,"TJob;"
    :cond_0
    if-nez v3, :cond_4

    .line 69
    iget-boolean v4, p0, Lmiui/os/DaemonAsyncTask;->mAutoStop:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 96
    :cond_1
    const/4 v4, 0x0

    return-object v4

    .line 71
    :cond_2
    iget-boolean v4, p0, Lmiui/os/DaemonAsyncTask;->mAutoStop:Z

    if-eqz v4, :cond_3

    .line 72
    const/4 v0, 0x1

    .line 74
    :try_start_0
    iget-wide v4, p0, Lmiui/os/DaemonAsyncTask;->mAutoStopDelayedTime:J

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_3
    iget-object v5, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    monitor-enter v5

    .line 82
    :try_start_1
    iget-object v4, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 83
    :catch_1
    move-exception v1

    .line 84
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 88
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_4
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v3}, Lmiui/os/DaemonAsyncTask;->needsDoJob(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 90
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p0, v3}, Lmiui/os/DaemonAsyncTask;->doJob(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .local v2, entry:Landroid/util/Pair;,"Landroid/util/Pair<TJob;TJobResult;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/util/Pair;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v4}, Lmiui/os/DaemonAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 93
    .end local v2           #entry:Landroid/util/Pair;,"Landroid/util/Pair<TJob;TJobResult;>;"
    :cond_5
    iget-object v4, p0, Lmiui/os/DaemonAsyncTask;->mJobPool:Lmiui/os/DaemonAsyncTask$JobPool;

    invoke-interface {v4, v3}, Lmiui/os/DaemonAsyncTask$JobPool;->finishJob(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract doJob(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJob;)TJobResult;"
        }
    .end annotation
.end method

.method protected needsDoJob(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJob;)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    .local p1, job:Ljava/lang/Object;,"TJob;"
    const/4 v0, 0x1

    return v0
.end method

.method public setAutoStop(Z)V
    .locals 0
    .parameter "autoStop"

    .prologue
    .line 30
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    iput-boolean p1, p0, Lmiui/os/DaemonAsyncTask;->mAutoStop:Z

    .line 31
    return-void
.end method

.method public setAutoStopDelayedTime(J)V
    .locals 0
    .parameter "autoStopDelayedTime"

    .prologue
    .line 34
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    iput-wide p1, p0, Lmiui/os/DaemonAsyncTask;->mAutoStopDelayedTime:J

    .line 35
    return-void
.end method

.method public setJobPool(Lmiui/os/DaemonAsyncTask$JobPool;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/os/DaemonAsyncTask$JobPool",
            "<TJob;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    .local p1, jobs:Lmiui/os/DaemonAsyncTask$JobPool;,"Lmiui/os/DaemonAsyncTask$JobPool<TJob;>;"
    iput-object p1, p0, Lmiui/os/DaemonAsyncTask;->mJobPool:Lmiui/os/DaemonAsyncTask$JobPool;

    .line 43
    return-void
.end method

.method public setLocker([B)V
    .locals 0
    .parameter "locker"

    .prologue
    .line 38
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    iput-object p1, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    .line 39
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 53
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/os/DaemonAsyncTask;->mNeedStop:Z

    .line 54
    iget-object v1, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
