.class Lmiui/v5/widget/TabController$TabEditRemove;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Lmiui/v5/widget/TabController$TabEditCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/TabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabEditRemove"
.end annotation


# instance fields
.field private final mTab:Landroid/app/ActionBar$Tab;


# direct methods
.method public constructor <init>(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lmiui/v5/widget/TabController$TabEditRemove;->mTab:Landroid/app/ActionBar$Tab;

    .line 430
    return-void
.end method


# virtual methods
.method public execute(Lmiui/v5/widget/TabContainerLayout;Lmiui/v5/android/support/view/ViewPager;Lmiui/v5/widget/TabController$DynamicPagerAdapter;Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)Z
    .locals 3
    .parameter "container"
    .parameter "pager"
    .parameter "adapter"
    .parameter "transaction"
    .parameter "fm"

    .prologue
    .line 435
    iget-object v2, p0, Lmiui/v5/widget/TabController$TabEditRemove;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {p1, v2}, Lmiui/v5/widget/TabContainerLayout;->findTabPosition(Landroid/app/ActionBar$Tab;)I

    move-result v1

    .line 436
    .local v1, pos:I
    iget-object v2, p0, Lmiui/v5/widget/TabController$TabEditRemove;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {p1, v2}, Lmiui/v5/widget/TabContainerLayout;->removeTab(Landroid/app/ActionBar$Tab;)Z

    .line 437
    invoke-virtual {p3, v1}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 438
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p3, v0}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->removeFragment(Landroid/app/Fragment;)Z

    .line 440
    invoke-virtual {p4, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 443
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
