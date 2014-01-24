.class Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;
.super Ljava/lang/Object;
.source "IconMenuBarPresenter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/menubar/IconMenuBarPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBarAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;


# direct methods
.method public constructor <init>(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animator"

    .prologue
    const/4 v5, 0x0

    .line 438
    iget-object v3, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mOpenMenuBarAnimator:Landroid/animation/Animator;
    invoke-static {v3}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->access$000(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)Landroid/animation/Animator;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 441
    iget-object v3, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;
    invoke-static {v3}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->access$100(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)Lmiui/v5/widget/menubar/IconMenuBarView;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lmiui/v5/widget/menubar/IconMenuBarView;->setAlpha(F)V

    .line 442
    iget-object v3, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;
    invoke-static {v3}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->access$100(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)Lmiui/v5/widget/menubar/IconMenuBarView;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/v5/widget/menubar/IconMenuBarView;->getPrimaryContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 443
    .local v2, primaryContainer:Landroid/view/ViewGroup;
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 444
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 445
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 446
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #primaryContainer:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 416
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mOpenMenuBarAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->access$000(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)Landroid/animation/Animator;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 418
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->access$100(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)Lmiui/v5/widget/menubar/IconMenuBarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenu:Lmiui/v5/widget/menubar/MenuBar;
    invoke-static {v1}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->access$200(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)Lmiui/v5/widget/menubar/MenuBar;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;->onOpenMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V

    .line 420
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    #setter for: Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mOpenMenuBarAnimator:Landroid/animation/Animator;
    invoke-static {v0, v3}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->access$002(Lmiui/v5/widget/menubar/IconMenuBarPresenter;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->access$100(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)Lmiui/v5/widget/menubar/IconMenuBarView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenu:Lmiui/v5/widget/menubar/MenuBar;
    invoke-static {v1}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->access$200(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)Lmiui/v5/widget/menubar/MenuBar;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;->onCloseMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V

    .line 424
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;->this$0:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    #setter for: Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCloseMenuBarAnimator:Landroid/animation/Animator;
    invoke-static {v0, v3}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->access$302(Lmiui/v5/widget/menubar/IconMenuBarPresenter;Landroid/animation/Animator;)Landroid/animation/Animator;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 431
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 434
    return-void
.end method
