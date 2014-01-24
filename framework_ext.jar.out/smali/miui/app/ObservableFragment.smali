.class public Lmiui/app/ObservableFragment;
.super Landroid/app/Fragment;
.source "ObservableFragment.java"


# instance fields
.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/FragmentLifecycleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addObserver(Lmiui/app/FragmentLifecycleObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 16
    if-eqz p1, :cond_0

    .line 17
    iget-object v0, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    .line 51
    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .line 52
    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1, p1}, Lmiui/app/FragmentLifecycleObserver;->onActivityCreated(Landroid/os/Bundle;)V

    goto :goto_0

    .line 54
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    .line 111
    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .line 112
    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1, p1, p2, p3}, Lmiui/app/FragmentLifecycleObserver;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 114
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 40
    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    .line 41
    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .line 42
    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1, p1}, Lmiui/app/FragmentLifecycleObserver;->onAttach(Landroid/app/Activity;)V

    goto :goto_0

    .line 44
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    .line 31
    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .line 32
    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1, p1}, Lmiui/app/FragmentLifecycleObserver;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 34
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 100
    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    .line 101
    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .line 102
    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/FragmentLifecycleObserver;->onDestroy()V

    goto :goto_0

    .line 104
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 80
    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    .line 81
    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .line 82
    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/FragmentLifecycleObserver;->onPause()V

    goto :goto_0

    .line 84
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 70
    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    .line 71
    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .line 72
    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/FragmentLifecycleObserver;->onResume()V

    goto :goto_0

    .line 74
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 60
    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    .line 61
    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .line 62
    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/FragmentLifecycleObserver;->onStart()V

    goto :goto_0

    .line 64
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 90
    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    .line 91
    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .line 92
    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/FragmentLifecycleObserver;->onStop()V

    goto :goto_0

    .line 94
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    return-void
.end method

.method public removeObserver(Lmiui/app/FragmentLifecycleObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 22
    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    return-void
.end method
