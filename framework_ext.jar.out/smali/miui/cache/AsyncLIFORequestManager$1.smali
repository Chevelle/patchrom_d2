.class Lmiui/cache/AsyncLIFORequestManager$1;
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
        "Lmiui/cache/AsyncLIFORequestManager$Response",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cache/AsyncLIFORequestManager;


# direct methods
.method constructor <init>(Lmiui/cache/AsyncLIFORequestManager;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$1;,"Lmiui/cache/AsyncLIFORequestManager.1;"
    iput-object p1, p0, Lmiui/cache/AsyncLIFORequestManager$1;->this$0:Lmiui/cache/AsyncLIFORequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Landroid/util/Poolable;
    .locals 1

    .prologue
    .line 38
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$1;,"Lmiui/cache/AsyncLIFORequestManager.1;"
    invoke-virtual {p0}, Lmiui/cache/AsyncLIFORequestManager$1;->newInstance()Lmiui/cache/AsyncLIFORequestManager$Response;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lmiui/cache/AsyncLIFORequestManager$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/cache/AsyncLIFORequestManager$Response",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$1;,"Lmiui/cache/AsyncLIFORequestManager.1;"
    new-instance v0, Lmiui/cache/AsyncLIFORequestManager$Response;

    invoke-direct {v0}, Lmiui/cache/AsyncLIFORequestManager$Response;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onAcquired(Landroid/util/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$1;,"Lmiui/cache/AsyncLIFORequestManager.1;"
    check-cast p1, Lmiui/cache/AsyncLIFORequestManager$Response;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/cache/AsyncLIFORequestManager$1;->onAcquired(Lmiui/cache/AsyncLIFORequestManager$Response;)V

    return-void
.end method

.method public onAcquired(Lmiui/cache/AsyncLIFORequestManager$Response;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/AsyncLIFORequestManager$Response",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$1;,"Lmiui/cache/AsyncLIFORequestManager.1;"
    .local p1, element:Lmiui/cache/AsyncLIFORequestManager$Response;,"Lmiui/cache/AsyncLIFORequestManager$Response<TK;TV;>;"
    return-void
.end method

.method public bridge synthetic onReleased(Landroid/util/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$1;,"Lmiui/cache/AsyncLIFORequestManager.1;"
    check-cast p1, Lmiui/cache/AsyncLIFORequestManager$Response;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/cache/AsyncLIFORequestManager$1;->onReleased(Lmiui/cache/AsyncLIFORequestManager$Response;)V

    return-void
.end method

.method public onReleased(Lmiui/cache/AsyncLIFORequestManager$Response;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/AsyncLIFORequestManager$Response",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$1;,"Lmiui/cache/AsyncLIFORequestManager.1;"
    .local p1, element:Lmiui/cache/AsyncLIFORequestManager$Response;,"Lmiui/cache/AsyncLIFORequestManager$Response<TK;TV;>;"
    const/4 v0, 0x0

    .line 51
    iput-object v0, p1, Lmiui/cache/AsyncLIFORequestManager$Response;->mKey:Ljava/lang/Object;

    .line 52
    iput-object v0, p1, Lmiui/cache/AsyncLIFORequestManager$Response;->mValue:Ljava/lang/Object;

    .line 53
    return-void
.end method
