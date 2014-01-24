.class Lcom/miui/internal/v5/widget/SearchActionModeView$ActionBarSearchModeAnimationListener;
.super Lmiui/v5/widget/SimpleSearchModeAnimationListener;
.source "SearchActionModeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBarSearchModeAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/v5/widget/SearchActionModeView;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ActionBarSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-direct {p0}, Lmiui/v5/widget/SimpleSearchModeAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 3

    .prologue
    .line 554
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ActionBarSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$000(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 555
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ActionBarSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    .line 556
    .local v0, tabScrollView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 557
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 560
    .end local v0           #tabScrollView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onUpdate(F)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 546
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$ActionBarSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;

    move-result-object v0

    .line 547
    .local v0, actionBarContainer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 548
    neg-float v1, p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 550
    :cond_0
    return-void
.end method
