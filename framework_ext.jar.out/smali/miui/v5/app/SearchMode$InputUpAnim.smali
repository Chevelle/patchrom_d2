.class Lmiui/v5/app/SearchMode$InputUpAnim;
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
    name = "InputUpAnim"
.end annotation


# instance fields
.field private final mAlphaView:Landroid/view/View;

.field private final mAnchorDist:I

.field private final mAnimView:Landroid/view/View;

.field private final mBackView:Landroid/view/View;

.field private final mBackViewWidth:I

.field private final mEditAnimStart:I

.field private final mEditAnimWidth:I

.field private final mEditView:Landroid/view/View;

.field private final mOrignalBottom:I

.field private final mSearchView:Landroid/view/View;

.field private final mToken:Lmiui/v5/app/SearchMode$Token;


# direct methods
.method public constructor <init>(Lmiui/v5/app/SearchMode$Token;IIII)V
    .locals 1
    .parameter "token"
    .parameter "anchorDist"
    .parameter "backViewWidth"
    .parameter "editAnimStart"
    .parameter "editAnimWidth"

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mToken:Lmiui/v5/app/SearchMode$Token;

    .line 307
    iput p2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnchorDist:I

    .line 308
    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mAnimView:Landroid/view/View;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    .line 309
    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mSearchView:Landroid/view/View;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mSearchView:Landroid/view/View;

    .line 310
    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mAlphaView:Landroid/view/View;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAlphaView:Landroid/view/View;

    .line 311
    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditView:Landroid/view/View;

    .line 312
    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mBackView:Landroid/view/View;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackView:Landroid/view/View;

    .line 313
    iput p3, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackViewWidth:I

    .line 314
    iput p4, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditAnimStart:I

    .line 315
    iput p5, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditAnimWidth:I

    .line 316
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mOrignalBottom:I

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mOrignalBottom:I

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 345
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAlphaView:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 346
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 348
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditView:Landroid/view/View;

    iget v1, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditAnimWidth:I

    iget v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditAnimStart:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lmiui/v5/app/SearchMode;->setLeft(Landroid/view/View;I)V

    .line 349
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    iget v1, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnchorDist:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 351
    iget v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnchorDist:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/v5/app/SearchMode;->setHeight(Landroid/view/View;I)V

    .line 356
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 360
    invoke-direct {p0}, Lmiui/v5/app/SearchMode$InputUpAnim;->reset()V

    .line 361
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mToken:Lmiui/v5/app/SearchMode$Token;

    iget v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    .line 362
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 366
    invoke-direct {p0}, Lmiui/v5/app/SearchMode$InputUpAnim;->reset()V

    .line 367
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mToken:Lmiui/v5/app/SearchMode$Token;

    iget v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    .line 368
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 380
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mSearchView:Landroid/view/View;

    iget v1, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnchorDist:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 374
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mToken:Lmiui/v5/app/SearchMode$Token;

    iget v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    .line 376
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 326
    .local v0, percent:F
    iget v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnchorDist:I

    int-to-float v2, v2

    mul-float v1, v0, v2

    .line 328
    .local v1, y:F
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    neg-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 330
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    iget v3, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mOrignalBottom:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    .line 333
    :cond_0
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditView:Landroid/view/View;

    iget v3, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditAnimStart:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditAnimWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lmiui/v5/app/SearchMode;->setLeft(Landroid/view/View;I)V

    .line 335
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mSearchView:Landroid/view/View;

    iget v3, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnchorDist:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 337
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAlphaView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 339
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 340
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackView:Landroid/view/View;

    iget v3, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackViewWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackViewWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 341
    return-void
.end method
