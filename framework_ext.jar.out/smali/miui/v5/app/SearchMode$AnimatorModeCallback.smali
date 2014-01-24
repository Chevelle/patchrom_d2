.class Lmiui/v5/app/SearchMode$AnimatorModeCallback;
.super Ljava/lang/Object;
.source "SearchMode.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/SearchMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorModeCallback"
.end annotation


# instance fields
.field private final mFinishAnimator:Landroid/animation/Animator;

.field private final mListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

.field private final mStartAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lmiui/v5/view/MiuiActionMode$ActionModeListener;Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 0
    .parameter "l"
    .parameter "start"
    .parameter "finish"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lmiui/v5/app/SearchMode$AnimatorModeCallback;->mListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    .line 134
    iput-object p2, p0, Lmiui/v5/app/SearchMode$AnimatorModeCallback;->mStartAnimator:Landroid/animation/Animator;

    .line 135
    iput-object p3, p0, Lmiui/v5/app/SearchMode$AnimatorModeCallback;->mFinishAnimator:Landroid/animation/Animator;

    .line 136
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 145
    iget-object v0, p0, Lmiui/v5/app/SearchMode$AnimatorModeCallback;->mStartAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lmiui/v5/app/SearchMode$AnimatorModeCallback;->mStartAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 149
    :cond_0
    iget-object v0, p0, Lmiui/v5/app/SearchMode$AnimatorModeCallback;->mListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lmiui/v5/app/SearchMode$AnimatorModeCallback;->mListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    check-cast p1, Lmiui/v5/view/MiuiActionMode;

    .end local p1
    invoke-interface {v0, p1}, Lmiui/v5/view/MiuiActionMode$ActionModeListener;->onActionModeStarted(Lmiui/v5/view/MiuiActionMode;)V

    .line 153
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 158
    iget-object v0, p0, Lmiui/v5/app/SearchMode$AnimatorModeCallback;->mFinishAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lmiui/v5/app/SearchMode$AnimatorModeCallback;->mFinishAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 162
    :cond_0
    iget-object v0, p0, Lmiui/v5/app/SearchMode$AnimatorModeCallback;->mListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lmiui/v5/app/SearchMode$AnimatorModeCallback;->mListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    check-cast p1, Lmiui/v5/view/MiuiActionMode;

    .end local p1
    invoke-interface {v0, p1}, Lmiui/v5/view/MiuiActionMode$ActionModeListener;->onActionModeFinished(Lmiui/v5/view/MiuiActionMode;)V

    .line 165
    :cond_1
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method
