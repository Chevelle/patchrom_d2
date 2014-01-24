.class public abstract Lmiui/v5/android/support/app/FragmentPagerAdapter;
.super Lmiui/v5/android/support/view/PagerAdapter;
.source "FragmentPagerAdapter.java"


# instance fields
.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mTransactionTmp:Landroid/app/FragmentTransaction;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1
    .parameter "fm"

    .prologue
    .line 18
    invoke-direct {p0}, Lmiui/v5/android/support/view/PagerAdapter;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    .line 19
    iput-object p1, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 20
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 36
    iget-object v0, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    .line 39
    :cond_0
    iget-object v0, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 40
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 44
    iget-object v0, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    .line 47
    iget-object v0, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 49
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 26
    iget-object v1, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 27
    iget-object v1, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    .line 29
    :cond_0
    invoke-virtual {p0, p2}, Lmiui/v5/android/support/app/FragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 30
    .local v0, f:Landroid/app/Fragment;
    iget-object v1, p0, Lmiui/v5/android/support/app/FragmentPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 31
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 53
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
