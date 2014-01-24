.class public Lcom/miui/internal/v5/app/ViewPagerController;
.super Ljava/lang/Object;
.source "ViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

.field private mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

.field private mActionMenuChangeAnimatorObject:Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

.field private mTabListener:Landroid/app/ActionBar$TabListener;

.field private mViewPager:Lmiui/v5/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/miui/internal/v5/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V
    .locals 5
    .parameter "actionBar"
    .parameter "fm"
    .parameter "allowListAnimation"

    .prologue
    const v3, 0x60b00b5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v2, Lcom/miui/internal/v5/app/ViewPagerController$1;

    invoke-direct {v2, p0}, Lcom/miui/internal/v5/app/ViewPagerController$1;-><init>(Lcom/miui/internal/v5/app/ViewPagerController;)V

    iput-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 54
    iput-object p1, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    .line 55
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-virtual {v2}, Lcom/miui/internal/v5/app/ActionBarImpl;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-virtual {v2}, Lcom/miui/internal/v5/app/ActionBarImpl;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Lmiui/v5/view/ViewPager;

    if-eqz v2, :cond_1

    .line 59
    check-cast v1, Lmiui/v5/view/ViewPager;

    .end local v1           #view:Landroid/view/View;
    iput-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;

    .line 66
    :goto_0
    new-instance v2, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    iget-object v3, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;

    invoke-direct {v2, v0, p2, v3}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lmiui/v5/view/ViewPager;)V

    iput-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    .line 67
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;

    new-instance v3, Lcom/miui/internal/v5/app/ViewPagerController$2;

    invoke-direct {v3, p0}, Lcom/miui/internal/v5/app/ViewPagerController$2;-><init>(Lcom/miui/internal/v5/app/ViewPagerController;)V

    invoke-virtual {v2, v3}, Lmiui/v5/view/ViewPager;->setInternalPageChangeListener(Lmiui/v5/view/ViewPager$OnPageChangeListener;)Lmiui/v5/view/ViewPager$OnPageChangeListener;

    .line 104
    if-eqz p3, :cond_0

    .line 105
    new-instance v2, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;

    iget-object v3, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;

    iget-object v4, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    invoke-direct {v2, v3, v4}, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;-><init>(Lmiui/v5/view/ViewPager;Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;)V

    invoke-virtual {p0, v2}, Lcom/miui/internal/v5/app/ViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V

    .line 107
    :cond_0
    return-void

    .line 61
    .restart local v1       #view:Landroid/view/View;
    :cond_1
    new-instance v2, Lmiui/v5/view/ViewPager;

    invoke-direct {v2, v0}, Lmiui/v5/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;

    .line 62
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;

    invoke-virtual {v2, v3}, Lmiui/v5/view/ViewPager;->setId(I)V

    .line 63
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-virtual {v2}, Lcom/miui/internal/v5/app/ActionBarImpl;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/internal/v5/app/ViewPagerController;)Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/v5/app/ViewPagerController;)Lmiui/v5/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/v5/app/ViewPagerController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/v5/app/ViewPagerController;)Lcom/miui/internal/v5/app/ActionBarImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    return-object v0
.end method


# virtual methods
.method addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 7
    .parameter "tag"
    .parameter "tab"
    .parameter "index"
    .parameter
    .parameter "args"
    .parameter "hasActionMenu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 116
    .local p4, fragment:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Fragment;>;"
    move-object v0, p2

    check-cast v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->setSystemTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 117
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/v5/app/ActionBarImpl;->internalAddTab(Landroid/app/ActionBar$Tab;I)V

    .line 118
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->addFragment(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I

    move-result v0

    return v0
.end method

.method addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 6
    .parameter "tag"
    .parameter "tab"
    .parameter
    .parameter "args"
    .parameter "hasActionMenu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 110
    .local p3, fragment:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Fragment;>;"
    move-object v0, p2

    check-cast v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->setSystemTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 111
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-virtual {v0, p2}, Lcom/miui/internal/v5/app/ActionBarImpl;->internalAddTab(Landroid/app/ActionBar$Tab;)V

    .line 112
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->addFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I

    move-result v0

    return v0
.end method

.method addOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method getFragmentAt(I)Landroid/app/Fragment;
    .locals 2
    .parameter "position"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method getFragmentTabCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method getViewPagerOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;

    invoke-virtual {v0}, Lmiui/v5/view/ViewPager;->getOffscreenPageLimit()I

    move-result v0

    return v0
.end method

.method removeAllFragmentTab()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->internalRemoveAllTabs()V

    .line 140
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->removeAllFragment()V

    .line 141
    return-void
.end method

.method removeFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->removeFragment(Landroid/app/Fragment;)I

    move-result v0

    .line 153
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-virtual {v1, v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->internalRemoveTabAt(I)V

    .line 156
    :cond_0
    return-void
.end method

.method removeFragmentAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->removeFragmentAt(I)V

    .line 123
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/app/ActionBarImpl;->internalRemoveTabAt(I)V

    .line 124
    return-void
.end method

.method removeFragmentTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/app/ActionBarImpl;->internalRemoveTab(Landroid/app/ActionBar$Tab;)V

    .line 135
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->removeFragment(Landroid/app/ActionBar$Tab;)I

    .line 136
    return-void
.end method

.method removeFragmentTab(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->findPositionByTag(Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/app/ViewPagerController;->removeFragmentAt(I)V

    .line 131
    :cond_0
    return-void
.end method

.method removeOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    return-void
.end method

.method setFragmentActionMenuAt(IZ)V
    .locals 3
    .parameter "position"
    .parameter "hasActionMenu"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->setFragmentActionMenuAt(IZ)V

    .line 160
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;

    invoke-virtual {v0}, Lmiui/v5/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionMenuChangeAnimatorObject:Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;

    invoke-direct {v0, p0}, Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;-><init>(Lcom/miui/internal/v5/app/ViewPagerController;)V

    iput-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionMenuChangeAnimatorObject:Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;

    .line 163
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionMenuChangeAnimatorObject:Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;

    const-string v1, "Value"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

    .line 164
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;

    invoke-virtual {v1}, Lmiui/v5/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionMenuChangeAnimatorObject:Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;->reset(IZ)V

    .line 169
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 171
    :cond_1
    return-void

    .line 163
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method setViewPagerOffscreenPageLimit(I)V
    .locals 1
    .parameter "limit"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerController;->mViewPager:Lmiui/v5/view/ViewPager;

    invoke-virtual {v0, p1}, Lmiui/v5/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 192
    return-void
.end method
