.class public Lcom/miui/internal/v5/widget/ActionBarContainer;
.super Lcom/android/internal/widget/ActionBarContainer;
.source "ActionBarContainer.java"

# interfaces
.implements Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;


# instance fields
.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mHideListener:Landroid/animation/AnimatorListenerAdapter;

.field private mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

.field private mRequestAnimation:Z

.field private mShowListener:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/v5/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/miui/internal/v5/widget/ActionBarContainer$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/v5/widget/ActionBarContainer$1;-><init>(Lcom/miui/internal/v5/widget/ActionBarContainer;)V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mHideListener:Landroid/animation/AnimatorListenerAdapter;

    .line 36
    new-instance v0, Lcom/miui/internal/v5/widget/ActionBarContainer$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/v5/widget/ActionBarContainer$2;-><init>(Lcom/miui/internal/v5/widget/ActionBarContainer;)V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mRequestAnimation:Z

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/miui/internal/v5/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->draw(Landroid/graphics/Canvas;)V

    .line 166
    iget-boolean v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mRequestAnimation:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/miui/internal/v5/widget/ActionBarContainer$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/v5/widget/ActionBarContainer$3;-><init>(Lcom/miui/internal/v5/widget/ActionBarContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->post(Ljava/lang/Runnable;)Z

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mRequestAnimation:Z

    .line 175
    :cond_0
    return-void
.end method

.method protected ensureActionMenuView()V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getActionBarView()Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarView;

    .line 184
    .local v0, actionBarView:Lcom/miui/internal/v5/widget/ActionBarView;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarView;->getActionMenuView()Lcom/miui/internal/v5/view/menu/ActionMenuView;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    goto :goto_0
.end method

.method public hide(Z)V
    .locals 4
    .parameter "anim"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 88
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "TranslationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 90
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 92
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mHideListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->isSplit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mContext:Landroid/content/Context;

    const v1, 0x60100ab

    invoke-static {v0, v1}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 160
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 1
    .parameter "position"
    .parameter "ratio"
    .parameter "fromHasActionMenu"
    .parameter "toHasActionMenu"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->ensureActionMenuView()V

    .line 149
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->onPageScrolled(IFZZ)V

    .line 152
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 156
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 55
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #result:Z
    :cond_0
    return v0
.end method

.method public onWindowHide()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->ensureActionMenuView()V

    .line 78
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getMenuItems()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->playCloseAnimator()V

    .line 81
    :cond_0
    return-void
.end method

.method public onWindowShow()V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->ensureActionMenuView()V

    .line 70
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getMenuItems()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->playOpenAnimator()V

    .line 73
    :cond_0
    return-void
.end method

.method public setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 1
    .parameter "tabView"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 130
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->updateTabContainerBackground()V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 5
    .parameter "anim"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 104
    :cond_0
    invoke-virtual {p0, v4}, Lcom/miui/internal/v5/widget/ActionBarContainer;->setVisibility(I)V

    .line 105
    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "TranslationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 108
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 110
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->ensureActionMenuView()V

    .line 115
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getMenuItems()I

    move-result v0

    if-lez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->startPrimaryContainerLayoutAnimation()V

    .line 121
    :cond_2
    :goto_0
    return-void

    .line 119
    :cond_3
    invoke-virtual {p0, v3}, Lcom/miui/internal/v5/widget/ActionBarContainer;->setTranslationY(F)V

    goto :goto_0
.end method

.method public updateTabContainerBackground()V
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, tabView:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->isSplit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getActionBarView()Lcom/android/internal/widget/ActionBarView;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/v5/widget/ActionBarView;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mContext:Landroid/content/Context;

    const v3, 0x601009b

    invoke-static {v2, v3}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    .local v0, background:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ActionBarContainer;->mContext:Landroid/content/Context;

    const v3, 0x601009c

    invoke-static {v2, v3}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
