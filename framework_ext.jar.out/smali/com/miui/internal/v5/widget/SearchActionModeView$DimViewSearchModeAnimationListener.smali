.class Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;
.super Lmiui/v5/widget/SimpleSearchModeAnimationListener;
.source "SearchActionModeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DimViewSearchModeAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/v5/widget/SearchActionModeView;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-direct {p0}, Lmiui/v5/widget/SimpleSearchModeAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$000(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 625
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x60b00a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #setter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1302(Lcom/miui/internal/v5/widget/SearchActionModeView;Landroid/view/View;)Landroid/view/View;

    .line 626
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 630
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 639
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$000(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 640
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$600(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$000(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onUpdate(F)V
    .locals 1
    .parameter "percent"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$DimViewSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 635
    return-void
.end method
