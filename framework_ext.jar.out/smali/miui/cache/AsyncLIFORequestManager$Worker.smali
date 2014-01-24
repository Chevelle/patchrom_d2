.class Lmiui/cache/AsyncLIFORequestManager$Worker;
.super Ljava/lang/Object;
.source "AsyncLIFORequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cache/AsyncLIFORequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mActive:Z

.field final mDeque:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lmiui/cache/RequestManager$Request",
            "<TK;TV;TR;>;>;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field final mPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Lmiui/cache/AsyncLIFORequestManager$Response",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field mThreadIndex:I

.field final mThreadPool:[Ljava/lang/Thread;


# direct methods
.method constructor <init>(ILandroid/os/Handler;Landroid/util/Pool;)V
    .locals 2
    .parameter "nThreads"
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Handler;",
            "Landroid/util/Pool",
            "<",
            "Lmiui/cache/AsyncLIFORequestManager$Response",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$Worker;,"Lmiui/cache/AsyncLIFORequestManager$Worker<TK;TV;TR;>;"
    .local p3, pool:Landroid/util/Pool;,"Landroid/util/Pool<Lmiui/cache/AsyncLIFORequestManager$Response<TK;TV;>;>;"
    const/4 v1, 0x0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mDeque:Ljava/util/concurrent/BlockingDeque;

    .line 271
    iput v1, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mThreadIndex:I

    .line 272
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mLock:Ljava/lang/Object;

    .line 274
    iput-boolean v1, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mActive:Z

    .line 277
    iput-object p2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mHandler:Landroid/os/Handler;

    .line 278
    iput-object p3, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mPool:Landroid/util/Pool;

    .line 279
    new-array v0, p1, [Ljava/lang/Thread;

    iput-object v0, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mThreadPool:[Ljava/lang/Thread;

    .line 280
    return-void
.end method


# virtual methods
.method public dumpRequest(Ljava/lang/String;)V
    .locals 5
    .parameter "desc"

    .prologue
    .line 363
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$Worker;,"Lmiui/cache/AsyncLIFORequestManager$Worker<TK;TV;TR;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v3, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/cache/RequestManager$Request;

    .line 368
    .local v1, r:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 372
    .end local v1           #r:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    :cond_0
    sget-object v3, Lmiui/cache/AsyncLIFORequestManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method public execute(Lmiui/cache/RequestManager$Request;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/RequestManager$Request",
            "<TK;TV;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$Worker;,"Lmiui/cache/AsyncLIFORequestManager$Worker<TK;TV;TR;>;"
    .local p1, command:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    iget-object v0, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p0}, Lmiui/cache/AsyncLIFORequestManager$Worker;->start()V

    .line 295
    return-void
.end method

.method public quit()V
    .locals 3

    .prologue
    .line 298
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$Worker;,"Lmiui/cache/AsyncLIFORequestManager$Worker<TK;TV;TR;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mThreadIndex:I

    if-ge v0, v1, :cond_0

    .line 299
    iget-object v1, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mThreadPool:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 300
    iget-object v1, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mThreadPool:[Ljava/lang/Thread;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mThreadIndex:I

    .line 304
    return-void
.end method

.method public remove(Lmiui/cache/RequestManager$Request;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/RequestManager$Request",
            "<TK;TV;TR;>;)Z"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$Worker;,"Lmiui/cache/AsyncLIFORequestManager$Worker<TK;TV;TR;>;"
    .local p1, command:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    iget-object v0, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public schedule(Lmiui/cache/RequestManager$Request;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/RequestManager$Request",
            "<TK;TV;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$Worker;,"Lmiui/cache/AsyncLIFORequestManager$Worker<TK;TV;TR;>;"
    .local p1, command:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    iget-object v0, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lmiui/cache/AsyncLIFORequestManager$Worker;->execute(Lmiui/cache/RequestManager$Request;)V

    .line 290
    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 2
    .parameter "active"

    .prologue
    .line 317
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$Worker;,"Lmiui/cache/AsyncLIFORequestManager$Worker<TK;TV;TR;>;"
    iput-boolean p1, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mActive:Z

    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-object v1, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 321
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-virtual {p0}, Lmiui/cache/AsyncLIFORequestManager$Worker;->start()V

    .line 324
    :cond_0
    return-void

    .line 321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method start()V
    .locals 4

    .prologue
    .line 307
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$Worker;,"Lmiui/cache/AsyncLIFORequestManager$Worker<TK;TV;TR;>;"
    iget v2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mThreadIndex:I

    iget-object v3, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mThreadPool:[Ljava/lang/Thread;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    iget v0, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mThreadIndex:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mThreadIndex:I

    .line 309
    .local v0, index:I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;

    invoke-direct {v2, p0}, Lmiui/cache/AsyncLIFORequestManager$Worker$LoopComputer;-><init>(Lmiui/cache/AsyncLIFORequestManager$Worker;)V

    iget v3, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mThreadIndex:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 310
    .local v1, t:Ljava/lang/Thread;
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager$Worker;->mThreadPool:[Ljava/lang/Thread;

    aput-object v1, v2, v0

    .line 312
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 314
    .end local v0           #index:I
    .end local v1           #t:Ljava/lang/Thread;
    :cond_0
    return-void
.end method
