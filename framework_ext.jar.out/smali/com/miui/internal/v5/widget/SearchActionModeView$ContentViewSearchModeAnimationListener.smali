.class Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;
.super Lmiui/v5/widget/SimpleSearchModeAnimationListener;
.source "SearchActionModeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentViewSearchModeAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/v5/widget/SearchActionModeView;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-direct {p0}, Lmiui/v5/widget/SimpleSearchModeAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 580
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I
    invoke-static {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$000(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 581
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;

    move-result-object v2

    .line 582
    .local v2, container:Landroid/view/View;
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$500(Lcom/miui/internal/v5/widget/SearchActionModeView;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 583
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$500(Lcom/miui/internal/v5/widget/SearchActionModeView;)[I

    move-result-object v3

    aget v0, v3, v6

    .line 585
    .local v0, actionBarLocation:I
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$700(Lcom/miui/internal/v5/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v5, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$500(Lcom/miui/internal/v5/widget/SearchActionModeView;)[I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 586
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    iget-object v5, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$500(Lcom/miui/internal/v5/widget/SearchActionModeView;)[I

    move-result-object v5

    aget v5, v5, v6

    sub-int/2addr v5, v0

    #setter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I
    invoke-static {v3, v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$802(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I

    .line 587
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    iget-object v5, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I
    invoke-static {v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$800(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v5

    neg-int v5, v5

    #setter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I
    invoke-static {v3, v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$902(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I

    .line 589
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    iget-object v5, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$500(Lcom/miui/internal/v5/widget/SearchActionModeView;)[I

    move-result-object v5

    aget v5, v5, v6

    #setter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYStart:I
    invoke-static {v3, v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1002(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I

    .line 590
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    iget-object v5, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I
    invoke-static {v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$900(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v5

    #setter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYLength:I
    invoke-static {v3, v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1102(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I

    .line 592
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->isFragmentViewPagerMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getSplitActionBarHeight()I

    move-result v3

    neg-int v1, v3

    .line 593
    .local v1, bottomMargin:I
    :goto_0
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v3, v4, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setContentViewMargin(II)V

    .line 599
    .end local v0           #actionBarLocation:I
    .end local v1           #bottomMargin:I
    .end local v2           #container:Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #actionBarLocation:I
    .restart local v2       #container:Landroid/view/View;
    :cond_1
    move v1, v4

    .line 592
    goto :goto_0

    .line 594
    .end local v0           #actionBarLocation:I
    .end local v2           #container:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I
    invoke-static {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$000(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 595
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->isFragmentViewPagerMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    iget-object v5, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I
    invoke-static {v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$900(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setContentViewMargin(II)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$000(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 612
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$600(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 613
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1200(Lcom/miui/internal/v5/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 614
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$700(Lcom/miui/internal/v5/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 616
    :cond_0
    return-void
.end method

.method public onUpdate(F)V
    .locals 4
    .parameter "percent"

    .prologue
    .line 603
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$800(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I
    invoke-static {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$900(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 605
    .local v0, translationY:F
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1200(Lcom/miui/internal/v5/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 606
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYStart:I
    invoke-static {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1000(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ContentViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYLength:I
    invoke-static {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1100(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setTranslationY(F)V

    .line 607
    return-void
.end method
