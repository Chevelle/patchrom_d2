.class public Lcom/miui/internal/v5/widget/ActionBarContextView;
.super Lcom/android/internal/widget/ActionBarContextView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/internal/v5/view/ActionModeView;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final FADE_DURATION:I = 0xc8


# instance fields
.field private mActionMode:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private mButton1:Landroid/widget/TextView;

.field private mButton1MenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mButton2:Landroid/widget/TextView;

.field private mButton2MenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mContentHeightWithoutPadding:I

.field private mRequestAniamtion:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 60
    .local v7, background:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 61
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mContentHeight:I

    .line 62
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .local v8, rect:Landroid/graphics/Rect;
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 64
    iget v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mContentHeight:I

    iget v1, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mContentHeightWithoutPadding:I

    .line 68
    .end local v8           #rect:Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    const v3, 0x1020019

    const/high16 v1, 0x104

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton1MenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 70
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    const v3, 0x102001a

    const v1, 0x60c01fd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton2MenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 72
    return-void
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 332
    :cond_0
    if-nez p1, :cond_1

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->setVisibility(I)V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mRequestAniamtion:Z

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/widget/ActionBarContextView;->makeInOutAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method protected cancelVisibilityAnimation()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 252
    :cond_0
    return-void
.end method

.method public closeMode()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->cancelVisibilityAnimation()V

    .line 139
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->setAnimationMode(I)V

    .line 140
    return-void
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSubTitle is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 10
    .parameter "mode"

    .prologue
    const/4 v5, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 84
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->cancelVisibilityAnimation()V

    .line 86
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->killMode()V

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    .line 91
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/MenuBuilder;

    .line 92
    .local v7, menu:Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 96
    :cond_1
    new-instance v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    const v2, 0x6030028

    const v3, 0x6030025

    const v4, 0x6030027

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIIZ)V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 100
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v7, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 102
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v6, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 106
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v0, v6}, Lcom/miui/internal/v5/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    :goto_0
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 113
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 115
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 116
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 117
    const/16 v0, 0x50

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 118
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 119
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public killMode()V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    .line 356
    return-void
.end method

.method protected makeInOutAnimator(I)Landroid/animation/Animator;
    .locals 14
    .parameter "visibility"

    .prologue
    .line 260
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    check-cast v3, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    .line 261
    .local v3, menuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    invoke-virtual {v3}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainerHeight()I

    move-result v5

    .line 262
    .local v5, primaryHeight:I
    invoke-virtual {v3}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getTranslationY()F

    move-result v4

    .line 263
    .local v4, menuViewTranslationY:F
    if-nez p1, :cond_0

    .line 264
    iget v10, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mContentHeight:I

    neg-int v10, v10

    int-to-float v8, v10

    .line 265
    .local v8, topAnimTransFrom:F
    const/4 v9, 0x0

    .line 266
    .local v9, topAnimTransTo:F
    int-to-float v10, v5

    add-float v1, v4, v10

    .line 267
    .local v1, bottomAnimTransFrom:F
    move v2, v4

    .line 275
    .local v2, bottomAnimTransTo:F
    :goto_0
    const-string v10, "TranslationY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v8, v11, v12

    const/4 v12, 0x1

    aput v9, v11, v12

    invoke-static {p0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 278
    .local v7, topAnim:Landroid/animation/ObjectAnimator;
    iget-boolean v10, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v10, :cond_1

    .line 280
    iget-object v10, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    invoke-virtual {v7, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 294
    .end local v7           #topAnim:Landroid/animation/ObjectAnimator;
    :goto_1
    return-object v7

    .line 269
    .end local v1           #bottomAnimTransFrom:F
    .end local v2           #bottomAnimTransTo:F
    .end local v8           #topAnimTransFrom:F
    .end local v9           #topAnimTransTo:F
    :cond_0
    const/4 v8, 0x0

    .line 270
    .restart local v8       #topAnimTransFrom:F
    iget v10, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mContentHeight:I

    neg-int v10, v10

    int-to-float v9, v10

    .line 271
    .restart local v9       #topAnimTransTo:F
    move v1, v4

    .line 272
    .restart local v1       #bottomAnimTransFrom:F
    int-to-float v10, v5

    add-float v2, v4, v10

    .restart local v2       #bottomAnimTransTo:F
    goto :goto_0

    .line 285
    .restart local v7       #topAnim:Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v10, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v11, "TranslationY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v1, v12, v13

    const/4 v13, 0x1

    aput v2, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 288
    .local v0, bottomAnim:Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 289
    .local v6, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 290
    iget-object v10, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 291
    invoke-virtual {v6, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    const-wide/16 v10, 0xc8

    invoke-virtual {v6, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object v7, v6

    .line 294
    goto :goto_1
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .parameter "child"
    .parameter "availableWidth"
    .parameter "childSpecHeight"
    .parameter "spacing"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->getTitleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v0

    .line 217
    :goto_0
    return v0

    .line 211
    :cond_0
    const/high16 v0, 0x4000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 215
    sub-int/2addr p2, p4

    .line 217
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected miuiInitTitle()Z
    .locals 7

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->getTitleView()Landroid/widget/TextView;

    move-result-object v3

    .line 144
    .local v3, titleView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->getTitleLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 145
    .local v1, titleLayout:Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    const v6, 0x6010043

    invoke-static {v5, v6}, Lmiui/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result v2

    .line 148
    .local v2, titleLayoutResId:I
    if-nez v1, :cond_4

    .line 149
    iget-object v5, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 150
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-eqz v2, :cond_0

    .line 151
    const/4 v5, 0x0

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #titleLayout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 154
    .restart local v1       #titleLayout:Landroid/widget/LinearLayout;
    :cond_0
    if-eqz v1, :cond_4

    .line 155
    const v5, 0x1020019

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton1:Landroid/widget/TextView;

    .line 156
    const v5, 0x102001a

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton2:Landroid/widget/TextView;

    .line 157
    const v5, 0x1020016

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #titleView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 159
    .restart local v3       #titleView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton1:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 160
    iget-object v5, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton1:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v5, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton1:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton1MenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_1
    iget-object v5, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton2:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 165
    iget-object v5, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton2:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v5, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton2:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton2MenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_2
    if-eqz v3, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->getTitleStyleRes()I

    move-result v4

    .line 171
    .local v4, titleViewStyleRes:I
    if-eqz v4, :cond_3

    .line 172
    iget-object v5, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 174
    :cond_3
    invoke-virtual {p0, v3}, Lcom/miui/internal/v5/widget/ActionBarContextView;->setTitleView(Landroid/widget/TextView;)V

    .line 179
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #titleViewStyleRes:I
    :cond_4
    if-eqz v3, :cond_5

    .line 180
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_5
    if-eqz v1, :cond_6

    .line 184
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_6

    .line 185
    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/ActionBarContextView;->setTitleLayout(Landroid/widget/LinearLayout;)V

    .line 190
    :cond_6
    const/4 v5, 0x1

    return v5
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020019

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton1MenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 346
    .local v1, item:Lcom/android/internal/view/menu/ActionMenuItem;
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/v5/view/EditActionMode;

    .line 347
    .local v0, actionMode:Lmiui/v5/view/EditActionMode;
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Lmiui/v5/view/EditActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v2, v1}, Lmiui/v5/view/EditActionMode;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 350
    :cond_0
    return-void

    .line 343
    .end local v0           #actionMode:Lmiui/v5/view/EditActionMode;
    .end local v1           #item:Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton2MenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 198
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    const v2, 0x601006a

    invoke-static {v1, v2}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mContentHeight:I

    .line 202
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContextView;->onLayout(ZIIII)V

    .line 235
    iget-boolean v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mRequestAniamtion:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/ActionBarContextView;->makeInOutAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 237
    iput-boolean v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mRequestAniamtion:Z

    .line 239
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mContentHeightWithoutPadding:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 2
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "contentHeight"
    .parameter "reverse"

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, retval:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 225
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    .line 228
    :cond_0
    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "whichButton"
    .parameter "text"

    .prologue
    .line 298
    const v0, 0x1020019

    if-ne p1, v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton1MenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const v0, 0x102001a

    if-ne p1, v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton2:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton2:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mButton2MenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setContentHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 80
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 313
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setCustomView is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSplitActionBar(Z)V
    .locals 2
    .parameter "split"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 127
    if-eqz p1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 130
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarContextView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 131
    .local v0, lParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    .end local v0           #lParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "subtitle"

    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setSubtitle is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
