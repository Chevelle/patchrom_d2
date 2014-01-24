.class public Lmiui/v5/view/SearchActionMode;
.super Lmiui/v5/view/DefaultActionMode;
.source "SearchActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/view/SearchActionMode$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/v5/view/SearchActionMode$Callback;)V
    .locals 0
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lmiui/v5/view/DefaultActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 16
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiui/v5/widget/SearchModeAnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/v5/view/SearchActionMode;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->addAnimationListener(Lmiui/v5/widget/SearchModeAnimationListener;)V

    .line 37
    return-void
.end method

.method public getSearchView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmiui/v5/view/SearchActionMode;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getSearchView()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public removeAnimationListener(Lmiui/v5/widget/SearchModeAnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/v5/view/SearchActionMode;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->removeAnimationListener(Lmiui/v5/widget/SearchModeAnimationListener;)V

    .line 42
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/v5/view/SearchActionMode;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setAnchorView(Landroid/view/View;)V

    .line 20
    return-void
.end method

.method public setAnchorViewHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/v5/view/SearchActionMode;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setAnchorViewHint(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/v5/view/SearchActionMode;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setAnimateView(Landroid/view/View;)V

    .line 24
    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/v5/view/SearchActionMode;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setResultView(Landroid/view/View;)V

    .line 28
    return-void
.end method
