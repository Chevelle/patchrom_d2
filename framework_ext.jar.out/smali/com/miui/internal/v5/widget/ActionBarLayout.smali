.class public Lcom/miui/internal/v5/widget/ActionBarLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarLayout.java"

# interfaces
.implements Lcom/miui/internal/v5/widget/IActionBarLayout;


# instance fields
.field protected mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

.field protected mActionBarContextView:Lcom/miui/internal/v5/widget/ActionBarContextView;

.field protected mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

.field protected mContentView:Landroid/view/ViewGroup;

.field protected mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

.field private mUpdateContentMargin:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/v5/widget/ActionBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/v5/widget/ActionBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mUpdateContentMargin:Z

    .line 35
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 172
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/v5/widget/ActionBarView;->hideOverflowMenu()Z

    move-result v2

    or-int/2addr v0, v2

    .line 173
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContextView:Lcom/miui/internal/v5/widget/ActionBarContextView;

    invoke-virtual {v2}, Lcom/miui/internal/v5/widget/ActionBarContextView;->hideOverflowMenu()Z

    move-result v2

    or-int/2addr v0, v2

    .line 176
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getActionBarHeight()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/ActionBarView;->getMeasuredHeight()I

    move-result v0

    .line 115
    .local v0, height:I
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, tabContainer:Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 117
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 120
    :cond_2
    if-lez v0, :cond_0

    .line 121
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/util/UiUtils;->getActionBarOverlayHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 122
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getSplitActionBarHeight()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 130
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    move v2, v7

    .line 165
    :cond_0
    :goto_0
    return v2

    .line 134
    :cond_1
    const/4 v2, 0x0

    .line 135
    .local v2, height:I
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarView;->isSplitActionBar()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarView;->getActionBar()Lcom/miui/internal/v5/app/ActionBarImpl;

    move-result-object v0

    .line 138
    .local v0, actionBarImpl:Lcom/miui/internal/v5/app/ActionBarImpl;
    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v6

    if-nez v6, :cond_3

    .line 139
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 140
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 141
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v6, v3}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 142
    .local v5, view:Landroid/view/View;
    instance-of v6, v5, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    if-eqz v6, :cond_2

    move-object v6, v5

    .line 143
    check-cast v6, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v6}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getMenuItems()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 145
    check-cast v5, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {v5}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainerHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 140
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    .end local v3           #i:I
    :cond_3
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarView;->getActionMenuView()Lcom/miui/internal/v5/view/menu/ActionMenuView;

    move-result-object v1

    .line 153
    .local v1, actionMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContextView:Lcom/miui/internal/v5/widget/ActionBarContextView;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarContextView;->getAnimatedVisibility()I

    move-result v6

    if-nez v6, :cond_5

    const/4 v4, 0x1

    .line 154
    .local v4, isContextViewVisible:Z
    :goto_2
    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getMenuItems()I

    move-result v6

    if-nez v6, :cond_4

    .line 155
    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainerHeight()I

    move-result v2

    .line 159
    .end local v1           #actionMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    .end local v4           #isContextViewVisible:Z
    :cond_4
    if-lez v2, :cond_0

    .line 160
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lmiui/util/UiUtils;->getSplitActionBarOverlayHeight(Landroid/content/Context;)I

    move-result v6

    sub-int/2addr v2, v6

    .line 161
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .restart local v1       #actionMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    :cond_5
    move v4, v7

    .line 153
    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 46
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContext:Landroid/content/Context;

    const v1, 0x60b0007

    invoke-static {v0, v1}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 49
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContext:Landroid/content/Context;

    const v1, 0x60b0027

    invoke-static {v0, v1}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 52
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContext:Landroid/content/Context;

    const v2, 0x60b0009

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContextView:Lcom/miui/internal/v5/widget/ActionBarContextView;

    .line 56
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContext:Landroid/content/Context;

    const v2, 0x60b0006

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    .line 59
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 60
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->getChildCount()I

    move-result v10

    .line 66
    .local v10, count:I
    const/4 v13, 0x0

    .line 67
    .local v13, maxHeight:I
    const/4 v14, 0x0

    .line 68
    .local v14, maxWidth:I
    const/4 v9, 0x0

    .line 71
    .local v9, childState:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v10, :cond_1

    .line 72
    invoke-virtual {p0, v11}, Lcom/miui/internal/v5/widget/ActionBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 73
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eq v2, v1, :cond_0

    .line 74
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/internal/v5/widget/ActionBarLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 75
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    .local v12, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/miui/internal/v5/widget/ActionBarLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 71
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 85
    .end local v2           #child:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    .restart local v12       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mUpdateContentMargin:Z

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->getActionBarHeight()I

    move-result v1

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 88
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->getSplitActionBarHeight()I

    move-result v1

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 90
    :cond_2
    iget-object v4, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/miui/internal/v5/widget/ActionBarLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 91
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 93
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 95
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/miui/internal/v5/widget/ActionBarLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 99
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 100
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 103
    move/from16 v0, p1

    invoke-static {v14, v0, v9}, Lcom/miui/internal/v5/widget/ActionBarLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v3, v9, 0x10

    move/from16 v0, p2

    invoke-static {v13, v0, v3}, Lcom/miui/internal/v5/widget/ActionBarLayout;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/internal/v5/widget/ActionBarLayout;->setMeasuredDimension(II)V

    .line 106
    return-void
.end method

.method public setUpdateContentMarginEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/miui/internal/v5/widget/ActionBarLayout;->mUpdateContentMargin:Z

    .line 40
    return-void
.end method
