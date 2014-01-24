.class public Lmiui/v5/widget/TabController;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Lmiui/v5/widget/TabContainerLayout$TransactionFractory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/TabController$PagerAdapterChangedListener;,
        Lmiui/v5/widget/TabController$DynamicPagerAdapter;,
        Lmiui/v5/widget/TabController$TabEditorImpl;,
        Lmiui/v5/widget/TabController$TabEditRemove;,
        Lmiui/v5/widget/TabController$TabEditAdd;,
        Lmiui/v5/widget/TabController$TabEditCommand;,
        Lmiui/v5/widget/TabController$TabEditor;,
        Lmiui/v5/widget/TabController$TabListenerProxy;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field final mAdapter:Lmiui/v5/widget/TabController$DynamicPagerAdapter;

.field mAdapterChangedListener:Lmiui/v5/widget/TabController$PagerAdapterChangedListener;

.field mInternalTabListener:Landroid/app/ActionBar$TabListener;

.field final mTabContainer:Lmiui/v5/widget/TabContainerLayout;

.field mTabIndicator:Lmiui/v5/widget/TabIndicator;

.field final mViewPager:Lmiui/v5/widget/CooperativeViewPager;

.field mViewPagerListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

.field private final mViewPagerListenerDecorator:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

.field mViewPagerState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lmiui/v5/widget/TabController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/v5/widget/TabController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lmiui/v5/widget/TabContainerLayout;Lmiui/v5/widget/CooperativeViewPager;Lmiui/v5/widget/TabIndicator;)V
    .locals 2
    .parameter "a"
    .parameter "container"
    .parameter "pager"
    .parameter "indicator"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lmiui/v5/widget/TabController;->mViewPagerState:I

    .line 315
    new-instance v0, Lmiui/v5/widget/TabController$2;

    invoke-direct {v0, p0}, Lmiui/v5/widget/TabController$2;-><init>(Lmiui/v5/widget/TabController;)V

    iput-object v0, p0, Lmiui/v5/widget/TabController;->mViewPagerListenerDecorator:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    .line 43
    iput-object p2, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    .line 44
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0, p0}, Lmiui/v5/widget/TabContainerLayout;->setTransactionFractory(Lmiui/v5/widget/TabContainerLayout$TransactionFractory;)V

    .line 45
    new-instance v0, Lmiui/v5/widget/TabController$1;

    invoke-direct {v0, p0}, Lmiui/v5/widget/TabController$1;-><init>(Lmiui/v5/widget/TabController;)V

    invoke-virtual {p2, v0}, Lmiui/v5/widget/TabContainerLayout;->setTabWidthChangedListener(Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;)V

    .line 57
    invoke-virtual {p0, p4}, Lmiui/v5/widget/TabController;->setTabIndicator(Lmiui/v5/widget/TabIndicator;)V

    .line 59
    new-instance v0, Lmiui/v5/widget/TabController$DynamicPagerAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lmiui/v5/widget/TabController;->mAdapter:Lmiui/v5/widget/TabController$DynamicPagerAdapter;

    .line 60
    iput-object p3, p0, Lmiui/v5/widget/TabController;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    .line 61
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    iget-object v1, p0, Lmiui/v5/widget/TabController;->mAdapter:Lmiui/v5/widget/TabController$DynamicPagerAdapter;

    invoke-virtual {v0, v1}, Lmiui/v5/widget/CooperativeViewPager;->setAdapter(Lmiui/v5/android/support/view/PagerAdapter;)V

    .line 62
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    iget-object v1, p0, Lmiui/v5/widget/TabController;->mViewPagerListenerDecorator:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lmiui/v5/widget/CooperativeViewPager;->setOnPageChangeListener(Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;)V
    .locals 1
    .parameter "tab"
    .parameter "fragment"

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/v5/widget/TabController;->addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Z)V

    .line 156
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Z)V
    .locals 1
    .parameter "tab"
    .parameter "fragment"
    .parameter "isMenuBarEnabled"

    .prologue
    .line 165
    invoke-virtual {p0}, Lmiui/v5/widget/TabController;->newTabEditor()Lmiui/v5/widget/TabController$TabEditor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmiui/v5/widget/TabController$TabEditor;->addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Z)Lmiui/v5/widget/TabController$TabEditor;

    move-result-object v0

    invoke-interface {v0}, Lmiui/v5/widget/TabController$TabEditor;->commit()Z

    .line 166
    return-void
.end method

.method public beginTransaction()Landroid/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mAdapter:Lmiui/v5/widget/TabController$DynamicPagerAdapter;

    invoke-virtual {v0}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .parameter "tag"

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mAdapter:Lmiui/v5/widget/TabController$DynamicPagerAdapter;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment(I)Landroid/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 110
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mAdapter:Lmiui/v5/widget/TabController$DynamicPagerAdapter;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mAdapter:Lmiui/v5/widget/TabController$DynamicPagerAdapter;

    invoke-virtual {v0}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getSelectedFragment()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mAdapter:Lmiui/v5/widget/TabController$DynamicPagerAdapter;

    invoke-virtual {p0}, Lmiui/v5/widget/TabController;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    invoke-virtual {v0}, Lmiui/v5/widget/CooperativeViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0}, Lmiui/v5/widget/TabContainerLayout;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .parameter "position"

    .prologue
    .line 102
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/TabContainerLayout;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getTabContainer()Lmiui/v5/widget/TabContainerLayout;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    return-object v0
.end method

.method public getViewPager()Lmiui/v5/android/support/view/ViewPager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    return-object v0
.end method

.method public getViewPagerState()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lmiui/v5/widget/TabController;->mViewPagerState:I

    return v0
.end method

.method public invalideFragmentMenu()V
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lmiui/v5/widget/TabController;->getSelectedPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabController;->invalideFragmentMenu(I)V

    .line 363
    return-void
.end method

.method invalideFragmentMenu(I)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, i:I
    iget-object v3, p0, Lmiui/v5/widget/TabController;->mAdapter:Lmiui/v5/widget/TabController$DynamicPagerAdapter;

    iget-object v3, v3, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 356
    .local v0, f:Landroid/app/Fragment;
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 359
    .end local v0           #f:Landroid/app/Fragment;
    :cond_1
    return-void
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    new-instance v1, Lmiui/v5/widget/TabController$TabListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/v5/widget/TabController$TabListenerProxy;-><init>(Lmiui/v5/widget/TabController;Landroid/app/ActionBar$TabListener;)V

    invoke-virtual {v0, v1}, Lmiui/v5/widget/TabContainerLayout;->newTab(Landroid/app/ActionBar$TabListener;)Lmiui/v5/widget/TabContainerLayout$TabImpl;

    move-result-object v0

    return-object v0
.end method

.method public newTab(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 2
    .parameter "l"

    .prologue
    .line 142
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    new-instance v1, Lmiui/v5/widget/TabController$TabListenerProxy;

    invoke-direct {v1, p0, p1}, Lmiui/v5/widget/TabController$TabListenerProxy;-><init>(Lmiui/v5/widget/TabController;Landroid/app/ActionBar$TabListener;)V

    invoke-virtual {v0, v1}, Lmiui/v5/widget/TabContainerLayout;->newTab(Landroid/app/ActionBar$TabListener;)Lmiui/v5/widget/TabContainerLayout$TabImpl;

    move-result-object v0

    return-object v0
.end method

.method public newTabEditor()Lmiui/v5/widget/TabController$TabEditor;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lmiui/v5/widget/TabController$TabEditorImpl;

    invoke-direct {v0, p0}, Lmiui/v5/widget/TabController$TabEditorImpl;-><init>(Lmiui/v5/widget/TabController;)V

    return-object v0
.end method

.method protected onTabSelected(Landroid/app/ActionBar$Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 261
    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v1, p1}, Lmiui/v5/widget/TabContainerLayout;->findTabPosition(Landroid/app/ActionBar$Tab;)I

    move-result v0

    .line 266
    .local v0, pos:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lmiui/v5/widget/TabController;->mAdapter:Lmiui/v5/widget/TabController$DynamicPagerAdapter;

    invoke-virtual {v1}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmiui/v5/widget/TabController;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    invoke-virtual {v1}, Lmiui/v5/widget/CooperativeViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 268
    iget-object v1, p0, Lmiui/v5/widget/TabController;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lmiui/v5/widget/CooperativeViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/v5/widget/CooperativeViewPager;->setAdapter(Lmiui/v5/android/support/view/PagerAdapter;)V

    .line 126
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    iget-object v1, p0, Lmiui/v5/widget/TabController;->mTabIndicator:Lmiui/v5/widget/TabIndicator;

    invoke-virtual {v0, v1}, Lmiui/v5/widget/TabContainerLayout;->detachIndicator(Lmiui/v5/widget/TabIndicator;)V

    .line 127
    return-void
.end method

.method public removeAll()V
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p0}, Lmiui/v5/widget/TabController;->newTabEditor()Lmiui/v5/widget/TabController$TabEditor;

    move-result-object v1

    .line 191
    .local v1, editor:Lmiui/v5/widget/TabController$TabEditor;
    iget-object v3, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v3}, Lmiui/v5/widget/TabContainerLayout;->getTabCount()I

    move-result v0

    .line 192
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 193
    iget-object v3, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v3, v2}, Lmiui/v5/widget/TabContainerLayout;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-interface {v1, v3}, Lmiui/v5/widget/TabController$TabEditor;->removeTab(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabController$TabEditor;

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-interface {v1}, Lmiui/v5/widget/TabController$TabEditor;->commit()Z

    .line 197
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lmiui/v5/widget/TabController;->newTabEditor()Lmiui/v5/widget/TabController$TabEditor;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/v5/widget/TabController$TabEditor;->removeTab(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabController$TabEditor;

    move-result-object v0

    invoke-interface {v0}, Lmiui/v5/widget/TabController$TabEditor;->commit()Z

    .line 176
    :cond_0
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 183
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/TabContainerLayout;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabController;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 184
    return-void
.end method

.method public selectTab(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 205
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/TabContainerLayout;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabController;->selectTab(Landroid/app/ActionBar$Tab;)Z

    move-result v0

    return v0
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)Z
    .locals 1
    .parameter "tab"

    .prologue
    .line 214
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/TabContainerLayout;->selectTab(Landroid/app/ActionBar$Tab;)Z

    move-result v0

    return v0
.end method

.method public setCooperative(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v3, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lmiui/v5/widget/TabContainerLayout;->setInteractive(Z)V

    .line 90
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lmiui/v5/widget/CooperativeViewPager;->setDraggable(Z)V

    .line 91
    return-void

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    :cond_1
    move v1, v2

    .line 90
    goto :goto_1
.end method

.method public setInternalTabListener(Landroid/app/ActionBar$TabListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 252
    iput-object p1, p0, Lmiui/v5/widget/TabController;->mInternalTabListener:Landroid/app/ActionBar$TabListener;

    .line 253
    return-void
.end method

.method public setPagerAdapterChangedListener(Lmiui/v5/widget/TabController$PagerAdapterChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 248
    iput-object p1, p0, Lmiui/v5/widget/TabController;->mAdapterChangedListener:Lmiui/v5/widget/TabController$PagerAdapterChangedListener;

    .line 249
    return-void
.end method

.method public setTabIndicator(Lmiui/v5/widget/TabIndicator;)V
    .locals 2
    .parameter "indicator"

    .prologue
    .line 66
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabIndicator:Lmiui/v5/widget/TabIndicator;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    iget-object v1, p0, Lmiui/v5/widget/TabController;->mTabIndicator:Lmiui/v5/widget/TabIndicator;

    invoke-virtual {v0, v1}, Lmiui/v5/widget/TabContainerLayout;->detachIndicator(Lmiui/v5/widget/TabIndicator;)V

    .line 70
    :cond_0
    iput-object p1, p0, Lmiui/v5/widget/TabController;->mTabIndicator:Lmiui/v5/widget/TabIndicator;

    .line 71
    if-eqz p1, :cond_1

    .line 72
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/TabContainerLayout;->attachIndicator(Lmiui/v5/widget/TabIndicator;)V

    .line 74
    :cond_1
    return-void
.end method

.method public setTabIndicatorImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 77
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mTabIndicator:Lmiui/v5/widget/TabIndicator;

    invoke-interface {v0, p1}, Lmiui/v5/widget/TabIndicator;->setIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void
.end method

.method public setViewPagerBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/v5/widget/TabController;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/CooperativeViewPager;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method public setViewPagerListener(Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 244
    iput-object p1, p0, Lmiui/v5/widget/TabController;->mViewPagerListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    .line 245
    return-void
.end method
