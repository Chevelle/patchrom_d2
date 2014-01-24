.class public Lmiui/v5/app/MiuiActivity;
.super Landroid/app/Activity;
.source "MiuiActivity.java"

# interfaces
.implements Lmiui/v5/view/MiuiActionMode$ActionModeListener;
.implements Lmiui/v5/widget/menubar/MenuBar$Callback;


# instance fields
.field private mBottomBarContainer:Landroid/widget/FrameLayout;

.field private final mBottomHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mContentContainer:Landroid/widget/FrameLayout;

.field private mDecoratedView:Landroid/view/View;

.field mIconMenuBarPresenter:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

.field private mIsTopPlaceholderEnabled:Z

.field private final mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

.field private mMenuBarMode:I

.field mTitleBar:Lmiui/v5/app/TitleBar;

.field private mTitleBarContainer:Landroid/view/ViewGroup;

.field mTitleView:Landroid/view/View;

.field private mTopPlaceholderHeight:I

.field private mWrapper:Lmiui/v5/view/ActionModeWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lmiui/v5/app/MiuiActivity;->mMenuBarMode:I

    .line 385
    new-instance v0, Lmiui/v5/app/MiuiActivity$1;

    invoke-direct {v0, p0}, Lmiui/v5/app/MiuiActivity$1;-><init>(Lmiui/v5/app/MiuiActivity;)V

    iput-object v0, p0, Lmiui/v5/app/MiuiActivity;->mBottomHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 461
    new-instance v0, Lmiui/v5/app/MiuiActivity$2;

    invoke-direct {v0, p0}, Lmiui/v5/app/MiuiActivity$2;-><init>(Lmiui/v5/app/MiuiActivity;)V

    iput-object v0, p0, Lmiui/v5/app/MiuiActivity;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method private initBottomBarTopLine()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->getBottomPlaceholderHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/v5/view/ActionModeWrapper;->initBottomBarTopLine(I)V

    .line 455
    return-void
.end method

.method private setBottomBarTopLineVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 458
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    invoke-virtual {v0, p1}, Lmiui/v5/view/ActionModeWrapper;->setBottomBarTopLineVisible(Z)V

    .line 459
    return-void
.end method


# virtual methods
.method public addLayoutObserver(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 425
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 426
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 427
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->updateContentBorder()V

    .line 428
    return-void
.end method

.method protected getBottomPlaceholderHeight()I
    .locals 2

    .prologue
    .line 351
    const v1, 0x6010052

    invoke-static {p0, v1}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 352
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCurrentPagerItem()Lmiui/v5/app/MiuiViewPagerItem;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayoutObserver()Lmiui/v5/app/LayoutObserver;
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuBar()Lmiui/v5/widget/menubar/MenuBar;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    return-object v0
.end method

.method public getTitleBar()Lmiui/v5/app/TitleBar;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBar:Lmiui/v5/app/TitleBar;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method protected getTopPlaceholderHeight()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lmiui/v5/app/MiuiActivity;->mTopPlaceholderHeight:I

    return v0
.end method

.method public getWrapperView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    return-object v0
.end method

.method protected initMenuBar(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "container"

    .prologue
    .line 99
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lmiui/v5/widget/menubar/MenuBar;

    invoke-direct {v0, p0}, Lmiui/v5/widget/menubar/MenuBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/v5/app/MiuiActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    .line 101
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0, p0}, Lmiui/v5/widget/menubar/MenuBar;->setCallback(Lmiui/v5/widget/menubar/MenuBar$Callback;)V

    .line 103
    new-instance v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    iget-object v2, p0, Lmiui/v5/app/MiuiActivity;->mBottomBarContainer:Landroid/widget/FrameLayout;

    const v3, 0x6030030

    const v4, 0x6030031

    const v5, 0x6030032

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object v0, p0, Lmiui/v5/app/MiuiActivity;->mIconMenuBarPresenter:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    .line 106
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mIconMenuBarPresenter:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    const v1, 0x601004d

    invoke-static {p0, v1}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->setMoreIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mIconMenuBarPresenter:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    const v1, 0x601007e

    invoke-static {p0, v1}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->setPrimaryMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mIconMenuBarPresenter:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/MenuBar;->addMenuPresenter(Lmiui/v5/widget/menubar/MenuBarPresenter;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected isBottomPlaceholderEnabled()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTopPlaceholderEnabled()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lmiui/v5/app/MiuiActivity;->mIsTopPlaceholderEnabled:Z

    return v0
.end method

.method public onActionModeFinished(Lmiui/v5/view/MiuiActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 203
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->updateContentBorder()V

    .line 204
    return-void
.end method

.method public onActionModeStarted(Lmiui/v5/view/MiuiActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/v5/app/MiuiActivity;->setBottomBarTopLineVisible(Z)V

    .line 210
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/MenuBar;->expand(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x6030022

    invoke-virtual {p0, v1}, Lmiui/v5/app/MiuiActivity;->setContentView(I)V

    .line 52
    const v1, 0x60b005b

    invoke-virtual {p0, v1}, Lmiui/v5/app/MiuiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/v5/view/ActionModeWrapper;

    iput-object v1, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    .line 53
    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    invoke-virtual {v1, p0}, Lmiui/v5/view/ActionModeWrapper;->setActionModeListener(Lmiui/v5/view/MiuiActionMode$ActionModeListener;)V

    .line 54
    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    const v3, 0x60b005c

    invoke-virtual {v1, v3}, Lmiui/v5/view/ActionModeWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    .line 55
    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    const v3, 0x60b005a

    invoke-virtual {v1, v3}, Lmiui/v5/view/ActionModeWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lmiui/v5/app/MiuiActivity;->mBottomBarContainer:Landroid/widget/FrameLayout;

    .line 56
    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mBottomBarContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lmiui/v5/app/MiuiActivity;->mBottomHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 57
    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    const v3, 0x60b00ae

    invoke-virtual {v1, v3}, Lmiui/v5/view/ActionModeWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmiui/v5/app/MiuiActivity;->mTitleBarContainer:Landroid/view/ViewGroup;

    .line 59
    const v1, 0x60100b2

    invoke-static {p0, v1}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_0
    iput v1, p0, Lmiui/v5/app/MiuiActivity;->mTopPlaceholderHeight:I

    .line 62
    invoke-direct {p0}, Lmiui/v5/app/MiuiActivity;->initBottomBarTopLine()V

    .line 63
    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mBottomBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lmiui/v5/app/MiuiActivity;->initMenuBar(Landroid/view/ViewGroup;)V

    .line 65
    const v1, 0x60100b3

    invoke-static {p0, v1, v2}, Lmiui/util/UiUtils;->getBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/v5/app/MiuiActivity;->setTopPlaceholderEnabled(Z)V

    .line 66
    return-void

    :cond_0
    move v1, v2

    .line 60
    goto :goto_0
.end method

.method protected onCreateMenuBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateMenuBarPanel(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 490
    const/4 v1, 0x0

    .line 491
    .local v1, show:Z
    invoke-virtual {p0, p1}, Lmiui/v5/app/MiuiActivity;->onCreateMenuBar(Landroid/view/Menu;)Z

    move-result v1

    .line 493
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->getCurrentPagerItem()Lmiui/v5/app/MiuiViewPagerItem;

    move-result-object v0

    .line 494
    .local v0, current:Lmiui/v5/app/MiuiViewPagerItem;
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lmiui/v5/app/MiuiViewPagerItem;->onCreateMenuBar(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 498
    :cond_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 182
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 183
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    invoke-virtual {v0}, Lmiui/v5/view/ActionModeWrapper;->isActionModeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    invoke-virtual {v0}, Lmiui/v5/view/ActionModeWrapper;->finishActionMode()V

    .line 185
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMenuBarClose(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 152
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->updateBottomPlaceholder()V

    .line 153
    return-void
.end method

.method protected onMenuBarItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method protected onMenuBarModeChange(Landroid/view/Menu;I)V
    .locals 2
    .parameter "menu"
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 160
    iput p2, p0, Lmiui/v5/app/MiuiActivity;->mMenuBarMode:I

    .line 161
    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/v5/view/ActionModeWrapper;->setBottomBarTopLineVisible(Z)V

    .line 162
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMenuBarOpen(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 148
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->updateBottomPlaceholder()V

    .line 149
    return-void
.end method

.method public onMenuBarPanelClose(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 481
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->getCurrentPagerItem()Lmiui/v5/app/MiuiViewPagerItem;

    move-result-object v0

    .line 482
    .local v0, current:Lmiui/v5/app/MiuiViewPagerItem;
    if-eqz v0, :cond_0

    .line 483
    invoke-interface {v0, p1}, Lmiui/v5/app/MiuiViewPagerItem;->onMenuBarClose(Landroid/view/Menu;)V

    .line 486
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/v5/app/MiuiActivity;->onMenuBarClose(Landroid/view/Menu;)V

    .line 487
    return-void
.end method

.method public onMenuBarPanelItemSelected(Landroid/view/Menu;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 514
    const/4 v1, 0x0

    .line 516
    .local v1, handled:Z
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->getCurrentPagerItem()Lmiui/v5/app/MiuiViewPagerItem;

    move-result-object v0

    .line 517
    .local v0, current:Lmiui/v5/app/MiuiViewPagerItem;
    if-eqz v0, :cond_0

    .line 518
    invoke-interface {v0, p2}, Lmiui/v5/app/MiuiViewPagerItem;->onMenuBarItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 521
    :cond_0
    invoke-virtual {p0, p2}, Lmiui/v5/app/MiuiActivity;->onMenuBarItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 522
    return v1
.end method

.method public onMenuBarPanelModeChange(Landroid/view/Menu;I)V
    .locals 1
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 526
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->getCurrentPagerItem()Lmiui/v5/app/MiuiViewPagerItem;

    move-result-object v0

    .line 527
    .local v0, current:Lmiui/v5/app/MiuiViewPagerItem;
    if-eqz v0, :cond_0

    .line 528
    invoke-interface {v0, p1, p2}, Lmiui/v5/app/MiuiViewPagerItem;->onMenuBarModeChange(Landroid/view/Menu;I)V

    .line 531
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiui/v5/app/MiuiActivity;->onMenuBarModeChange(Landroid/view/Menu;I)V

    .line 532
    return-void
.end method

.method public onMenuBarPanelOpen(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 472
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->getCurrentPagerItem()Lmiui/v5/app/MiuiViewPagerItem;

    move-result-object v0

    .line 473
    .local v0, current:Lmiui/v5/app/MiuiViewPagerItem;
    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v0, p1}, Lmiui/v5/app/MiuiViewPagerItem;->onMenuBarOpen(Landroid/view/Menu;)V

    .line 477
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/v5/app/MiuiActivity;->onMenuBarOpen(Landroid/view/Menu;)V

    .line 478
    return-void
.end method

.method protected onPrepareMenuBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareMenuBarPanel(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 502
    const/4 v1, 0x0

    .line 503
    .local v1, show:Z
    invoke-virtual {p0, p1}, Lmiui/v5/app/MiuiActivity;->onPrepareMenuBar(Landroid/view/Menu;)Z

    move-result v1

    .line 505
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->getCurrentPagerItem()Lmiui/v5/app/MiuiViewPagerItem;

    move-result-object v0

    .line 506
    .local v0, current:Lmiui/v5/app/MiuiViewPagerItem;
    if-eqz v0, :cond_0

    .line 507
    invoke-interface {v0, p1}, Lmiui/v5/app/MiuiViewPagerItem;->onPrepareMenuBar(Landroid/view/Menu;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 510
    :cond_0
    return v1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 214
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    invoke-virtual {v0}, Lmiui/v5/view/ActionModeWrapper;->isActionModeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 70
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/MenuBar;->open(Z)V

    .line 71
    return-void
.end method

.method public removeAllTitleViews()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 229
    return-void
.end method

.method public removeLayoutObserver(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 435
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 436
    return-void
.end method

.method protected setBackground(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 134
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    invoke-virtual {v0, p1}, Lmiui/v5/view/ActionModeWrapper;->setBackgroundResource(I)V

    .line 135
    return-void
.end method

.method protected setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 140
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    invoke-virtual {v0, p1}, Lmiui/v5/view/ActionModeWrapper;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    return-void
.end method

.method public setBottomPlaceholderEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->getBottomPlaceholderHeight()I

    move-result v0

    .line 369
    .local v0, bottomMargin:I
    iget-object v2, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 370
    .local v1, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v0, :cond_0

    .line 371
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Cannot be set margin external!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_0
    if-eqz p1, :cond_2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-nez v2, :cond_2

    .line 375
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 376
    iget-object v2, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 377
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmiui/v5/app/MiuiActivity;->updateContentBorder(Z)V

    .line 383
    :cond_1
    :goto_0
    return-void

    .line 378
    :cond_2
    if-nez p1, :cond_1

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eqz v2, :cond_1

    .line 379
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 380
    iget-object v2, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 381
    invoke-virtual {p0, v3}, Lmiui/v5/app/MiuiActivity;->updateContentBorder(Z)V

    goto :goto_0
.end method

.method protected setMiuiContentView(I)Landroid/view/View;
    .locals 2
    .parameter "layoutResID"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lmiui/v5/app/MiuiActivity;->setMiuiContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected setMiuiContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 2
    .parameter "decorateView"
    .parameter "lp"

    .prologue
    .line 78
    if-eqz p1, :cond_3

    .line 79
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mDecoratedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mDecoratedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 83
    :cond_0
    if-eqz p2, :cond_2

    .line 84
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    :goto_0
    iput-object p1, p0, Lmiui/v5/app/MiuiActivity;->mDecoratedView:Landroid/view/View;

    .line 95
    :cond_1
    :goto_1
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mDecoratedView:Landroid/view/View;

    return-object v0

    .line 86
    :cond_2
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mDecoratedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mDecoratedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/app/MiuiActivity;->mDecoratedView:Landroid/view/View;

    goto :goto_1
.end method

.method protected setTitleBarType(I)Lmiui/v5/app/TitleBar;
    .locals 2
    .parameter "type"

    .prologue
    .line 276
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBar:Lmiui/v5/app/TitleBar;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBar:Lmiui/v5/app/TitleBar;

    invoke-interface {v0}, Lmiui/v5/app/TitleBar;->getType()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 278
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBar:Lmiui/v5/app/TitleBar;

    .line 285
    :goto_0
    return-object v0

    .line 280
    :cond_0
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBarContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mTitleBar:Lmiui/v5/app/TitleBar;

    invoke-interface {v1}, Lmiui/v5/app/TitleBar;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBar:Lmiui/v5/app/TitleBar;

    .line 284
    :cond_1
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBarContainer:Landroid/view/ViewGroup;

    invoke-static {p0, p1, v0}, Lmiui/v5/app/TitleBars;->inflate(Landroid/app/Activity;ILandroid/view/ViewGroup;)Lmiui/v5/app/TitleBar;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBar:Lmiui/v5/app/TitleBar;

    .line 285
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBar:Lmiui/v5/app/TitleBar;

    goto :goto_0
.end method

.method public setTitleView(I)Landroid/view/View;
    .locals 3
    .parameter "layoutId"

    .prologue
    .line 258
    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mTitleBarContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lmiui/v5/widget/Views;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, v:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/v5/app/MiuiActivity;->setTitleView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setTitleView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 2
    .parameter "v"
    .parameter "params"

    .prologue
    .line 238
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBarContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiui/v5/app/MiuiActivity;->mTitleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 242
    :cond_0
    iput-object p1, p0, Lmiui/v5/app/MiuiActivity;->mTitleView:Landroid/view/View;

    .line 243
    if-eqz p2, :cond_1

    .line 244
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    :goto_0
    return-object p1

    .line 246
    :cond_1
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mTitleBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setTopPlaceholderEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 316
    iget-boolean v0, p0, Lmiui/v5/app/MiuiActivity;->mIsTopPlaceholderEnabled:Z

    if-ne v0, p1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iput-boolean p1, p0, Lmiui/v5/app/MiuiActivity;->mIsTopPlaceholderEnabled:Z

    .line 321
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->updateTopPlaceholder()V

    goto :goto_0
.end method

.method public setTopPlaceholderHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 325
    iget-boolean v0, p0, Lmiui/v5/app/MiuiActivity;->mIsTopPlaceholderEnabled:Z

    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    iput p1, p0, Lmiui/v5/app/MiuiActivity;->mTopPlaceholderHeight:I

    .line 330
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->updateTopPlaceholder()V

    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 566
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startSearchMode(Landroid/view/View;Landroid/view/View;Ljava/lang/CharSequence;Lmiui/v5/view/MiuiActionMode$ActionModeListener;)Lmiui/v5/app/SearchMode$Token;
    .locals 1
    .parameter "anchor"
    .parameter "animView"
    .parameter "hint"
    .parameter "l"

    .prologue
    .line 547
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    invoke-static {v0, p1, p2, p3, p4}, Lmiui/v5/app/SearchMode;->startSearchMode(Lmiui/v5/view/ActionModeWrapper;Landroid/view/View;Landroid/view/View;Ljava/lang/CharSequence;Lmiui/v5/view/MiuiActionMode$ActionModeListener;)Lmiui/v5/app/SearchMode$Token;

    move-result-object v0

    return-object v0
.end method

.method public startSearchMode(Landroid/view/View;Landroid/view/View;Lmiui/v5/view/MiuiActionMode$ActionModeListener;)Lmiui/v5/app/SearchMode$Token;
    .locals 3
    .parameter "anchor"
    .parameter "animView"
    .parameter "l"

    .prologue
    .line 552
    if-eqz p1, :cond_1

    .line 553
    const v2, 0x1020009

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 554
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/TextView;

    .end local v1           #v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 558
    .local v0, hint:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lmiui/v5/app/MiuiActivity;->startSearchMode(Landroid/view/View;Landroid/view/View;Ljava/lang/CharSequence;Lmiui/v5/view/MiuiActionMode$ActionModeListener;)Lmiui/v5/app/SearchMode$Token;

    move-result-object v2

    return-object v2

    .line 554
    .end local v0           #hint:Ljava/lang/CharSequence;
    .restart local v1       #v:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 556
    .end local v1           #v:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #hint:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method updateBottomPlaceholder()V
    .locals 6

    .prologue
    .line 400
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity;->mBottomBarContainer:Landroid/widget/FrameLayout;

    .line 401
    .local v0, container:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 402
    .local v1, count:I
    const/4 v2, 0x0

    .line 403
    .local v2, hasVisibleChild:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 404
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 405
    const/4 v2, 0x1

    .line 410
    :cond_0
    invoke-virtual {p0, v2}, Lmiui/v5/app/MiuiActivity;->setBottomPlaceholderEnabled(Z)V

    .line 411
    return-void

    .line 403
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public updateContentBorder()V
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->isBottomPlaceholderEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/v5/app/MiuiActivity;->updateContentBorder(Z)V

    .line 293
    return-void
.end method

.method protected updateContentBorder(Z)V
    .locals 7
    .parameter "bottomBarEnabled"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, visible:Z
    if-eqz p1, :cond_0

    .line 441
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->getLayoutObserver()Lmiui/v5/app/LayoutObserver;

    move-result-object v2

    .line 442
    .local v2, observer:Lmiui/v5/app/LayoutObserver;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lmiui/v5/app/LayoutObserver;->isContentFilled()Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    .line 447
    .end local v2           #observer:Lmiui/v5/app/LayoutObserver;
    :cond_0
    :goto_0
    iget-object v6, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmiui/v5/app/MiuiActivity;->mWrapper:Lmiui/v5/view/ActionModeWrapper;

    invoke-virtual {v6}, Lmiui/v5/view/ActionModeWrapper;->isActionModeActive()Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v4

    .line 448
    .local v0, isActionModeActive:Z
    :goto_1
    iget-object v6, p0, Lmiui/v5/app/MiuiActivity;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    if-eqz v6, :cond_3

    iget v6, p0, Lmiui/v5/app/MiuiActivity;->mMenuBarMode:I

    if-ne v6, v4, :cond_3

    move v1, v4

    .line 450
    .local v1, isMenuBarCollapse:Z
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    :goto_3
    invoke-direct {p0, v4}, Lmiui/v5/app/MiuiActivity;->setBottomBarTopLineVisible(Z)V

    .line 451
    return-void

    .end local v0           #isActionModeActive:Z
    .end local v1           #isMenuBarCollapse:Z
    .restart local v2       #observer:Lmiui/v5/app/LayoutObserver;
    :cond_1
    move v3, v5

    .line 442
    goto :goto_0

    .end local v2           #observer:Lmiui/v5/app/LayoutObserver;
    :cond_2
    move v0, v5

    .line 447
    goto :goto_1

    .restart local v0       #isActionModeActive:Z
    :cond_3
    move v1, v5

    .line 448
    goto :goto_2

    .restart local v1       #isMenuBarCollapse:Z
    :cond_4
    move v4, v5

    .line 450
    goto :goto_3
.end method

.method protected updateTopPlaceholder()V
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p0}, Lmiui/v5/app/MiuiActivity;->getTopPlaceholderHeight()I

    move-result v1

    .line 335
    .local v1, topMargin:I
    iget-object v2, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 337
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v2, p0, Lmiui/v5/app/MiuiActivity;->mIsTopPlaceholderEnabled:Z

    if-eqz v2, :cond_0

    .line 338
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 343
    :goto_0
    iget-object v2, p0, Lmiui/v5/app/MiuiActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 344
    return-void

    .line 340
    :cond_0
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method
