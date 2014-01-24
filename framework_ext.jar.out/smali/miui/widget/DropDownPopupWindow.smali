.class public Lmiui/widget/DropDownPopupWindow;
.super Landroid/widget/PopupWindow;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DropDownPopupWindow$RootPanel;,
        Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;
    }
.end annotation


# static fields
.field private static final ANIMATE_DURATION:I = 0xc8

.field private static final BACKGROUND_COLOR:I = -0x67000000


# instance fields
.field private mBgColorAlpha:I

.field private mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mContentView:Landroid/view/View;

.field private mCoverView:Landroid/widget/FrameLayout;

.field private mInAnimListener:Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;

.field private mOutAnimListener:Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;

.field private mPlayingAnimation:Z

.field private mRootPanel:Landroid/widget/FrameLayout;

.field private mShowInAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "contentView"

    .prologue
    const/4 v2, -0x1

    .line 54
    invoke-direct {p0, v2, v2}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 34
    new-instance v1, Lmiui/widget/DropDownPopupWindow$1;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownPopupWindow$1;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    iput-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mInAnimListener:Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;

    .line 44
    new-instance v1, Lmiui/widget/DropDownPopupWindow$2;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownPopupWindow$2;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    iput-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mOutAnimListener:Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;

    .line 56
    iput-object p2, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    .line 57
    new-instance v1, Lmiui/widget/DropDownPopupWindow$RootPanel;

    invoke-direct {v1, p0, p1}, Lmiui/widget/DropDownPopupWindow$RootPanel;-><init>(Lmiui/widget/DropDownPopupWindow;Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mRootPanel:Landroid/widget/FrameLayout;

    .line 58
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mRootPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x6700

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 62
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v1

    iput v1, p0, Lmiui/widget/DropDownPopupWindow;->mBgColorAlpha:I

    .line 63
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mRootPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mRootPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lmiui/widget/DropDownPopupWindow;->setContentView(Landroid/view/View;)V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/widget/DropDownPopupWindow;->setFocusable(Z)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/widget/DropDownPopupWindow;->setAnimationStyle(I)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/widget/DropDownPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

.method static synthetic access$100(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$201(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$302(Lmiui/widget/DropDownPopupWindow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lmiui/widget/DropDownPopupWindow;->mPlayingAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lmiui/widget/DropDownPopupWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->mShowInAnimation:Z

    return v0
.end method

.method static synthetic access$402(Lmiui/widget/DropDownPopupWindow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lmiui/widget/DropDownPopupWindow;->mShowInAnimation:Z

    return p1
.end method

.method static synthetic access$500(Lmiui/widget/DropDownPopupWindow;)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->getInAnimator()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/DropDownPopupWindow;Landroid/animation/Animator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lmiui/widget/DropDownPopupWindow;->playAnimation(Landroid/animation/Animator;)V

    return-void
.end method

.method private getInAnimator()Landroid/animation/Animator;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 117
    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    const-string v4, "alpha"

    new-array v5, v9, [I

    aput v7, v5, v7

    iget v6, p0, Lmiui/widget/DropDownPopupWindow;->mBgColorAlpha:I

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 118
    .local v1, bgAnim:Landroid/animation/Animator;
    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    const-string v4, "translationY"

    new-array v5, v9, [F

    iget-object v6, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v5, v7

    const/4 v6, 0x0

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 119
    .local v2, contentAnim:Landroid/animation/Animator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 120
    .local v0, animSet:Landroid/animation/AnimatorSet;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 122
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 123
    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mInAnimListener:Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 124
    return-object v0
.end method

.method private getOutAnimation()Landroid/animation/Animator;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 128
    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    const-string v4, "alpha"

    new-array v5, v9, [I

    iget v6, p0, Lmiui/widget/DropDownPopupWindow;->mBgColorAlpha:I

    aput v6, v5, v7

    aput v7, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 129
    .local v1, bgAnim:Landroid/animation/Animator;
    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    const-string v4, "translationY"

    new-array v5, v9, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    iget-object v6, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 130
    .local v2, contentAnim:Landroid/animation/Animator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 131
    .local v0, animSet:Landroid/animation/AnimatorSet;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 133
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 134
    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mOutAnimListener:Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    return-object v0
.end method

.method private playAnimation(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animator"

    .prologue
    .line 111
    iget-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->mPlayingAnimation:Z

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->getOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/widget/DropDownPopupWindow;->playAnimation(Landroid/animation/Animator;)V

    .line 108
    return-void
.end method

.method public setDropCover(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "bg"

    .prologue
    .line 72
    const/16 v0, 0x30

    invoke-virtual {p0, p1, v0}, Lmiui/widget/DropDownPopupWindow;->setDropCover(Landroid/graphics/drawable/Drawable;I)V

    .line 73
    return-void
.end method

.method public setDropCover(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .parameter "bg"
    .parameter "gravity"

    .prologue
    .line 76
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mCoverView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mRootPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mCoverView:Landroid/widget/FrameLayout;

    .line 78
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mRootPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mCoverView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mCoverView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mCoverView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 85
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 2
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 91
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 92
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->mShowInAnimation:Z

    .line 94
    return-void
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .parameter "token"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 100
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 101
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->mShowInAnimation:Z

    .line 103
    return-void
.end method
