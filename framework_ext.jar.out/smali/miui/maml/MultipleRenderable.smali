.class public Lmiui/maml/MultipleRenderable;
.super Ljava/lang/Object;
.source "MultipleRenderable.java"

# interfaces
.implements Lmiui/maml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/MultipleRenderable$RenderableInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MultipleRenderable"


# instance fields
.field private mActiveCount:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/MultipleRenderable$RenderableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method private find(Lmiui/maml/RendererController$IRenderable;)Lmiui/maml/MultipleRenderable$RenderableInfo;
    .locals 4
    .parameter "r"

    .prologue
    .line 78
    iget-object v3, p0, Lmiui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 79
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 80
    iget-object v3, p0, Lmiui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/MultipleRenderable$RenderableInfo;

    .line 81
    .local v2, ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    iget-object v3, v2, Lmiui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 84
    .end local v2           #ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    :goto_1
    return-object v2

    .line 79
    .restart local v2       #ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v2           #ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setPause(Lmiui/maml/RendererController$IRenderable;Z)I
    .locals 4
    .parameter "r"
    .parameter "pause"

    .prologue
    .line 65
    const-string v1, "MultipleRenderable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0, p1}, Lmiui/maml/MultipleRenderable;->find(Lmiui/maml/RendererController$IRenderable;)Lmiui/maml/MultipleRenderable$RenderableInfo;

    move-result-object v0

    .line 67
    .local v0, ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    if-nez v0, :cond_0

    .line 68
    iget v1, p0, Lmiui/maml/MultipleRenderable;->mActiveCount:I

    .line 74
    :goto_0
    return v1

    .line 70
    :cond_0
    iget-boolean v1, v0, Lmiui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    if-eq v1, p2, :cond_1

    .line 71
    iput-boolean p2, v0, Lmiui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    .line 72
    if-eqz p2, :cond_2

    iget v1, p0, Lmiui/maml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    iput v1, p0, Lmiui/maml/MultipleRenderable;->mActiveCount:I

    .line 74
    :cond_1
    iget v1, p0, Lmiui/maml/MultipleRenderable;->mActiveCount:I

    goto :goto_0

    .line 72
    :cond_2
    iget v1, p0, Lmiui/maml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized add(Lmiui/maml/RendererController$IRenderable;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lmiui/maml/MultipleRenderable;->find(Lmiui/maml/RendererController$IRenderable;)Lmiui/maml/MultipleRenderable$RenderableInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 29
    .local v0, ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    if-eqz v0, :cond_0

    .line 35
    :goto_0
    monitor-exit p0

    return-void

    .line 32
    :cond_0
    :try_start_1
    const-string v1, "MultipleRenderable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v1, p0, Lmiui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    new-instance v2, Lmiui/maml/MultipleRenderable$RenderableInfo;

    invoke-direct {v2, p1}, Lmiui/maml/MultipleRenderable$RenderableInfo;-><init>(Lmiui/maml/RendererController$IRenderable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget v1, p0, Lmiui/maml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/maml/MultipleRenderable;->mActiveCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 28
    .end local v0           #ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized doRender()V
    .locals 5

    .prologue
    .line 89
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lmiui/maml/MultipleRenderable;->mActiveCount:I

    .line 90
    iget-object v4, p0, Lmiui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 91
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 92
    iget-object v4, p0, Lmiui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/MultipleRenderable$RenderableInfo;

    .line 93
    .local v3, ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    iget-boolean v4, v3, Lmiui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    if-eqz v4, :cond_0

    .line 91
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 95
    :cond_0
    iget-object v4, v3, Lmiui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController$IRenderable;

    .line 96
    .local v2, r:Lmiui/maml/RendererController$IRenderable;
    if-eqz v2, :cond_1

    .line 97
    invoke-interface {v2}, Lmiui/maml/RendererController$IRenderable;->doRender()V

    .line 98
    iget v4, p0, Lmiui/maml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/maml/MultipleRenderable;->mActiveCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 89
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #r:Lmiui/maml/RendererController$IRenderable;
    .end local v3           #ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 100
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #r:Lmiui/maml/RendererController$IRenderable;
    .restart local v3       #ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lmiui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 103
    .end local v2           #r:Lmiui/maml/RendererController$IRenderable;
    .end local v3           #ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized pause(Lmiui/maml/RendererController$IRenderable;)I
    .locals 1
    .parameter "r"

    .prologue
    .line 56
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lmiui/maml/MultipleRenderable;->setPause(Lmiui/maml/RendererController$IRenderable;Z)I
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

.method public declared-synchronized remove(Lmiui/maml/RendererController$IRenderable;)V
    .locals 7
    .parameter "r"

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lmiui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 39
    .local v0, N:I
    if-nez v0, :cond_1

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    .line 42
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 43
    :try_start_1
    iget-object v4, p0, Lmiui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/MultipleRenderable$RenderableInfo;

    .line 44
    .local v3, ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    iget-object v4, v3, Lmiui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController$IRenderable;

    .line 45
    .local v2, ren:Lmiui/maml/RendererController$IRenderable;
    if-eqz v2, :cond_2

    if-ne v2, p1, :cond_4

    .line 46
    :cond_2
    iget-boolean v4, v3, Lmiui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    if-nez v4, :cond_3

    .line 47
    iget v4, p0, Lmiui/maml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmiui/maml/MultipleRenderable;->mActiveCount:I

    .line 48
    :cond_3
    iget-object v4, p0, Lmiui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    const-string v4, "MultipleRenderable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 38
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #ren:Lmiui/maml/RendererController$IRenderable;
    .end local v3           #ri:Lmiui/maml/MultipleRenderable$RenderableInfo;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized resume(Lmiui/maml/RendererController$IRenderable;)I
    .locals 1
    .parameter "r"

    .prologue
    .line 61
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lmiui/maml/MultipleRenderable;->setPause(Lmiui/maml/RendererController$IRenderable;Z)I
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

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
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
