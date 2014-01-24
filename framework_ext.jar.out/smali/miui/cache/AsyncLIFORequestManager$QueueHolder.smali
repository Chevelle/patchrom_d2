.class Lmiui/cache/AsyncLIFORequestManager$QueueHolder;
.super Lmiui/cache/PoolElement;
.source "AsyncLIFORequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cache/AsyncLIFORequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueueHolder"
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
        "Lmiui/cache/PoolElement",
        "<",
        "Lmiui/cache/AsyncLIFORequestManager$QueueHolder",
        "<TK;TV;TR;>;>;"
    }
.end annotation


# instance fields
.field public final mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lmiui/cache/RequestManager$Request",
            "<TK;TV;TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 58
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    invoke-direct {p0}, Lmiui/cache/PoolElement;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;->mQueue:Ljava/util/LinkedList;

    return-void
.end method
