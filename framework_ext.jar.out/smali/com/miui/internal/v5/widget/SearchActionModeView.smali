.class public Lcom/miui/internal/v5/widget/SearchActionModeView;
.super Landroid/widget/FrameLayout;
.source "SearchActionModeView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/miui/internal/v5/view/ActionModeView;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;,
        Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;,
        Lcom/miui/internal/v5/widget/SearchActionModeView$SplitActionBarSearchModeAnimationListener;,
        Lcom/miui/internal/v5/widget/SearchActionModeView$ActionBarSearchModeAnimationListener;,
        Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;
    }
.end annotation


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8


# instance fields
.field private mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

.field private mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

.field private mAnchorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateViewTranslationYLength:I

.field private mAnimateViewTranslationYStart:I

.field private mAnimateVisibility:I

.field private mAnimationMode:I

.field private mBackView:Landroid/widget/ImageView;

.field private mBackViewTranslationXLength:I

.field private mBackViewTranslationXStart:I

.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private mDimView:Landroid/view/View;

.field private mInputView:Landroid/widget/EditText;

.field private mInputViewTranslationYLength:I

.field private mInputViewTranslationYStart:I

.field private mLocation:[I

.field private mRequestAnimation:Z

.field private mResultViewOriginMarginBottom:I

.field private mResultViewOriginMarginTop:I

.field private mResultViewSet:Z

.field private mResusltView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchModeAnimationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/v5/widget/SearchModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

.field private mTextLengthBeforeChanged:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    .line 63
    const/16 v0, 0x8

    iput v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateVisibility:I

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setAlpha(F)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/v5/widget/SearchActionModeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/internal/v5/widget/SearchActionModeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYStart:I

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYStart:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/internal/v5/widget/SearchActionModeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYLength:I

    return v0
.end method

.method static synthetic access$1102(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYLength:I

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/internal/v5/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/miui/internal/v5/widget/SearchActionModeView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/internal/v5/widget/SearchActionModeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXStart:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXStart:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/internal/v5/widget/SearchActionModeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXLength:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXLength:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/internal/v5/widget/SearchActionModeView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->hasAnchorAndAnimateView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/internal/v5/widget/SearchActionModeView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/internal/v5/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/internal/v5/widget/SearchActionModeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    return v0
.end method

.method static synthetic access$802(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/internal/v5/widget/SearchActionModeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    return v0
.end method

.method static synthetic access$902(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    return p1
.end method

.method private getMessageQueue()Landroid/os/MessageQueue;
    .locals 1

    .prologue
    .line 455
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    return-object v0
.end method

.method private hasAnchorAndAnimateView()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAnimation(F)V
    .locals 2
    .parameter "percent"

    .prologue
    .line 485
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 491
    :cond_0
    return-void

    .line 488
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/SearchModeAnimationListener;

    invoke-interface {v1, p1}, Lmiui/v5/widget/SearchModeAnimationListener;->onUpdate(F)V

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notifyAnimationEnd()V
    .locals 2

    .prologue
    .line 494
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 500
    :cond_0
    return-void

    .line 497
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/SearchModeAnimationListener;

    invoke-interface {v1}, Lmiui/v5/widget/SearchModeAnimationListener;->onStop()V

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notifyAnimationStart()V
    .locals 2

    .prologue
    .line 475
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 482
    :cond_0
    return-void

    .line 479
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/SearchModeAnimationListener;

    invoke-interface {v1}, Lmiui/v5/widget/SearchModeAnimationListener;->onStart()V

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private queueIdleHandler()V
    .locals 1

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->removeIdleHandler()V

    .line 447
    invoke-direct {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 448
    return-void
.end method

.method private removeIdleHandler()V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 452
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiui/v5/widget/SearchModeAnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 408
    if-nez p1, :cond_2

    move v0, v1

    .line 409
    .local v0, afterTextChangedLength:I
    :goto_0
    if-nez v0, :cond_3

    .line 410
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 414
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->showSoftInputPanel(Z)V

    .line 420
    :cond_1
    :goto_1
    return-void

    .line 408
    .end local v0           #afterTextChangedLength:I
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    .line 415
    .restart local v0       #afterTextChangedLength:I
    :cond_3
    iget v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    if-nez v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected allowUpdateContentBorder(Z)V
    .locals 3
    .parameter "allow"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Lcom/miui/internal/v5/widget/IActionBarLayout;

    if-eqz v1, :cond_0

    .line 306
    check-cast v0, Lcom/miui/internal/v5/widget/IActionBarLayout;

    .end local v0           #view:Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/miui/internal/v5/widget/IActionBarLayout;->setUpdateContentMarginEnabled(Z)V

    .line 308
    :cond_0
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateVisibility:I

    if-ne v0, p1, :cond_0

    .line 83
    iput-boolean v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mRequestAnimation:Z

    .line 105
    :goto_0
    return-void

    .line 87
    :cond_0
    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    .line 88
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->makeAnimation(I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 89
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->createAnimationListeners()V

    .line 91
    invoke-direct {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->notifyAnimationStart()V

    .line 93
    invoke-direct {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->hasAnchorAndAnimateView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    if-nez p1, :cond_1

    .line 95
    invoke-virtual {p0, v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->allowUpdateContentBorder(Z)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->requestLayout()V

    .line 99
    iput-boolean v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mRequestAnimation:Z

    .line 104
    :goto_2
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->pollViews()V

    goto :goto_0

    .line 87
    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 399
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    .line 400
    return-void

    .line 399
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 166
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    if-ne v0, v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 173
    iput v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    goto :goto_0
.end method

.method protected createAnimationListeners()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;

    invoke-direct {v1, p0}, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;-><init>(Lcom/miui/internal/v5/widget/SearchActionModeView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;

    invoke-direct {v1, p0}, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;-><init>(Lcom/miui/internal/v5/widget/SearchActionModeView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-direct {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->hasAnchorAndAnimateView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;

    invoke-direct {v1, p0}, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;-><init>(Lcom/miui/internal/v5/widget/SearchActionModeView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/internal/v5/widget/SearchActionModeView$ActionBarSearchModeAnimationListener;

    invoke-direct {v1, p0}, Lcom/miui/internal/v5/widget/SearchActionModeView$ActionBarSearchModeAnimationListener;-><init>(Lcom/miui/internal/v5/widget/SearchActionModeView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/internal/v5/widget/SearchActionModeView$SplitActionBarSearchModeAnimationListener;

    invoke-direct {v1, p0}, Lcom/miui/internal/v5/widget/SearchActionModeView$SplitActionBarSearchModeAnimationListener;-><init>(Lcom/miui/internal/v5/widget/SearchActionModeView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_1
    return-void
.end method

.method protected finishAnimation()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 204
    :cond_0
    return-void
.end method

.method protected getActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;
    .locals 3

    .prologue
    .line 251
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, decorView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mContext:Landroid/content/Context;

    const v2, 0x60b0007

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/v5/widget/ActionBarContainer;

    iput-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 260
    .end local v0           #decorView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    return-object v1
.end method

.method protected getActionBarView()Lcom/miui/internal/v5/widget/ActionBarView;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    if-nez v0, :cond_0

    .line 290
    invoke-static {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->findActionBarViewByView(Landroid/view/View;)Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    return-object v0
.end method

.method public getSearchView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object v0
.end method

.method protected getSplitActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;
    .locals 3

    .prologue
    .line 264
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, decorView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mContext:Landroid/content/Context;

    const v2, 0x60b0027

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/v5/widget/ActionBarContainer;

    iput-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 273
    .end local v0           #decorView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    return-object v1
.end method

.method protected getSplitActionBarHeight()I
    .locals 4

    .prologue
    .line 277
    const/4 v2, 0x0

    .line 278
    .local v2, height:I
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v0

    .line 279
    .local v0, actionBarView:Lcom/miui/internal/v5/widget/ActionBarView;
    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarView;->isSplitActionBar()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarView;->getActionMenuView()Lcom/miui/internal/v5/view/menu/ActionMenuView;

    move-result-object v1

    .line 281
    .local v1, actionMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getMenuItems()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainerHeight()I

    move-result v2

    .line 285
    .end local v1           #actionMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    :cond_0
    :goto_0
    return v2

    .line 281
    .restart local v1       #actionMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "actionMode"

    .prologue
    .line 395
    return-void
.end method

.method protected isFragmentViewPagerMode()Z
    .locals 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/v5/widget/ActionBarView;->getActionBar()Lcom/miui/internal/v5/app/ActionBarImpl;

    move-result-object v0

    .line 322
    .local v0, actionBar:Lcom/miui/internal/v5/app/ActionBarImpl;
    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v1

    return v1
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->finishAnimation()V

    .line 179
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 180
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 184
    :cond_0
    iput-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 185
    iput-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    .line 187
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 189
    iput-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    .line 192
    :cond_1
    iput-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 193
    return-void
.end method

.method protected makeAnimation(I)Landroid/animation/ObjectAnimator;
    .locals 8
    .parameter "visibility"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 207
    iget-object v5, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_0

    .line 208
    iget-object v5, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 209
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 210
    invoke-direct {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->removeIdleHandler()V

    .line 213
    :cond_0
    if-nez p1, :cond_1

    move v1, v4

    .line 214
    .local v1, from:I
    :goto_0
    if-nez p1, :cond_2

    move v2, v3

    .line 215
    .local v2, to:I
    :goto_1
    const-string v5, "Value"

    const/4 v6, 0x2

    new-array v6, v6, [F

    int-to-float v7, v1

    aput v7, v6, v4

    int-to-float v4, v2

    aput v4, v6, v3

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 216
    .local v0, animator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 217
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 218
    return-object v0

    .end local v0           #animator:Landroid/animation/ObjectAnimator;
    .end local v1           #from:I
    .end local v2           #to:I
    :cond_1
    move v1, v3

    .line 213
    goto :goto_0

    .restart local v1       #from:I
    :cond_2
    move v2, v4

    .line 214
    goto :goto_1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 387
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    .line 365
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 366
    invoke-direct {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->notifyAnimationEnd()V

    .line 368
    iget v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 369
    .local v0, enter:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->showSoftInputPanel(Z)V

    .line 370
    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setResultViewMargin(Z)V

    .line 372
    iget v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 373
    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->allowUpdateContentBorder(Z)V

    .line 375
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 376
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 378
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setAlpha(F)V

    .line 379
    iput v4, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateVisibility:I

    .line 381
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->killMode()V

    .line 383
    :cond_0
    return-void

    .line 368
    .end local v0           #enter:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 391
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 349
    iget v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 350
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 353
    :cond_0
    const/high16 v1, 0x3f80

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setAlpha(F)V

    .line 354
    iput v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateVisibility:I

    .line 361
    :cond_1
    :goto_0
    return-void

    .line 355
    :cond_2
    iget v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, tabScrollView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x60b00a2

    if-ne v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 427
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 225
    const v1, 0x102002c

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    .line 226
    const v1, 0x1020009

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 227
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 230
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 231
    .local v0, lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 232
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
    .line 236
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 238
    iget-boolean v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mRequestAnimation:Z

    if-eqz v0, :cond_1

    .line 239
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->hasAnchorAndAnimateView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->queueIdleHandler()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mRequestAnimation:Z

    .line 248
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 404
    return-void
.end method

.method protected pollViews()V
    .locals 0

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/v5/widget/ActionBarView;

    .line 299
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 300
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getSplitActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 301
    return-void
.end method

.method public queueIdle()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public removeAnimationListener(Lmiui/v5/widget/SearchModeAnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 136
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSearchModeAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 115
    :cond_0
    return-void
.end method

.method public setAnchorViewHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    .line 121
    :cond_0
    return-void
.end method

.method protected setContentViewMargin(II)V
    .locals 4
    .parameter "topMargin"
    .parameter "bottomMargin"

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 431
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 433
    .local v0, lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 434
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 435
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    .end local v0           #lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResusltView:Ljava/lang/ref/WeakReference;

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 153
    .local v0, lParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 154
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    .line 155
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0           #lParams:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResultViewSet:Z

    .line 159
    :cond_0
    return-void
.end method

.method protected setResultViewMargin(Z)V
    .locals 4
    .parameter "enter"

    .prologue
    .line 326
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResusltView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 327
    iget-boolean v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResultViewSet:Z

    if-eqz v3, :cond_0

    .line 330
    if-eqz p1, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getHeight()I

    move-result v2

    .line 333
    .local v2, topMargin:I
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->isFragmentViewPagerMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getSplitActionBarHeight()I

    move-result v0

    .line 339
    .local v0, bottomMargin:I
    :goto_0
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResusltView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 341
    .local v1, lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 342
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 345
    .end local v0           #bottomMargin:I
    .end local v1           #lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2           #topMargin:I
    :cond_0
    return-void

    .line 333
    .restart local v2       #topMargin:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    .end local v2           #topMargin:I
    :cond_2
    iget v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    .line 336
    .restart local v2       #topMargin:I
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    .restart local v0       #bottomMargin:I
    goto :goto_0
.end method

.method public setValue(F)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->notifyAnimation(F)V

    .line 197
    return-void
.end method

.method protected showSoftInputPanel(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 312
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 314
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
