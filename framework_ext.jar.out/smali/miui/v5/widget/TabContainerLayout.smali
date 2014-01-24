.class public Lmiui/v5/widget/TabContainerLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabContainerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/TabContainerLayout$TabImpl;,
        Lmiui/v5/widget/TabContainerLayout$TransactionFractory;,
        Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;,
        Lmiui/v5/widget/TabContainerLayout$DefaultScrollStrategy;,
        Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;,
        Lmiui/v5/widget/TabContainerLayout$TabViewImpl;,
        Lmiui/v5/widget/TabContainerLayout$TabViewStyle;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mInteractive:Z

.field mMaxVisibleTabCount:I

.field mScrollStrategy:Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;

.field private mSelectedTab:Landroid/app/ActionBar$Tab;

.field mTabBackgroundResId:I

.field final mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field mTabViewStyle:Lmiui/v5/widget/TabContainerLayout$TabViewStyle;

.field mTabWidth:I

.field private mTabWidthChangedListener:Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;

.field private mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

.field final mWrapLayout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/v5/widget/TabContainerLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/v5/widget/TabContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/v5/widget/TabContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v5, p0, Lmiui/v5/widget/TabContainerLayout;->mInteractive:Z

    .line 447
    iput-object v4, p0, Lmiui/v5/widget/TabContainerLayout;->mTabViewStyle:Lmiui/v5/widget/TabContainerLayout$TabViewStyle;

    .line 56
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmiui/v5/widget/TabContainerLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 57
    invoke-virtual {p0, v4}, Lmiui/v5/widget/TabContainerLayout;->setScrollStrategy(Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;)V

    .line 58
    invoke-static {p1}, Lmiui/v5/widget/MiuiViewConfiguration;->get(Landroid/content/Context;)Lmiui/v5/widget/MiuiViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/v5/widget/MiuiViewConfiguration;->getMaxVisibleTabCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/v5/widget/TabContainerLayout;->setMaxVisibleTabCount(I)V

    .line 59
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, wrap:Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/LinearLayout;

    const v2, 0x601009f

    invoke-direct {v0, p1, v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    .local v0, tabLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 63
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 64
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iput-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    .line 68
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lmiui/v5/widget/TabContainerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iput-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mWrapLayout:Landroid/widget/FrameLayout;

    .line 71
    return-void
.end method

.method private animateToTab(Landroid/view/View;)V
    .locals 1
    .parameter "tabView"

    .prologue
    .line 394
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 398
    :cond_0
    new-instance v0, Lmiui/v5/widget/TabContainerLayout$1;

    invoke-direct {v0, p0, p1}, Lmiui/v5/widget/TabContainerLayout$1;-><init>(Lmiui/v5/widget/TabContainerLayout;Landroid/view/View;)V

    iput-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    .line 412
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->post(Ljava/lang/Runnable;)Z

    .line 413
    return-void
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    .locals 2
    .parameter "tab"

    .prologue
    .line 416
    new-instance v0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;-><init>(Lmiui/v5/widget/TabContainerLayout;Landroid/content/Context;Landroid/app/ActionBar$Tab;)V

    .line 417
    .local v0, tabView:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->setFocusable(Z)V

    .line 418
    invoke-virtual {v0, p0}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    return-object v0
.end method

.method private doSelectTab(Landroid/app/ActionBar$Tab;)Landroid/app/ActionBar$Tab;
    .locals 4
    .parameter "tab"

    .prologue
    .line 322
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    .line 324
    .local v1, oldSelected:Landroid/app/ActionBar$Tab;
    if-ne p1, v1, :cond_0

    .line 325
    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->findTabPosition(Landroid/app/ActionBar$Tab;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 331
    .local v0, newTabView:Landroid/view/View;
    :goto_0
    invoke-direct {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->animateToTab(Landroid/view/View;)V

    .line 333
    return-object v1

    .line 327
    .end local v0           #newTabView:Landroid/view/View;
    :cond_0
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    .line 328
    invoke-direct {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->selectedTabView(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    move-result-object v0

    .restart local v0       #newTabView:Landroid/view/View;
    goto :goto_0
.end method

.method private selectedTabView(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    .locals 5
    .parameter "tab"

    .prologue
    .line 423
    const/4 v2, 0x0

    .line 424
    .local v2, selected:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 425
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 426
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .line 427
    .local v3, tv:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    invoke-virtual {v3}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 428
    move-object v2, v3

    .line 429
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->setSelected(Z)V

    .line 425
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->setSelected(Z)V

    goto :goto_1

    .line 435
    .end local v3           #tv:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .parameter "tab"
    .parameter "position"
    .parameter "selected"

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->createTabView(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    move-result-object v0

    .line 221
    .local v0, tabView:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 224
    if-eqz p3, :cond_0

    .line 225
    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->selectTab(Landroid/app/ActionBar$Tab;)Z

    .line 227
    :cond_0
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .parameter "tab"
    .parameter "selected"

    .prologue
    .line 210
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lmiui/v5/widget/TabContainerLayout;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 211
    return-void
.end method

.method public attachIndicator(Lmiui/v5/widget/TabIndicator;)V
    .locals 0
    .parameter "indicator"

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1, p0}, Lmiui/v5/widget/TabIndicator;->attach(Lmiui/v5/widget/TabContainerLayout;)V

    .line 77
    :cond_0
    return-void
.end method

.method public detachIndicator(Lmiui/v5/widget/TabIndicator;)V
    .locals 0
    .parameter "indicator"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-interface {p1}, Lmiui/v5/widget/TabIndicator;->detach()V

    .line 83
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 440
    iget-boolean v0, p0, Lmiui/v5/widget/TabContainerLayout;->mInteractive:Z

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public findCurrentTabPos()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->findTabPosition(Landroid/app/ActionBar$Tab;)I

    move-result v0

    return v0
.end method

.method public findTabPosition(Landroid/app/ActionBar$Tab;)I
    .locals 5
    .parameter "tab"

    .prologue
    .line 360
    const/4 v2, -0x1

    .line 361
    .local v2, index:I
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 362
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 363
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .line 364
    .local v3, tv:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    invoke-virtual {v3}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 365
    move v2, v1

    .line 370
    .end local v3           #tv:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    :cond_0
    return v2

    .line 362
    .restart local v3       #tv:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBackgroundHeight()I
    .locals 2

    .prologue
    .line 180
    invoke-static {p0}, Lmiui/v5/widget/Views;->getBackgroundHeight(Landroid/view/View;)I

    move-result v0

    .line 181
    .local v0, height:I
    if-gtz v0, :cond_0

    .line 182
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lmiui/v5/widget/Views;->getBackgroundHeight(Landroid/view/View;)I

    move-result v0

    .line 185
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public getIndicatorContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mWrapLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method getOffsetX()I
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 2
    .parameter "position"

    .prologue
    .line 342
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .line 343
    .local v0, tv:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getTabWidth()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidth:I

    return v0
.end method

.method public newTab(Landroid/app/ActionBar$TabListener;)Lmiui/v5/widget/TabContainerLayout$TabImpl;
    .locals 1
    .parameter "l"

    .prologue
    .line 201
    new-instance v0, Lmiui/v5/widget/TabContainerLayout$TabImpl;

    invoke-direct {v0, p0, p1}, Lmiui/v5/widget/TabContainerLayout$TabImpl;-><init>(Lmiui/v5/widget/TabContainerLayout;Landroid/app/ActionBar$TabListener;)V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 139
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->post(Ljava/lang/Runnable;)Z

    .line 143
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 155
    check-cast p1, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .end local p1
    invoke-virtual {p1}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 156
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 157
    invoke-direct {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->selectedTabView(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .line 158
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 148
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x1

    const/high16 v9, 0x4000

    .line 106
    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->getBackgroundHeight()I

    move-result v8

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 109
    .local v6, widthMode:I
    if-ne v6, v9, :cond_3

    move v1, v7

    .line 110
    .local v1, lockedExpanded:Z
    :goto_0
    invoke-virtual {p0, v1}, Lmiui/v5/widget/TabContainerLayout;->setFillViewport(Z)V

    .line 112
    iget v5, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidth:I

    .line 113
    .local v5, tabWidth:I
    iget-object v8, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 114
    .local v0, childCount:I
    if-le v0, v7, :cond_4

    if-eq v6, v9, :cond_0

    const/high16 v7, -0x8000

    if-ne v6, v7, :cond_4

    .line 116
    :cond_0
    iget v7, p0, Lmiui/v5/widget/TabContainerLayout;->mMaxVisibleTabCount:I

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 117
    .local v4, tabCount:I
    iget-object v7, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    add-int v3, v7, v8

    .line 118
    .local v3, padding:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    sub-int/2addr v7, v3

    div-int v5, v7, v4

    .line 123
    .end local v3           #padding:I
    .end local v4           #tabCount:I
    :goto_1
    iget v7, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidth:I

    if-eq v7, v5, :cond_1

    .line 124
    iput v5, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidth:I

    .line 125
    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->onTabWidthChanged()V

    .line 128
    :cond_1
    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->getMeasuredWidth()I

    move-result v2

    .line 129
    .local v2, oldWidth:I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 130
    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->getMeasuredWidth()I

    move-result v7

    if-eq v2, v7, :cond_2

    .line 132
    iget-object v7, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v7}, Lmiui/v5/widget/TabContainerLayout;->selectTab(Landroid/app/ActionBar$Tab;)Z

    .line 134
    :cond_2
    return-void

    .line 109
    .end local v0           #childCount:I
    .end local v1           #lockedExpanded:Z
    .end local v2           #oldWidth:I
    .end local v5           #tabWidth:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 120
    .restart local v0       #childCount:I
    .restart local v1       #lockedExpanded:Z
    .restart local v5       #tabWidth:I
    :cond_4
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 606
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 607
    const/4 v0, 0x0

    .line 609
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onTabReselected(Landroid/app/ActionBar$Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 613
    if-nez p1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    .line 617
    check-cast v2, Lmiui/v5/widget/TabContainerLayout$TabImpl;

    invoke-virtual {v2}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    .line 618
    .local v1, l:Landroid/app/ActionBar$TabListener;
    if-eqz v1, :cond_0

    .line 619
    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    invoke-interface {v2}, Lmiui/v5/widget/TabContainerLayout$TransactionFractory;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 620
    .local v0, ft:Landroid/app/FragmentTransaction;
    :goto_1
    invoke-interface {v1, p1, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 621
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 622
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 619
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onTabSelected(Landroid/app/ActionBar$Tab;)V
    .locals 5
    .parameter "tab"

    .prologue
    .line 584
    if-nez p1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 588
    check-cast v3, Lmiui/v5/widget/TabContainerLayout$TabImpl;

    invoke-virtual {v3}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    .line 589
    .local v1, l:Landroid/app/ActionBar$TabListener;
    if-eqz v1, :cond_2

    .line 590
    iget-object v3, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    invoke-interface {v3}, Lmiui/v5/widget/TabContainerLayout$TransactionFractory;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 591
    .local v0, ft:Landroid/app/FragmentTransaction;
    :goto_1
    invoke-interface {v1, p1, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 592
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 593
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 596
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_2
    iget-object v3, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 597
    .local v2, tabView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 598
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 590
    .end local v2           #tabView:Landroid/view/View;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onTabUnselected(Landroid/app/ActionBar$Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 569
    if-nez p1, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    .line 573
    check-cast v2, Lmiui/v5/widget/TabContainerLayout$TabImpl;

    invoke-virtual {v2}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    .line 574
    .local v1, l:Landroid/app/ActionBar$TabListener;
    if-eqz v1, :cond_0

    .line 575
    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    invoke-interface {v2}, Lmiui/v5/widget/TabContainerLayout$TransactionFractory;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 576
    .local v0, ft:Landroid/app/FragmentTransaction;
    :goto_1
    invoke-interface {v1, p1, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 577
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 578
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 575
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onTabWidthChanged()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidthChangedListener:Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidthChangedListener:Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;

    invoke-interface {v0, p0}, Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;->onTabWidthChanged(Lmiui/v5/widget/TabContainerLayout;)V

    .line 553
    :cond_0
    return-void
.end method

.method public removeAllTabs()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    .line 277
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)Z
    .locals 3
    .parameter "tab"

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, selectChanged:Z
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    if-ne v1, p1, :cond_0

    if-eqz p1, :cond_0

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    .line 256
    const/4 v0, 0x1

    .line 259
    :cond_0
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->findTabPosition(Landroid/app/ActionBar$Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 260
    return v0
.end method

.method public removeTabAt(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->removeTab(Landroid/app/ActionBar$Tab;)Z

    move-result v0

    return v0
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)Z
    .locals 2
    .parameter "tab"

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, changed:Z
    invoke-direct {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->doSelectTab(Landroid/app/ActionBar$Tab;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 305
    .local v1, oldSelected:Landroid/app/ActionBar$Tab;
    if-ne p1, v1, :cond_0

    .line 306
    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->onTabReselected(Landroid/app/ActionBar$Tab;)V

    .line 313
    :goto_0
    return v0

    .line 308
    :cond_0
    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, v1}, Lmiui/v5/widget/TabContainerLayout;->onTabUnselected(Landroid/app/ActionBar$Tab;)V

    .line 310
    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->onTabSelected(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method public selectTabAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->selectTab(Landroid/app/ActionBar$Tab;)Z

    .line 295
    return-void
.end method

.method public setInteractive(Z)V
    .locals 0
    .parameter "interactive"

    .prologue
    .line 90
    iput-boolean p1, p0, Lmiui/v5/widget/TabContainerLayout;->mInteractive:Z

    .line 91
    return-void
.end method

.method public setMaxVisibleTabCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 94
    if-gtz p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count > 0 is need! count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget v0, p0, Lmiui/v5/widget/TabContainerLayout;->mMaxVisibleTabCount:I

    if-eq v0, p1, :cond_1

    .line 99
    iput p1, p0, Lmiui/v5/widget/TabContainerLayout;->mMaxVisibleTabCount:I

    .line 100
    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->requestLayout()V

    .line 102
    :cond_1
    return-void
.end method

.method public setScrollStrategy(Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;)V
    .locals 1
    .parameter "strategy"

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout;->mScrollStrategy:Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Lmiui/v5/widget/TabContainerLayout$DefaultScrollStrategy;

    invoke-direct {v0}, Lmiui/v5/widget/TabContainerLayout$DefaultScrollStrategy;-><init>()V

    iput-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mScrollStrategy:Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;

    goto :goto_0
.end method

.method public setTabBackground(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 164
    iput p1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabBackgroundResId:I

    .line 165
    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->getTabCount()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 166
    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->updateTabAt(I)V

    .line 165
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public setTabLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 175
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->requestLayout()V

    .line 177
    return-void
.end method

.method public setTabViewStyle(Lmiui/v5/widget/TabContainerLayout$TabViewStyle;)V
    .locals 0
    .parameter "style"

    .prologue
    .line 450
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabViewStyle:Lmiui/v5/widget/TabContainerLayout$TabViewStyle;

    .line 451
    return-void
.end method

.method setTabWidthChangedListener(Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 556
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidthChangedListener:Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;

    .line 557
    return-void
.end method

.method public setTransactionFractory(Lmiui/v5/widget/TabContainerLayout$TransactionFractory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 565
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    .line 566
    return-void
.end method

.method public updateTabAt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 234
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .line 235
    .local v0, tabView:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->update()V

    .line 238
    :cond_0
    return-void
.end method

.method public updateTabPosition()V
    .locals 4

    .prologue
    .line 241
    iget-object v3, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 242
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget-object v3, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .line 244
    .local v2, tabView:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    invoke-virtual {v2}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    check-cast v3, Lmiui/v5/widget/TabContainerLayout$TabImpl;

    invoke-virtual {v3, v1}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->setPosition(I)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v2           #tabView:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    :cond_0
    return-void
.end method
