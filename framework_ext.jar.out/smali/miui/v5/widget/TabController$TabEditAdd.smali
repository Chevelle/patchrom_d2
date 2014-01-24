.class Lmiui/v5/widget/TabController$TabEditAdd;
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
    name = "TabEditAdd"
.end annotation


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private final mIsMenuBarEnabled:Z

.field private final mTab:Landroid/app/ActionBar$Tab;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Ljava/lang/String;Z)V
    .locals 0
    .parameter "tab"
    .parameter "fragment"
    .parameter "tag"
    .parameter "isMenuBarEnabled"

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mTab:Landroid/app/ActionBar$Tab;

    .line 390
    iput-object p2, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mFragment:Landroid/app/Fragment;

    .line 391
    iput-object p3, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mTag:Ljava/lang/String;

    .line 392
    iput-boolean p4, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mIsMenuBarEnabled:Z

    .line 393
    return-void
.end method


# virtual methods
.method public execute(Lmiui/v5/widget/TabContainerLayout;Lmiui/v5/android/support/view/ViewPager;Lmiui/v5/widget/TabController$DynamicPagerAdapter;Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)Z
    .locals 4
    .parameter "container"
    .parameter "pager"
    .parameter "adapter"
    .parameter "transaction"
    .parameter "fm"

    .prologue
    .line 398
    iget-object v1, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mTab:Landroid/app/ActionBar$Tab;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lmiui/v5/widget/TabContainerLayout;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 399
    iget-object v1, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lmiui/v5/app/MiuiViewPagerItem;

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lmiui/v5/app/MiuiViewPagerItem;

    iget-boolean v2, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mIsMenuBarEnabled:Z

    invoke-interface {v1, v2}, Lmiui/v5/app/MiuiViewPagerItem;->setMenuBarEnabled(Z)V

    .line 404
    :cond_0
    iget-object v1, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p3, v1}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->addFragment(Landroid/app/Fragment;)V

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, old:Landroid/app/Fragment;
    iget-object v1, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mTag:Ljava/lang/String;

    invoke-virtual {p5, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 411
    :cond_1
    if-nez v0, :cond_3

    .line 412
    invoke-virtual {p2}, Lmiui/v5/android/support/view/ViewPager;->getId()I

    move-result v1

    iget-object v2, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mFragment:Landroid/app/Fragment;

    iget-object v3, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mTag:Ljava/lang/String;

    invoke-virtual {p4, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 420
    .end local v0           #old:Landroid/app/Fragment;
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 413
    .restart local v0       #old:Landroid/app/Fragment;
    :cond_3
    iget-object v1, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mFragment:Landroid/app/Fragment;

    if-eq v0, v1, :cond_4

    .line 414
    sget-object v1, Lmiui/v5/widget/TabController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment with same tag or id, but different instance, already exists! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p2}, Lmiui/v5/android/support/view/ViewPager;->getId()I

    move-result v1

    iget-object v2, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mFragment:Landroid/app/Fragment;

    iget-object v3, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mTag:Ljava/lang/String;

    invoke-virtual {p4, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 417
    :cond_4
    sget-object v1, Lmiui/v5/widget/TabController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment is exists! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/v5/widget/TabController$TabEditAdd;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
