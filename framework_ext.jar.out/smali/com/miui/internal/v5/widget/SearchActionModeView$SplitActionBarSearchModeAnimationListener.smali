.class Lcom/miui/internal/v5/widget/SearchActionModeView$SplitActionBarSearchModeAnimationListener;
.super Lmiui/v5/widget/SimpleSearchModeAnimationListener;
.source "SearchActionModeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplitActionBarSearchModeAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/v5/widget/SearchActionModeView;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SplitActionBarSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-direct {p0}, Lmiui/v5/widget/SimpleSearchModeAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 2
    .parameter "percent"

    .prologue
    .line 568
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$SplitActionBarSearchModeAnimationListener;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getSplitActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;

    move-result-object v0

    .line 569
    .local v0, splitActionBarContainer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 572
    :cond_0
    return-void
.end method
