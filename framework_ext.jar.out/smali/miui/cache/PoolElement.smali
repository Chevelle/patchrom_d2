.class public Lmiui/cache/PoolElement;
.super Ljava/lang/Object;
.source "PoolElement.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private mNext:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private mPooled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    .local p0, this:Lmiui/cache/PoolElement;,"Lmiui/cache/PoolElement<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/cache/PoolElement;->mPooled:Z

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/cache/PoolElement;->mNext:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getNextPoolable()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, this:Lmiui/cache/PoolElement;,"Lmiui/cache/PoolElement<TD;>;"
    iget-object v0, p0, Lmiui/cache/PoolElement;->mNext:Ljava/lang/Object;

    return-object v0
.end method

.method public isPooled()Z
    .locals 1

    .prologue
    .line 15
    .local p0, this:Lmiui/cache/PoolElement;,"Lmiui/cache/PoolElement<TD;>;"
    iget-boolean v0, p0, Lmiui/cache/PoolElement;->mPooled:Z

    return v0
.end method

.method public setNextPoolable(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, this:Lmiui/cache/PoolElement;,"Lmiui/cache/PoolElement<TD;>;"
    .local p1, element:Ljava/lang/Object;,"TD;"
    iput-object p1, p0, Lmiui/cache/PoolElement;->mNext:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public setPooled(Z)V
    .locals 0
    .parameter "isPooled"

    .prologue
    .line 23
    .local p0, this:Lmiui/cache/PoolElement;,"Lmiui/cache/PoolElement<TD;>;"
    iput-boolean p1, p0, Lmiui/cache/PoolElement;->mPooled:Z

    .line 24
    return-void
.end method
