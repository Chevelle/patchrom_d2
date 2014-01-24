.class Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenCloseAnimator"
.end annotation


# instance fields
.field mCloseAnimator:Landroid/animation/Animator;

.field mCurrentAnimator:Landroid/animation/Animator;

.field mIsOpen:Z

.field final synthetic this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;


# direct methods
.method public constructor <init>(Lcom/miui/internal/v5/view/menu/ActionMenuView;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->initialize()V

    .line 439
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    .line 443
    :cond_0
    return-void
.end method

.method close()V
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->cancel()V

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->mIsOpen:Z

    .line 433
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 434
    return-void
.end method

.method initialize()V
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 412
    const-string v0, "TranslationY"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerHeight:I
    invoke-static {v3}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$100(Lcom/miui/internal/v5/view/menu/ActionMenuView;)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    .line 414
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 416
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 418
    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 457
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    .line 453
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 461
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    .line 448
    return-void
.end method

.method open()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->cancel()V

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->mIsOpen:Z

    .line 424
    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->setTranslationY(F)V

    .line 425
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$000(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 426
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$000(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    .line 427
    return-void
.end method

.method public setTranslationY(F)V
    .locals 2
    .parameter "y"

    .prologue
    .line 402
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$000(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/v5/view/menu/ActionMenuView;

    #getter for: Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->access$000(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    return-void
.end method
