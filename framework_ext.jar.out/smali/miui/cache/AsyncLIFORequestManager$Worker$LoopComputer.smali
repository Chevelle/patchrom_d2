.class Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;
.super Ljava/lang/Object;
.source "AsyncLIFORequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cache/AsyncLIFORequestManager$Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoopComputer"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cache/AsyncLIFORequestManager$Worker;


# direct methods
.method constructor <init>(Lmiui/cache/AsyncLIFORequestManager$Worker;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;,"Lmiui/cache/AsyncLIFORequestManager$Worker<TK;TV;TR;>.LoopComputer;"
    iput-object p1, p0, Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;->this$0:Lmiui/cache/AsyncLIFORequestManager$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 330
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;,"Lmiui/cache/AsyncLIFORequestManager$Worker<TK;TV;TR;>.LoopComputer;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, name:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 335
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;->this$0:Lmiui/cache/AsyncLIFORequestManager$Worker;

    iget-boolean v2, v2, Lmiui/cache/AsyncLIFORequestManager$Worker;->mActive:Z

    if-nez v2, :cond_3

    .line 336
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;->this$0:Lmiui/cache/AsyncLIFORequestManager$Worker;

    iget-object v3, v2, Lmiui/cache/AsyncLIFORequestManager$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_1
    :try_start_1
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;->this$0:Lmiui/cache/AsyncLIFORequestManager$Worker;

    iget-boolean v2, v2, Lmiui/cache/AsyncLIFORequestManager$Worker;->mActive:Z

    if-nez v2, :cond_2

    .line 339
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;->this$0:Lmiui/cache/AsyncLIFORequestManager$Worker;

    iget-object v2, v2, Lmiui/cache/AsyncLIFORequestManager$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 342
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 354
    :catch_0
    move-exception v2

    .line 359
    :cond_1
    return-void

    .line 342
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    :cond_3
    :try_start_4
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;->this$0:Lmiui/cache/AsyncLIFORequestManager$Worker;

    iget-object v2, v2, Lmiui/cache/AsyncLIFORequestManager$Worker;->mDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/cache/RequestManager$Request;

    .line 346
    .local v1, r:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    if-eqz v1, :cond_0

    .line 347
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;->this$0:Lmiui/cache/AsyncLIFORequestManager$Worker;

    iget-boolean v2, v2, Lmiui/cache/AsyncLIFORequestManager$Worker;->mActive:Z

    if-eqz v2, :cond_4

    .line 348
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;->this$0:Lmiui/cache/AsyncLIFORequestManager$Worker;

    iget-object v2, v2, Lmiui/cache/AsyncLIFORequestManager$Worker;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;->this$0:Lmiui/cache/AsyncLIFORequestManager$Worker;

    iget-object v3, v3, Lmiui/cache/AsyncLIFORequestManager$Worker;->mPool:Landroid/util/Pool;

    invoke-static {v2, v1, v3}, Lmiui/cache/AsyncLIFORequestManager;->onComputeAsync(Landroid/os/Handler;Lmiui/cache/RequestManager$Request;Landroid/util/Pool;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 357
    .end local v1           #r:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    :catchall_1
    move-exception v2

    throw v2

    .line 350
    .restart local v1       #r:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    :cond_4
    :try_start_5
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;->this$0:Lmiui/cache/AsyncLIFORequestManager$Worker;

    iget-object v2, v2, Lmiui/cache/AsyncLIFORequestManager$Worker;->mDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingDeque;->addFirst(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method
