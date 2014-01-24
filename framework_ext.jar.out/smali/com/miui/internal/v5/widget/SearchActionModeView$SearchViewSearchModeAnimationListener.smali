.class Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;
.super Lmiui/v5/widget/SimpleSearchModeAnimationListener;
.source "SearchActionModeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchViewSearchModeAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/v5/widget/SearchActionModeView;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-direct {p0}, Lmiui/v5/widget/SimpleSearchModeAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 510
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I
    invoke-static {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$000(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 511
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 512
    .local v1, measureSpec:I
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$100(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 513
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$100(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    neg-int v3, v3

    #setter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXStart:I
    invoke-static {v2, v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$202(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I

    .line 514
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$100(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    #setter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXLength:I
    invoke-static {v2, v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$302(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I

    .line 517
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #calls: Lcom/miui/internal/v5/widget/SearchActionModeView;->hasAnchorAndAnimateView()Z
    invoke-static {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$400(Lcom/miui/internal/v5/widget/SearchActionModeView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 518
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;

    move-result-object v0

    .line 519
    .local v0, container:Landroid/view/View;
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$500(Lcom/miui/internal/v5/widget/SearchActionModeView;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 520
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$500(Lcom/miui/internal/v5/widget/SearchActionModeView;)[I

    move-result-object v3

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setTranslationY(F)V

    .line 523
    .end local v0           #container:Landroid/view/View;
    .end local v1           #measureSpec:I
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 533
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$000(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 534
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$600(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 535
    .local v0, lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$100(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 536
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$600(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$600(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 539
    .end local v0           #lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public onUpdate(F)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$100(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXStart:I
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$200(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXLength:I
    invoke-static {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$300(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 528
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$600(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXLength:I
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$300(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SearchViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLeft(I)V

    .line 529
    return-void
.end method
