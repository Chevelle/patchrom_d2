.class Lmiui/v5/app/SearchMode$InputDownAnim;
.super Ljava/lang/Object;
.source "SearchMode.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/SearchMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputDownAnim"
.end annotation


# instance fields
.field private final mAlphaView:Landroid/view/View;

.field private mAlphaViewVisible:Z

.field private final mAnchorDist:I

.field private final mAnimView:Landroid/view/View;

.field private final mAnimViewHeight:I

.field private final mBackView:Landroid/view/View;

.field private final mBackViewWidth:I

.field private final mEditAnimStart:I

.field private final mEditAnimWidth:I

.field private final mEditView:Landroid/view/View;

.field private final mOrignalBottom:I

.field private final mResultContainer:Landroid/view/ViewGroup;

.field private mResultVisible:Z

.field private final mSearchView:Landroid/view/View;

.field private final mToken:Lmiui/v5/app/SearchMode$Token;


# direct methods
.method public constructor <init>(Lmiui/v5/app/SearchMode$Token;IIII)V
    .locals 2
    .parameter "token"
    .parameter "anchorDist"
    .parameter "backViewWidth"
    .parameter "editAnimStart"
    .parameter "editAnimWidth"

    .prologue
    const/4 v1, 0x0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mToken:Lmiui/v5/app/SearchMode$Token;

    .line 417
    iput p2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnchorDist:I

    .line 418
    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mAnimView:Landroid/view/View;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimView:Landroid/view/View;

    .line 419
    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mSearchView:Landroid/view/View;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mSearchView:Landroid/view/View;

    .line 420
    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mAlphaView:Landroid/view/View;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAlphaView:Landroid/view/View;

    .line 421
    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mEditView:Landroid/view/View;

    .line 422
    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mBackView:Landroid/view/View;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mBackView:Landroid/view/View;

    .line 423
    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mResultContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mResultContainer:Landroid/view/ViewGroup;

    .line 425
    iput p3, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mBackViewWidth:I

    .line 426
    iput p4, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mEditAnimStart:I

    .line 427
    iput p5, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mEditAnimWidth:I

    .line 428
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimViewHeight:I

    .line 430
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mOrignalBottom:I

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_0
    iput v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimViewHeight:I

    .line 433
    iput v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mOrignalBottom:I

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    .line 481
    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 483
    iget v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnchorDist:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimView:Landroid/view/View;

    iget v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimViewHeight:I

    invoke-static {v1, v2}, Lmiui/v5/app/SearchMode;->setHeight(Landroid/view/View;I)V

    .line 489
    :cond_0
    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mSearchView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 490
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 491
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 493
    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 470
    invoke-direct {p0}, Lmiui/v5/app/SearchMode$InputDownAnim;->reset()V

    .line 471
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mToken:Lmiui/v5/app/SearchMode$Token;

    iget v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    .line 472
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 476
    invoke-direct {p0}, Lmiui/v5/app/SearchMode$InputDownAnim;->reset()V

    .line 477
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mToken:Lmiui/v5/app/SearchMode$Token;

    iget v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    .line 478
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 509
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 497
    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAlphaView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAlphaViewVisible:Z

    .line 498
    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mResultContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mResultContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mResultVisible:Z

    .line 501
    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mEditView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 503
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mEditView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 504
    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mToken:Lmiui/v5/app/SearchMode$Token;

    iget v2, v1, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    .line 505
    return-void

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    move v1, v3

    .line 497
    goto :goto_0

    :cond_1
    move v2, v3

    .line 498
    goto :goto_1
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/high16 v5, 0x3f80

    .line 439
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 440
    .local v0, percent:F
    iget v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnchorDist:I

    int-to-float v2, v2

    mul-float v1, v0, v2

    .line 443
    .local v1, y:F
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimView:Landroid/view/View;

    iget v3, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnchorDist:I

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 445
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnimView:Landroid/view/View;

    iget v3, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mOrignalBottom:I

    iget v4, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAnchorDist:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    .line 449
    :cond_0
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mSearchView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 452
    iget-boolean v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAlphaViewVisible:Z

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mAlphaView:Landroid/view/View;

    sub-float v3, v5, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 456
    :cond_1
    iget-boolean v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mResultVisible:Z

    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mResultContainer:Landroid/view/ViewGroup;

    sub-float v3, v5, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 461
    :cond_2
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mEditView:Landroid/view/View;

    sub-float v3, v5, v0

    iget v4, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mEditAnimWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mEditAnimStart:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lmiui/v5/app/SearchMode;->setLeft(Landroid/view/View;I)V

    .line 464
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mBackView:Landroid/view/View;

    iget v3, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mBackViewWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 465
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputDownAnim;->mBackView:Landroid/view/View;

    sub-float v3, v5, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 466
    return-void
.end method
