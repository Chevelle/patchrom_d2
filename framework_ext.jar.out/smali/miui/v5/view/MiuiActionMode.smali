.class public Lmiui/v5/view/MiuiActionMode;
.super Landroid/view/ActionMode;
.source "MiuiActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/view/MiuiActionMode$ActionModeListener;
    }
.end annotation


# instance fields
.field private mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

.field private mActive:Z

.field protected mCallback:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/view/MiuiActionMode;->mActive:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/view/MiuiActionMode;->mActive:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/view/MiuiActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 43
    iget-object v0, p0, Lmiui/v5/view/MiuiActionMode;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lmiui/v5/view/MiuiActionMode;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    invoke-interface {v0, p0}, Lmiui/v5/view/MiuiActionMode$ActionModeListener;->onActionModeFinished(Lmiui/v5/view/MiuiActionMode;)V

    .line 46
    :cond_0
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lmiui/v5/view/MiuiActionMode;->mActive:Z

    return v0
.end method

.method public setActionModeListener(Lmiui/v5/view/MiuiActionMode$ActionModeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 62
    iput-object p1, p0, Lmiui/v5/view/MiuiActionMode;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    .line 63
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 92
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 100
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "subtitle"

    .prologue
    .line 96
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 108
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 104
    return-void
.end method

.method public start(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/v5/view/MiuiActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lmiui/v5/view/MiuiActionMode;->finish()V

    .line 27
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/view/MiuiActionMode;->mActive:Z

    .line 28
    iput-object p1, p0, Lmiui/v5/view/MiuiActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 30
    iget-object v0, p0, Lmiui/v5/view/MiuiActionMode;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lmiui/v5/view/MiuiActionMode;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    invoke-interface {v0, p0}, Lmiui/v5/view/MiuiActionMode$ActionModeListener;->onActionModeStarted(Lmiui/v5/view/MiuiActionMode;)V

    .line 33
    :cond_1
    return-void
.end method

.method public tryToFinish()Z
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lmiui/v5/view/MiuiActionMode;->finish()V

    .line 58
    const/4 v0, 0x1

    return v0
.end method
