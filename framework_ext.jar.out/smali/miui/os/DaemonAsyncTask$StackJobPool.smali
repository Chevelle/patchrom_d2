.class public Lmiui/os/DaemonAsyncTask$StackJobPool;
.super Ljava/lang/Object;
.source "DaemonAsyncTask.java"

# interfaces
.implements Lmiui/os/DaemonAsyncTask$JobPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/DaemonAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackJobPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/os/DaemonAsyncTask$JobPool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mJobs:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    .local p0, this:Lmiui/os/DaemonAsyncTask$StackJobPool;,"Lmiui/os/DaemonAsyncTask$StackJobPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmiui/os/DaemonAsyncTask$StackJobPool;->mJobs:Ljava/util/Stack;

    .line 121
    return-void
.end method


# virtual methods
.method public declared-synchronized addJob(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, this:Lmiui/os/DaemonAsyncTask$StackJobPool;,"Lmiui/os/DaemonAsyncTask$StackJobPool<TT;>;"
    .local p1, job:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/os/DaemonAsyncTask$StackJobPool;->mJobs:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lmiui/os/DaemonAsyncTask$StackJobPool;->mJobs:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized finishJob(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, this:Lmiui/os/DaemonAsyncTask$StackJobPool;,"Lmiui/os/DaemonAsyncTask$StackJobPool<TT;>;"
    .local p1, job:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getNextJob()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, this:Lmiui/os/DaemonAsyncTask$StackJobPool;,"Lmiui/os/DaemonAsyncTask$StackJobPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/os/DaemonAsyncTask$StackJobPool;->mJobs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/os/DaemonAsyncTask$StackJobPool;->mJobs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 145
    .local p0, this:Lmiui/os/DaemonAsyncTask$StackJobPool;,"Lmiui/os/DaemonAsyncTask$StackJobPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/os/DaemonAsyncTask$StackJobPool;->mJobs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
