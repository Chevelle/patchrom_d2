.class Lcom/miui/internal/v5/app/ViewPagerController$1;
.super Ljava/lang/Object;
.source "ViewPagerController.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/app/ViewPagerController;
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
    .line 28
    iput-object p1, p0, Lcom/miui/internal/v5/app/ViewPagerController$1;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 47
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 4
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 35
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController$1;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;
    invoke-static {v2}, Lcom/miui/internal/v5/app/ViewPagerController;->access$000(Lcom/miui/internal/v5/app/ViewPagerController;)Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result v1

    .line 36
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 37
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController$1;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;
    invoke-static {v2}, Lcom/miui/internal/v5/app/ViewPagerController;->access$000(Lcom/miui/internal/v5/app/ViewPagerController;)Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 38
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController$1;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;
    invoke-static {v2}, Lcom/miui/internal/v5/app/ViewPagerController;->access$100(Lcom/miui/internal/v5/app/ViewPagerController;)Lmiui/v5/view/ViewPager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lmiui/v5/view/ViewPager;->setCurrentItem(IZ)V

    .line 42
    :cond_0
    return-void

    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 31
    return-void
.end method
