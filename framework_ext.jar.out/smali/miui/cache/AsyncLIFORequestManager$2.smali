.class Lmiui/cache/AsyncLIFORequestManager$2;
.super Ljava/lang/Object;
.source "AsyncLIFORequestManager.java"

# interfaces
.implements Landroid/util/PoolableManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cache/AsyncLIFORequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/PoolableManager",
        "<",
        "Lmiui/cache/AsyncLIFORequestManager$QueueHolder",
        "<TK;TV;TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cache/AsyncLIFORequestManager;


# direct methods
.method constructor <init>(Lmiui/cache/AsyncLIFORequestManager;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$2;,"Lmiui/cache/AsyncLIFORequestManager.2;"
    iput-object p1, p0, Lmiui/cache/AsyncLIFORequestManager$2;->this$0:Lmiui/cache/AsyncLIFORequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Landroid/util/Poolable;
    .locals 1

    .prologue
    .line 64
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$2;,"Lmiui/cache/AsyncLIFORequestManager.2;"
    invoke-virtual {p0}, Lmiui/cache/AsyncLIFORequestManager$2;->newInstance()Lmiui/cache/AsyncLIFORequestManager$QueueHolder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lmiui/cache/AsyncLIFORequestManager$QueueHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/cache/AsyncLIFORequestManager$QueueHolder",
            "<TK;TV;TR;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$2;,"Lmiui/cache/AsyncLIFORequestManager.2;"
    new-instance v0, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;

    invoke-direct {v0}, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onAcquired(Landroid/util/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$2;,"Lmiui/cache/AsyncLIFORequestManager.2;"
    check-cast p1, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/cache/AsyncLIFORequestManager$2;->onAcquired(Lmiui/cache/AsyncLIFORequestManager$QueueHolder;)V

    return-void
.end method

.method public onAcquired(Lmiui/cache/AsyncLIFORequestManager$QueueHolder;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/AsyncLIFORequestManager$QueueHolder",
            "<TK;TV;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$2;,"Lmiui/cache/AsyncLIFORequestManager.2;"
    .local p1, element:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    return-void
.end method

.method public bridge synthetic onReleased(Landroid/util/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$2;,"Lmiui/cache/AsyncLIFORequestManager.2;"
    check-cast p1, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/cache/AsyncLIFORequestManager$2;->onReleased(Lmiui/cache/AsyncLIFORequestManager$QueueHolder;)V

    return-void
.end method

.method public onReleased(Lmiui/cache/AsyncLIFORequestManager$QueueHolder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/AsyncLIFORequestManager$QueueHolder",
            "<TK;TV;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$2;,"Lmiui/cache/AsyncLIFORequestManager.2;"
    .local p1, element:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    iget-object v0, p1, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 78
    return-void
.end method
