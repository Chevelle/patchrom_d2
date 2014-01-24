.class Lmiui/v5/app/MiuiTabActivity$6;
.super Ljava/lang/Object;
.source "MiuiTabActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/MiuiTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/app/MiuiTabActivity;


# direct methods
.method constructor <init>(Lmiui/v5/app/MiuiTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lmiui/v5/app/MiuiTabActivity$6;->this$0:Lmiui/v5/app/MiuiTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 338
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 6
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 315
    iget-object v4, p0, Lmiui/v5/app/MiuiTabActivity$6;->this$0:Lmiui/v5/app/MiuiTabActivity;

    #getter for: Lmiui/v5/app/MiuiTabActivity;->mScrollPageItem:I
    invoke-static {v4}, Lmiui/v5/app/MiuiTabActivity;->access$000(Lmiui/v5/app/MiuiTabActivity;)I

    move-result v2

    .line 316
    .local v2, oldScrollPageItem:I
    iget-object v4, p0, Lmiui/v5/app/MiuiTabActivity$6;->this$0:Lmiui/v5/app/MiuiTabActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v5

    #setter for: Lmiui/v5/app/MiuiTabActivity;->mScrollPageItem:I
    invoke-static {v4, v5}, Lmiui/v5/app/MiuiTabActivity;->access$002(Lmiui/v5/app/MiuiTabActivity;I)I

    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, fromHasMenuBar:Z
    const/4 v3, 0x0

    .line 321
    .local v3, toHasMenuBar:Z
    iget-object v4, p0, Lmiui/v5/app/MiuiTabActivity$6;->this$0:Lmiui/v5/app/MiuiTabActivity;

    iget-object v4, v4, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    invoke-virtual {v4, v2}, Lmiui/v5/widget/TabController;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 322
    .local v0, fragment:Landroid/app/Fragment;
    instance-of v4, v0, Lmiui/v5/app/MiuiViewPagerItem;

    if-eqz v4, :cond_0

    .line 323
    check-cast v0, Lmiui/v5/app/MiuiViewPagerItem;

    .end local v0           #fragment:Landroid/app/Fragment;
    invoke-interface {v0}, Lmiui/v5/app/MiuiViewPagerItem;->isMenuBarEnabled()Z

    move-result v1

    .line 326
    :cond_0
    iget-object v4, p0, Lmiui/v5/app/MiuiTabActivity$6;->this$0:Lmiui/v5/app/MiuiTabActivity;

    iget-object v4, v4, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    iget-object v5, p0, Lmiui/v5/app/MiuiTabActivity$6;->this$0:Lmiui/v5/app/MiuiTabActivity;

    #getter for: Lmiui/v5/app/MiuiTabActivity;->mScrollPageItem:I
    invoke-static {v5}, Lmiui/v5/app/MiuiTabActivity;->access$000(Lmiui/v5/app/MiuiTabActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Lmiui/v5/widget/TabController;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 327
    .restart local v0       #fragment:Landroid/app/Fragment;
    instance-of v4, v0, Lmiui/v5/app/MiuiViewPagerItem;

    if-eqz v4, :cond_1

    .line 328
    check-cast v0, Lmiui/v5/app/MiuiViewPagerItem;

    .end local v0           #fragment:Landroid/app/Fragment;
    invoke-interface {v0}, Lmiui/v5/app/MiuiViewPagerItem;->isMenuBarEnabled()Z

    move-result v3

    .line 331
    :cond_1
    if-nez v1, :cond_2

    if-eqz v3, :cond_3

    .line 332
    :cond_2
    iget-object v4, p0, Lmiui/v5/app/MiuiTabActivity$6;->this$0:Lmiui/v5/app/MiuiTabActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lmiui/v5/app/MiuiTabActivity;->updateMenuBar(Z)V

    .line 334
    :cond_3
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 311
    return-void
.end method
