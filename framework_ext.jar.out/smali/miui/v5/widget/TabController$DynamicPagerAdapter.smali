.class Lmiui/v5/widget/TabController$DynamicPagerAdapter;
.super Lmiui/v5/android/support/app/FragmentPagerAdapter;
.source "TabController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/TabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicPagerAdapter"
.end annotation


# instance fields
.field private final mFragmentManager:Landroid/app/FragmentManager;

.field final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1
    .parameter "fm"

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lmiui/v5/android/support/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 546
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->mFragments:Ljava/util/List;

    .line 551
    iput-object p1, p0, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 552
    return-void
.end method


# virtual methods
.method addFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 580
    iget-object v0, p0, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    return-void
.end method

.method findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .parameter "tag"

    .prologue
    .line 592
    if-eqz p1, :cond_1

    .line 593
    iget-object v2, p0, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 594
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 572
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 573
    iget-object v0, p0, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 576
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 562
    const/4 v0, -0x2

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 567
    check-cast p2, Landroid/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeFragment(Landroid/app/Fragment;)Z
    .locals 1
    .parameter "fragment"

    .prologue
    .line 584
    iget-object v0, p0, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
