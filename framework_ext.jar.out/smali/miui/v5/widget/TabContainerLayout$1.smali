.class Lmiui/v5/widget/TabContainerLayout$1;
.super Ljava/lang/Object;
.source "TabContainerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/v5/widget/TabContainerLayout;->animateToTab(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/widget/TabContainerLayout;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/v5/widget/TabContainerLayout;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout$1;->this$0:Lmiui/v5/widget/TabContainerLayout;

    iput-object p2, p0, Lmiui/v5/widget/TabContainerLayout$1;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 402
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout$1;->val$tabView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout$1;->this$0:Lmiui/v5/widget/TabContainerLayout;

    iget-object v1, v1, Lmiui/v5/widget/TabContainerLayout;->mScrollStrategy:Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;

    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout$1;->val$tabView:Landroid/view/View;

    iget-object v3, p0, Lmiui/v5/widget/TabContainerLayout$1;->this$0:Lmiui/v5/widget/TabContainerLayout;

    invoke-interface {v1, v2, v3}, Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;->getScrollX(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    .line 404
    .local v0, scrollX:I
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout$1;->this$0:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v1}, Lmiui/v5/widget/TabContainerLayout;->getScrollX()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 405
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout$1;->this$0:Lmiui/v5/widget/TabContainerLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmiui/v5/widget/TabContainerLayout;->smoothScrollTo(II)V

    .line 408
    .end local v0           #scrollX:I
    :cond_0
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout$1;->this$0:Lmiui/v5/widget/TabContainerLayout;

    const/4 v2, 0x0

    iput-object v2, v1, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    .line 409
    return-void
.end method
