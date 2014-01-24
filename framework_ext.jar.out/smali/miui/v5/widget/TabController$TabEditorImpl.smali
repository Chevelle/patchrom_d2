.class Lmiui/v5/widget/TabController$TabEditorImpl;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Lmiui/v5/widget/TabController$TabEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/TabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabEditorImpl"
.end annotation


# instance fields
.field private final mCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/v5/widget/TabController$TabEditCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/v5/widget/TabController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/v5/widget/TabController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/widget/TabController$TabEditorImpl;->mCommands:Ljava/util/List;

    .line 452
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/v5/widget/TabController$TabEditorImpl;->mTabControllerRef:Ljava/lang/ref/WeakReference;

    .line 453
    return-void
.end method


# virtual methods
.method public add(Lmiui/v5/widget/TabController$TabEditCommand;)Lmiui/v5/widget/TabController$TabEditor;
    .locals 1
    .parameter "command"

    .prologue
    .line 457
    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabEditorImpl;->mCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;)Lmiui/v5/widget/TabController$TabEditor;
    .locals 2
    .parameter "tab"
    .parameter "fragment"

    .prologue
    .line 465
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lmiui/v5/widget/TabController$TabEditorImpl;->addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Ljava/lang/String;Z)Lmiui/v5/widget/TabController$TabEditor;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Ljava/lang/String;)Lmiui/v5/widget/TabController$TabEditor;
    .locals 1
    .parameter "tab"
    .parameter "fragment"
    .parameter "fragmentTag"

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/v5/widget/TabController$TabEditorImpl;->addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Ljava/lang/String;Z)Lmiui/v5/widget/TabController$TabEditor;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Ljava/lang/String;Z)Lmiui/v5/widget/TabController$TabEditor;
    .locals 3
    .parameter "tab"
    .parameter "fragment"
    .parameter "fragmentTag"
    .parameter "isMenuBarEnabled"

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tab and fragment cannot be null! tab="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    new-instance v0, Lmiui/v5/widget/TabController$TabEditAdd;

    invoke-direct {v0, p1, p2, p3, p4}, Lmiui/v5/widget/TabController$TabEditAdd;-><init>(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabController$TabEditorImpl;->add(Lmiui/v5/widget/TabController$TabEditCommand;)Lmiui/v5/widget/TabController$TabEditor;

    .line 486
    return-object p0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Z)Lmiui/v5/widget/TabController$TabEditor;
    .locals 1
    .parameter "tab"
    .parameter "fragment"
    .parameter "isMenuBarEnabled"

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lmiui/v5/widget/TabController$TabEditorImpl;->addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Ljava/lang/String;Z)Lmiui/v5/widget/TabController$TabEditor;

    move-result-object v0

    return-object v0
.end method

.method public commit()Z
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 502
    iget-object v13, p0, Lmiui/v5/widget/TabController$TabEditorImpl;->mTabControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/v5/widget/TabController;

    .line 503
    .local v6, controller:Lmiui/v5/widget/TabController;
    if-nez v6, :cond_0

    .line 539
    :goto_0
    return v11

    .line 507
    :cond_0
    iget-object v13, p0, Lmiui/v5/widget/TabController$TabEditorImpl;->mCommands:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    .line 508
    .local v7, count:I
    if-gtz v7, :cond_1

    move v11, v12

    .line 509
    goto :goto_0

    .line 512
    :cond_1
    iget-object v2, v6, Lmiui/v5/widget/TabController;->mViewPager:Lmiui/v5/widget/CooperativeViewPager;

    .line 513
    .local v2, pager:Lmiui/v5/android/support/view/ViewPager;
    iget-object v3, v6, Lmiui/v5/widget/TabController;->mAdapter:Lmiui/v5/widget/TabController$DynamicPagerAdapter;

    .line 514
    .local v3, adapter:Lmiui/v5/widget/TabController$DynamicPagerAdapter;
    invoke-virtual {v3}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 515
    .local v5, manager:Landroid/app/FragmentManager;
    iget-object v1, v6, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    .line 516
    .local v1, containter:Lmiui/v5/widget/TabContainerLayout;
    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 517
    .local v4, transaction:Landroid/app/FragmentTransaction;
    iget-object v13, p0, Lmiui/v5/widget/TabController$TabEditorImpl;->mCommands:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/TabController$TabEditCommand;

    .line 518
    .local v0, command:Lmiui/v5/widget/TabController$TabEditCommand;
    invoke-interface/range {v0 .. v5}, Lmiui/v5/widget/TabController$TabEditCommand;->execute(Lmiui/v5/widget/TabContainerLayout;Lmiui/v5/android/support/view/ViewPager;Lmiui/v5/widget/TabController$DynamicPagerAdapter;Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)Z

    goto :goto_1

    .line 521
    .end local v0           #command:Lmiui/v5/widget/TabController$TabEditCommand;
    :cond_2
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 522
    invoke-virtual {v5}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 523
    invoke-virtual {v3}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->notifyDataSetChanged()V

    .line 525
    const/4 v10, 0x0

    .line 526
    .local v10, selectedChanged:Z
    invoke-virtual {v1}, Lmiui/v5/widget/TabContainerLayout;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v13

    if-nez v13, :cond_3

    .line 527
    invoke-virtual {v1, v11}, Lmiui/v5/widget/TabContainerLayout;->selectTabAt(I)V

    .line 528
    const/4 v10, 0x1

    .line 531
    :cond_3
    iget-object v9, v6, Lmiui/v5/widget/TabController;->mAdapterChangedListener:Lmiui/v5/widget/TabController$PagerAdapterChangedListener;

    .line 532
    .local v9, l:Lmiui/v5/widget/TabController$PagerAdapterChangedListener;
    if-eqz v9, :cond_4

    .line 533
    invoke-interface {v9, v2, v10}, Lmiui/v5/widget/TabController$PagerAdapterChangedListener;->onAdapterChanged(Lmiui/v5/android/support/view/ViewPager;Z)V

    .line 536
    :cond_4
    invoke-virtual {v6}, Lmiui/v5/widget/TabController;->invalideFragmentMenu()V

    .line 537
    invoke-virtual {v1}, Lmiui/v5/widget/TabContainerLayout;->updateTabPosition()V

    .line 538
    iget-object v11, p0, Lmiui/v5/widget/TabController$TabEditorImpl;->mCommands:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    move v11, v12

    .line 539
    goto :goto_0
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabController$TabEditor;
    .locals 3
    .parameter "tab"

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 492
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tab and fragment cannot be null! tab="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    new-instance v0, Lmiui/v5/widget/TabController$TabEditRemove;

    invoke-direct {v0, p1}, Lmiui/v5/widget/TabController$TabEditRemove;-><init>(Landroid/app/ActionBar$Tab;)V

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabController$TabEditorImpl;->add(Lmiui/v5/widget/TabController$TabEditCommand;)Lmiui/v5/widget/TabController$TabEditor;

    .line 497
    return-object p0
.end method
