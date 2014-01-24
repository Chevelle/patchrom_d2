.class Lmiui/v5/widget/TabController$1;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/v5/widget/TabController;-><init>(Landroid/app/Activity;Lmiui/v5/widget/TabContainerLayout;Lmiui/v5/widget/CooperativeViewPager;Lmiui/v5/widget/TabIndicator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/widget/TabController;


# direct methods
.method constructor <init>(Lmiui/v5/widget/TabController;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lmiui/v5/widget/TabController$1;->this$0:Lmiui/v5/widget/TabController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabWidthChanged(Lmiui/v5/widget/TabContainerLayout;)V
    .locals 3
    .parameter "tabContainer"

    .prologue
    .line 49
    iget-object v0, p0, Lmiui/v5/widget/TabController$1;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mTabIndicator:Lmiui/v5/widget/TabIndicator;

    invoke-virtual {p1}, Lmiui/v5/widget/TabContainerLayout;->getTabWidth()I

    move-result v1

    invoke-interface {v0, v1}, Lmiui/v5/widget/TabIndicator;->setTabWidth(I)V

    .line 50
    iget-object v0, p0, Lmiui/v5/widget/TabController$1;->this$0:Lmiui/v5/widget/TabController;

    iget v0, v0, Lmiui/v5/widget/TabController;->mViewPagerState:I

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lmiui/v5/widget/TabController$1;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mTabIndicator:Lmiui/v5/widget/TabIndicator;

    iget-object v1, p0, Lmiui/v5/widget/TabController$1;->this$0:Lmiui/v5/widget/TabController;

    invoke-virtual {v1}, Lmiui/v5/widget/TabController;->getSelectedPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmiui/v5/widget/TabIndicator;->apply(IF)F

    .line 53
    :cond_0
    return-void
.end method
