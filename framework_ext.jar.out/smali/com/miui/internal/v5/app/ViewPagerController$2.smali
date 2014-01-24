.class Lcom/miui/internal/v5/app/ViewPagerController$2;
.super Ljava/lang/Object;
.source "ViewPagerController.java"

# interfaces
.implements Lmiui/v5/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/v5/app/ViewPagerController;-><init>(Lcom/miui/internal/v5/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/v5/app/ViewPagerController;


# direct methods
.method constructor <init>(Lcom/miui/internal/v5/app/ViewPagerController;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 96
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/internal/v5/app/ViewPagerController;->access$200(Lcom/miui/internal/v5/app/ViewPagerController;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/internal/v5/app/ViewPagerController;->access$200(Lcom/miui/internal/v5/app/ViewPagerController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;

    .line 98
    .local v1, listener:Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;
    invoke-interface {v1, p1}, Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 101
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 70
    iget-object v4, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;
    invoke-static {v4}, Lcom/miui/internal/v5/app/ViewPagerController;->access$000(Lcom/miui/internal/v5/app/ViewPagerController;)Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->hasActionMenu(I)Z

    move-result v0

    .line 71
    .local v0, fromHasActionMenu:Z
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;
    invoke-static {v5}, Lcom/miui/internal/v5/app/ViewPagerController;->access$000(Lcom/miui/internal/v5/app/ViewPagerController;)Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;
    invoke-static {v4}, Lcom/miui/internal/v5/app/ViewPagerController;->access$000(Lcom/miui/internal/v5/app/ViewPagerController;)Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->hasActionMenu(I)Z

    move-result v3

    .line 74
    .local v3, toHasActionMenu:Z
    :goto_0
    iget-object v4, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/miui/internal/v5/app/ViewPagerController;->access$200(Lcom/miui/internal/v5/app/ViewPagerController;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 75
    iget-object v4, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/miui/internal/v5/app/ViewPagerController;->access$200(Lcom/miui/internal/v5/app/ViewPagerController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;

    .line 76
    .local v2, listener:Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;
    invoke-interface {v2, p1, p2, v0, v3}, Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    goto :goto_1

    .line 71
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;
    .end local v3           #toHasActionMenu:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 79
    .restart local v3       #toHasActionMenu:Z
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 83
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;
    invoke-static {v2}, Lcom/miui/internal/v5/app/ViewPagerController;->access$300(Lcom/miui/internal/v5/app/ViewPagerController;)Lcom/miui/internal/v5/app/ActionBarImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/internal/v5/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 85
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;
    invoke-static {v2}, Lcom/miui/internal/v5/app/ViewPagerController;->access$000(Lcom/miui/internal/v5/app/ViewPagerController;)Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;
    invoke-static {v3}, Lcom/miui/internal/v5/app/ViewPagerController;->access$100(Lcom/miui/internal/v5/app/ViewPagerController;)Lmiui/v5/view/ViewPager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;
    invoke-static {v4}, Lcom/miui/internal/v5/app/ViewPagerController;->access$000(Lcom/miui/internal/v5/app/ViewPagerController;)Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/internal/v5/app/ViewPagerController;->access$200(Lcom/miui/internal/v5/app/ViewPagerController;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController$2;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/internal/v5/app/ViewPagerController;->access$200(Lcom/miui/internal/v5/app/ViewPagerController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;

    .line 89
    .local v1, listener:Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;
    invoke-interface {v1, p1}, Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 92
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;
    :cond_0
    return-void
.end method
