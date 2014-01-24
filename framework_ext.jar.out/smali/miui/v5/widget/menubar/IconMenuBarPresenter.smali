.class public Lmiui/v5/widget/menubar/IconMenuBarPresenter;
.super Ljava/lang/Object;
.source "IconMenuBarPresenter.java"

# interfaces
.implements Lmiui/v5/widget/menubar/MenuBarPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_CLOSE_ANIMATOR_DURATION:I = 0xc8

.field private static final DEFAULT_OPEN_ANIMATOR_DURATION:I = 0xc8

.field private static final MAX_ITEMS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "IconMenuBarPresenter"


# instance fields
.field mCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

.field private mCloseMenuBarAnimator:Landroid/animation/Animator;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mIconMenuBarLayoutResId:I

.field private mIconMenuBarPrimaryItemResId:I

.field private mIconMenuBarSecondaryItemResId:I

.field private mIsEditMode:Z

.field private mMaxItems:I

.field private mMenu:Lmiui/v5/widget/menubar/MenuBar;

.field private mMenuBarAnimatorListener:Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;

.field private mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

.field private mMoreIconBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mMoreIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mMoreView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

.field private mOpenMenuBarAnimator:Landroid/animation/Animator;

.field private mPrimaryMaskDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V
    .locals 1
    .parameter "context"
    .parameter "container"
    .parameter "iconMenuBarLayoutResId"
    .parameter "iconMenuBarPrimaryItemResid"
    .parameter "iconMenuBarSecondaryItemResId"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    iput v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMaxItems:I

    .line 65
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mContainer:Landroid/view/ViewGroup;

    .line 68
    iput p3, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mIconMenuBarLayoutResId:I

    .line 69
    iput p4, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mIconMenuBarPrimaryItemResId:I

    .line 70
    iput p5, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mIconMenuBarSecondaryItemResId:I

    .line 72
    new-instance v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;

    invoke-direct {v0, p0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;-><init>(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)V

    iput-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuBarAnimatorListener:Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mOpenMenuBarAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$002(Lmiui/v5/widget/menubar/IconMenuBarPresenter;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mOpenMenuBarAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)Lmiui/v5/widget/menubar/IconMenuBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/v5/widget/menubar/IconMenuBarPresenter;)Lmiui/v5/widget/menubar/MenuBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    return-object v0
.end method

.method static synthetic access$302(Lmiui/v5/widget/menubar/IconMenuBarPresenter;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCloseMenuBarAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private cancelPendingAnimatior()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mOpenMenuBarAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mOpenMenuBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 405
    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCloseMenuBarAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCloseMenuBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 408
    :cond_1
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .parameter "parent"
    .parameter "itemView"
    .parameter "childIndex"

    .prologue
    .line 303
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 304
    .local v0, currentParent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 307
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 308
    return-void
.end method

.method public collapseItemActionView(Lmiui/v5/widget/menubar/MenuBar;Lmiui/v5/widget/menubar/MenuBarItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method protected createPrimaryItemView()Lmiui/v5/widget/menubar/MenuBarView$ItemView;
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mContext:Landroid/content/Context;

    iget v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mIconMenuBarPrimaryItemResId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    return-object v0
.end method

.method protected createSecondaryItemView()Lmiui/v5/widget/menubar/MenuBarView$ItemView;
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mContext:Landroid/content/Context;

    iget v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mIconMenuBarSecondaryItemResId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    return-object v0
.end method

.method protected ensureMenuView()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiui/v5/widget/menubar/MenuBarView;

    .line 314
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lmiui/v5/widget/menubar/MenuBar;Lmiui/v5/widget/menubar/MenuBarItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .parameter "parent"
    .parameter "childIndex"

    .prologue
    .line 351
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMoreView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

    if-eq v0, v1, :cond_0

    .line 352
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 353
    const/4 v0, 0x1

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMaxItems:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiui/v5/widget/menubar/MenuBarView;
    .locals 3
    .parameter "root"

    .prologue
    .line 199
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mContext:Landroid/content/Context;

    iget v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mIconMenuBarLayoutResId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/menubar/IconMenuBarView;

    iput-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    .line 201
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->initialize(Lmiui/v5/widget/menubar/MenuBar;)V

    .line 202
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mPrimaryMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->setPrimaryMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->setVisibility(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    return-object v0
.end method

.method protected getPrimaryItemView(Lmiui/v5/widget/menubar/MenuBarItem;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "item"
    .parameter "convertView"

    .prologue
    .line 318
    instance-of v1, p2, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 319
    check-cast v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    .line 324
    .local v0, itemView:Lmiui/v5/widget/menubar/MenuBarView$ItemView;
    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lmiui/v5/widget/menubar/MenuBarView$ItemView;->initialize(Lmiui/v5/widget/menubar/MenuBarItem;I)V

    .line 325
    invoke-virtual {p1, v0}, Lmiui/v5/widget/menubar/MenuBarItem;->setTag(Ljava/lang/Object;)Landroid/view/MenuItem;

    .line 326
    check-cast v0, Landroid/view/View;

    .end local v0           #itemView:Lmiui/v5/widget/menubar/MenuBarView$ItemView;
    return-object v0

    .line 321
    :cond_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->createPrimaryItemView()Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    move-result-object v0

    .restart local v0       #itemView:Lmiui/v5/widget/menubar/MenuBarView$ItemView;
    goto :goto_0
.end method

.method public getSecondaryItemView(Lmiui/v5/widget/menubar/MenuBarItem;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "item"
    .parameter "convertView"

    .prologue
    .line 335
    instance-of v1, p2, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 336
    check-cast v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    .line 341
    .local v0, itemView:Lmiui/v5/widget/menubar/MenuBarView$ItemView;
    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lmiui/v5/widget/menubar/MenuBarView$ItemView;->initialize(Lmiui/v5/widget/menubar/MenuBarItem;I)V

    .line 342
    invoke-virtual {p1, v0}, Lmiui/v5/widget/menubar/MenuBarItem;->setTag(Ljava/lang/Object;)Landroid/view/MenuItem;

    .line 343
    check-cast v0, Landroid/view/View;

    .end local v0           #itemView:Lmiui/v5/widget/menubar/MenuBarView$ItemView;
    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->createSecondaryItemView()Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    move-result-object v0

    .restart local v0       #itemView:Lmiui/v5/widget/menubar/MenuBarView$ItemView;
    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lmiui/v5/widget/menubar/MenuBar;)V
    .locals 0
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 194
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mContext:Landroid/content/Context;

    .line 195
    iput-object p2, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    .line 196
    return-void
.end method

.method public onCloseMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V
    .locals 4
    .parameter "menu"
    .parameter "animate"

    .prologue
    .line 241
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    if-nez v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/v5/widget/menubar/IconMenuBarView;->requestExpand(Z)Z

    .line 248
    invoke-direct {p0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->cancelPendingAnimatior()V

    .line 249
    if-eqz p2, :cond_2

    .line 250
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->getVisibility()I

    move-result v0

    .line 252
    .local v0, oldMenuViewVisibility:I
    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->playCloseMenuBarAnimator()V

    goto :goto_0

    .line 256
    .end local v0           #oldMenuViewVisibility:I
    :cond_2
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lmiui/v5/widget/menubar/IconMenuBarView;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;->onCloseMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V

    goto :goto_0
.end method

.method public onExpandMenu(Lmiui/v5/widget/menubar/MenuBar;Z)Z
    .locals 1
    .parameter "menu"
    .parameter "expand"

    .prologue
    .line 467
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {v0, p2}, Lmiui/v5/widget/menubar/IconMenuBarView;->requestExpand(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOpenMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V
    .locals 3
    .parameter "menu"
    .parameter "animate"

    .prologue
    const/4 v2, 0x1

    .line 266
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->ensureMenuView()V

    .line 268
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p0, v2}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->updateMenuView(Z)V

    .line 274
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->setVisibility(I)V

    .line 276
    invoke-direct {p0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->cancelPendingAnimatior()V

    .line 277
    if-eqz p2, :cond_2

    .line 278
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->playOpenMenuBarAnimator()V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    invoke-interface {v0, v1, v2}, Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;->onOpenMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 84
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScroll(FZZ)V
    .locals 1
    .parameter "percent"
    .parameter "fromHasMenuBar"
    .parameter "toHasMenuBar"

    .prologue
    .line 454
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/v5/widget/menubar/IconMenuBarView;->onScroll(FZZ)V

    .line 457
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 460
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/menubar/IconMenuBarView;->onScrollStateChanged(I)V

    .line 463
    :cond_0
    return-void
.end method

.method protected playCloseMenuBarAnimator()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 383
    invoke-direct {p0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->cancelPendingAnimatior()V

    .line 385
    iget-object v4, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    const-string v5, "Alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 387
    .local v0, alpha:Landroid/animation/Animator;
    iget-object v4, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {v4}, Lmiui/v5/widget/menubar/IconMenuBarView;->getPrimaryContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 388
    .local v1, primaryContainer:Landroid/view/View;
    const-string v4, "TranslationY"

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    iget-object v6, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {v6}, Lmiui/v5/widget/menubar/IconMenuBarView;->getPrimaryContainerHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 391
    .local v3, transite:Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 392
    .local v2, set:Landroid/animation/AnimatorSet;
    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v3, v4, v9

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 393
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 394
    iget-object v4, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuBarAnimatorListener:Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 397
    iput-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCloseMenuBarAnimator:Landroid/animation/Animator;

    .line 398
    return-void

    .line 385
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected playOpenMenuBarAnimator()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 360
    invoke-direct {p0}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->cancelPendingAnimatior()V

    .line 362
    iget-object v6, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {v6}, Lmiui/v5/widget/menubar/IconMenuBarView;->getPrimaryContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 364
    .local v3, primaryContainer:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 365
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 366
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    :cond_0
    iget-object v6, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    const-string v7, "Alpha"

    new-array v8, v9, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 370
    .local v0, alpha:Landroid/animation/Animator;
    const-string v6, "TranslationY"

    new-array v7, v9, [F

    iget-object v8, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {v8}, Lmiui/v5/widget/menubar/IconMenuBarView;->getPrimaryContainerHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v11

    aput v10, v7, v12

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 373
    .local v5, transite:Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 374
    .local v4, set:Landroid/animation/AnimatorSet;
    new-array v6, v9, [Landroid/animation/Animator;

    aput-object v0, v6, v11

    aput-object v5, v6, v12

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 375
    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 376
    iget-object v6, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuBarAnimatorListener:Lmiui/v5/widget/menubar/IconMenuBarPresenter$MenuBarAnimatorListener;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 379
    iput-object v4, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mOpenMenuBarAnimator:Landroid/animation/Animator;

    .line 380
    return-void

    .line 369
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public setCallback(Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 237
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

    .line 238
    return-void
.end method

.method public setEditMode(Z)V
    .locals 0
    .parameter "isEditMode"

    .prologue
    .line 76
    iput-boolean p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mIsEditMode:Z

    .line 77
    return-void
.end method

.method public setMaxItems(I)V
    .locals 1
    .parameter "maxItems"

    .prologue
    .line 214
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iput p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMaxItems:I

    goto :goto_0
.end method

.method public setMoreIconBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 225
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMoreIconBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 226
    return-void
.end method

.method public setMoreIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 221
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMoreIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    return-void
.end method

.method public setPrimaryMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 229
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mPrimaryMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 25
    .parameter "cleared"

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    .line 88
    .local v13, menuView:Lmiui/v5/widget/menubar/IconMenuBarView;
    if-nez v13, :cond_1

    .line 191
    :cond_0
    return-void

    .line 92
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMaxItems:I

    move/from16 v20, v0

    if-gez v20, :cond_2

    .line 93
    invoke-virtual {v13}, Lmiui/v5/widget/menubar/IconMenuBarView;->getMaxItems()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMaxItems:I

    .line 94
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lmiui/v5/widget/menubar/MenuBar;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v19

    .line 95
    .local v19, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/v5/widget/menubar/MenuBarItem;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 96
    .local v11, itemCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMaxItems:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v11, v0, :cond_5

    const/4 v15, 0x1

    .line 98
    .local v15, needsMore:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    move-object/from16 v17, v0

    .line 99
    .local v17, parent:Landroid/view/ViewGroup;
    if-eqz v17, :cond_0

    .line 103
    const-string v20, "IconMenuBarPresenter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateMenuView itemCount = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " needsMore = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 106
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMaxItems:I

    move/from16 v20, v0

    add-int/lit8 v18, v20, -0x1

    .line 107
    .local v18, primaryCount:I
    :goto_1
    const/4 v9, 0x0

    .line 109
    .local v9, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lmiui/v5/widget/menubar/IconMenuBarView;->getPrimaryContainer()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 110
    .local v7, container:Landroid/view/ViewGroup;
    const/4 v9, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v9, v0, :cond_8

    .line 111
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/v5/widget/menubar/MenuBarItem;

    .line 112
    .local v10, item:Lmiui/v5/widget/menubar/MenuBarItem;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lmiui/v5/widget/menubar/MenuBarItem;->setIsSecondary(Z)V

    .line 114
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 115
    .local v8, convertView:Landroid/view/View;
    instance-of v0, v8, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v20, v8

    check-cast v20, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    invoke-interface/range {v20 .. v20}, Lmiui/v5/widget/menubar/MenuBarView$ItemView;->getItemData()Lmiui/v5/widget/menubar/MenuBarItem;

    move-result-object v16

    .line 117
    .local v16, oldItem:Lmiui/v5/widget/menubar/MenuBarItem;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->getPrimaryItemView(Lmiui/v5/widget/menubar/MenuBarItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v12

    .line 118
    .local v12, itemView:Landroid/view/View;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    move-object/from16 v0, v16

    if-eq v10, v0, :cond_3

    .line 122
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setPressed(Z)V

    .line 123
    invoke-virtual {v12}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 126
    :cond_3
    if-eq v12, v8, :cond_4

    .line 127
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12, v9}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->addItemView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 128
    check-cast v12, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

    .end local v12           #itemView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setItemInvoker(Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;)V

    .line 110
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 96
    .end local v7           #container:Landroid/view/ViewGroup;
    .end local v8           #convertView:Landroid/view/View;
    .end local v9           #i:I
    .end local v10           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    .end local v15           #needsMore:Z
    .end local v16           #oldItem:Lmiui/v5/widget/menubar/MenuBarItem;
    .end local v17           #parent:Landroid/view/ViewGroup;
    .end local v18           #primaryCount:I
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 106
    .restart local v15       #needsMore:Z
    .restart local v17       #parent:Landroid/view/ViewGroup;
    :cond_6
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v18

    goto :goto_1

    .line 115
    .restart local v7       #container:Landroid/view/ViewGroup;
    .restart local v8       #convertView:Landroid/view/View;
    .restart local v9       #i:I
    .restart local v10       #item:Lmiui/v5/widget/menubar/MenuBarItem;
    .restart local v18       #primaryCount:I
    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    .line 132
    .end local v8           #convertView:Landroid/view/View;
    .end local v10           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_8
    if-eqz v15, :cond_f

    .line 134
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 135
    .local v14, moreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMoreView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMoreView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    .line 136
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    move-object/from16 v21, v0

    move-object/from16 v20, v14

    check-cast v20, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mIconMenuBarPrimaryItemResId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMoreIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMoreIconBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/v5/widget/menubar/IconMenuBarView;->createMoreItemView(Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMoreView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMoreView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v0, v14, :cond_a

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMoreView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1, v9}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->addItemView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 143
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lmiui/v5/widget/menubar/IconMenuBarView;->getSecondaryContainer()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 145
    const/4 v5, 0x0

    .local v5, childIndex:I
    move v6, v5

    .line 146
    .end local v5           #childIndex:I
    .local v6, childIndex:I
    :goto_4
    if-ge v9, v11, :cond_13

    .line 147
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/v5/widget/menubar/MenuBarItem;

    .line 148
    .restart local v10       #item:Lmiui/v5/widget/menubar/MenuBarItem;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lmiui/v5/widget/menubar/MenuBarItem;->setIsSecondary(Z)V

    .line 149
    add-int/lit8 v5, v6, 0x1

    .end local v6           #childIndex:I
    .restart local v5       #childIndex:I
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 150
    .restart local v8       #convertView:Landroid/view/View;
    instance-of v0, v8, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v20, v8

    check-cast v20, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    invoke-interface/range {v20 .. v20}, Lmiui/v5/widget/menubar/MenuBarView$ItemView;->getItemData()Lmiui/v5/widget/menubar/MenuBarItem;

    move-result-object v16

    .line 152
    .restart local v16       #oldItem:Lmiui/v5/widget/menubar/MenuBarItem;
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->getSecondaryItemView(Lmiui/v5/widget/menubar/MenuBarItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v12

    .line 154
    .restart local v12       #itemView:Landroid/view/View;
    move-object/from16 v0, v16

    if-eq v10, v0, :cond_b

    .line 156
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setPressed(Z)V

    .line 157
    invoke-virtual {v12}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 160
    :cond_b
    if-eq v12, v8, :cond_c

    .line 161
    sub-int v20, v9, v18

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v7, v12, v1}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->addItemView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 162
    check-cast v12, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;

    .end local v12           #itemView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->setItemInvoker(Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;)V

    .line 146
    :cond_c
    add-int/lit8 v9, v9, 0x1

    move v6, v5

    .end local v5           #childIndex:I
    .restart local v6       #childIndex:I
    goto :goto_4

    .line 150
    .end local v6           #childIndex:I
    .end local v16           #oldItem:Lmiui/v5/widget/menubar/MenuBarItem;
    .restart local v5       #childIndex:I
    :cond_d
    const/16 v16, 0x0

    goto :goto_5

    .line 167
    .end local v8           #convertView:Landroid/view/View;
    .end local v10           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_e
    :goto_6
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_0

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v20

    if-nez v20, :cond_e

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 173
    .end local v5           #childIndex:I
    .end local v14           #moreView:Landroid/view/View;
    :cond_f
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMoreView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

    .line 176
    :cond_10
    :goto_7
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_11

    .line 177
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v20

    if-nez v20, :cond_10

    .line 178
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 182
    :cond_11
    const/4 v9, 0x0

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->mMenuView:Lmiui/v5/widget/menubar/IconMenuBarView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lmiui/v5/widget/menubar/IconMenuBarView;->getSecondaryContainer()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 184
    :cond_12
    :goto_8
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_0

    .line 185
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v20

    if-nez v20, :cond_12

    .line 186
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .restart local v6       #childIndex:I
    .restart local v14       #moreView:Landroid/view/View;
    :cond_13
    move v5, v6

    .end local v6           #childIndex:I
    .restart local v5       #childIndex:I
    goto :goto_6
.end method
