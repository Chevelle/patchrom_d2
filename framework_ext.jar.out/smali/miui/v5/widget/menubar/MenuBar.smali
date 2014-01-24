.class public Lmiui/v5/widget/menubar/MenuBar;
.super Ljava/lang/Object;
.source "MenuBar.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;,
        Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;,
        Lmiui/v5/widget/menubar/MenuBar$Callback;
    }
.end annotation


# static fields
.field public static final MENU_BAR_MODE_COLLAPSE:I = 0x1

.field public static final MENU_BAR_MODE_EXPAND:I = 0x0

.field private static final MENU_BAR_STATE_CLOSED:I = 0x0

.field private static final MENU_BAR_STATE_CLOSING:I = 0x3

.field private static final MENU_BAR_STATE_OPENED:I = 0x2

.field private static final MENU_BAR_STATE_OPENING:I = 0x1


# instance fields
.field private mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

.field private mCloseMenuBarViewCount:I

.field protected mContext:Landroid/content/Context;

.field private mIsCreated:Z

.field private mIsPrepared:Z

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/v5/widget/menubar/MenuBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field mMenuBarScrollHandler:Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;

.field private mMenuBarState:I

.field mMenuPresenterCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

.field private mOpenMenuBarViewCount:I

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/v5/widget/menubar/MenuBarPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field protected mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/v5/widget/menubar/MenuBarItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mVisibleItems:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    .line 518
    new-instance v0, Lmiui/v5/widget/menubar/MenuBar$1;

    invoke-direct {v0, p0}, Lmiui/v5/widget/menubar/MenuBar$1;-><init>(Lmiui/v5/widget/menubar/MenuBar;)V

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarScrollHandler:Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;

    .line 529
    new-instance v0, Lmiui/v5/widget/menubar/MenuBar$2;

    invoke-direct {v0, p0}, Lmiui/v5/widget/menubar/MenuBar$2;-><init>(Lmiui/v5/widget/menubar/MenuBar;)V

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuPresenterCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

    .line 106
    iput-object p1, p0, Lmiui/v5/widget/menubar/MenuBar;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lmiui/v5/widget/menubar/MenuBar;FZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lmiui/v5/widget/menubar/MenuBar;->dispatchMenuBarScroll(FZZ)V

    return-void
.end method

.method static synthetic access$100(Lmiui/v5/widget/menubar/MenuBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I

    return v0
.end method

.method static synthetic access$110(Lmiui/v5/widget/menubar/MenuBar;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I

    return v0
.end method

.method static synthetic access$202(Lmiui/v5/widget/menubar/MenuBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    return p1
.end method

.method static synthetic access$300(Lmiui/v5/widget/menubar/MenuBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I

    return v0
.end method

.method static synthetic access$310(Lmiui/v5/widget/menubar/MenuBar;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I

    return v0
.end method

.method private dispatchMenuBarScroll(FZZ)V
    .locals 4
    .parameter "percent"
    .parameter "fromHasMenuBar"
    .parameter "toHasMenuBar"

    .prologue
    .line 456
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBar;->stopDispatchingItemsChanged()V

    .line 459
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 460
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarPresenter;

    .line 461
    .local v1, presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    if-nez v1, :cond_1

    .line 462
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 464
    :cond_1
    invoke-interface {v1, p1, p2, p3}, Lmiui/v5/widget/menubar/MenuBarPresenter;->onScroll(FZZ)V

    goto :goto_1

    .line 467
    .end local v1           #presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBar;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .parameter "cleared"

    .prologue
    .line 441
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBar;->stopDispatchingItemsChanged()V

    .line 444
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 445
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarPresenter;

    .line 446
    .local v1, presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    if-nez v1, :cond_1

    .line 447
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 449
    :cond_1
    invoke-interface {v1, p1}, Lmiui/v5/widget/menubar/MenuBarPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 452
    .end local v1           #presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBar;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .parameter
    .parameter "ordering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/v5/widget/menubar/MenuBarItem;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/v5/widget/menubar/MenuBarItem;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 420
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarItem;

    .line 421
    .local v1, item:Lmiui/v5/widget/menubar/MenuBarItem;
    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBarItem;->getOrder()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 422
    add-int/lit8 v2, v0, 0x1

    .line 426
    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :goto_1
    return v2

    .line 419
    .restart local v1       #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 426
    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findItemIndex(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 430
    iget-object v2, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 432
    .local v1, size:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 433
    iget-object v2, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/menubar/MenuBarItem;

    invoke-virtual {v2}, Lmiui/v5/widget/menubar/MenuBarItem;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 437
    .end local v0           #i:I
    :goto_1
    return v0

    .line 432
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 437
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .parameter "index"
    .parameter "updateChildrenOnMenuViews"

    .prologue
    .line 291
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 296
    if-eqz p2, :cond_0

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v0}, Lmiui/v5/widget/menubar/MenuBar;->addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 122
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p3, v0}, Lmiui/v5/widget/menubar/MenuBar;->addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 118
    invoke-virtual {p0, p2, p3, p4}, Lmiui/v5/widget/menubar/MenuBar;->addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0, v0, p1}, Lmiui/v5/widget/menubar/MenuBar;->addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 141
    new-instance v0, Lmiui/v5/widget/menubar/MenuBarItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/v5/widget/menubar/MenuBarItem;-><init>(Lmiui/v5/widget/menubar/MenuBar;IILjava/lang/CharSequence;)V

    .line 142
    .local v0, item:Lmiui/v5/widget/menubar/MenuBarItem;
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, p2}, Lmiui/v5/widget/menubar/MenuBar;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 144
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    .line 146
    return-object v0
.end method

.method public addMenuPresenter(Lmiui/v5/widget/menubar/MenuBarPresenter;)V
    .locals 2
    .parameter "presenter"

    .prologue
    .line 126
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lmiui/v5/widget/menubar/MenuBarPresenter;->initForMenu(Landroid/content/Context;Lmiui/v5/widget/menubar/MenuBar;)V

    .line 128
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuPresenterCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

    invoke-interface {p1, v0}, Lmiui/v5/widget/menubar/MenuBarPresenter;->setCallback(Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;)V

    .line 129
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1
    .parameter "titleRes"

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    .line 176
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->close(Z)V

    .line 180
    return-void
.end method

.method public close(Z)V
    .locals 7
    .parameter "animate"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 183
    iget v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    if-eq v4, v6, :cond_0

    iget v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    if-nez v4, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iput v6, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, handled:Z
    iput v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I

    .line 190
    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 191
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/menubar/MenuBarPresenter;

    .line 192
    .local v2, presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    if-nez v2, :cond_2

    .line 193
    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_2
    const/4 v0, 0x1

    .line 196
    iget v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I

    .line 197
    invoke-interface {v2, p0, p1}, Lmiui/v5/widget/menubar/MenuBarPresenter;->onCloseMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V

    goto :goto_1

    .line 201
    .end local v2           #presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_3
    if-nez v0, :cond_0

    .line 202
    iput v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    goto :goto_0
.end method

.method dispatchMenuClose()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v0, p0}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onMenuBarPanelClose(Landroid/view/Menu;)V

    .line 482
    :cond_0
    return-void
.end method

.method dispatchMenuItemSelected(Lmiui/v5/widget/menubar/MenuBar;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 471
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v0, p1, p2}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onMenuBarPanelItemSelected(Landroid/view/Menu;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchMenuModeChange(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 485
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v0, p0, p1}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onMenuBarPanelModeChange(Landroid/view/Menu;I)V

    .line 487
    :cond_0
    return-void
.end method

.method dispatchMenuOpen()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v0, p0}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onMenuBarPanelOpen(Landroid/view/Menu;)V

    .line 477
    :cond_0
    return-void
.end method

.method public expand(Z)Z
    .locals 6
    .parameter "expand"

    .prologue
    .line 207
    iget v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 208
    const/4 v0, 0x0

    .line 219
    :cond_0
    return v0

    .line 210
    :cond_1
    const/4 v0, 0x0

    .line 211
    .local v0, handled:Z
    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 212
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/menubar/MenuBarPresenter;

    .line 213
    .local v2, presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    if-nez v2, :cond_2

    .line 214
    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_2
    invoke-interface {v2, p0, p1}, Lmiui/v5/widget/menubar/MenuBarPresenter;->onExpandMenu(Lmiui/v5/widget/menubar/MenuBar;Z)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_0
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4
    .parameter "id"

    .prologue
    .line 223
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBar;->size()I

    move-result v2

    .line 224
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 225
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarItem;

    .line 226
    .local v1, item:Lmiui/v5/widget/menubar/MenuBarItem;
    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBarItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 231
    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :goto_1
    return-object v1

    .line 224
    .restart local v1       #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 235
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public getMenuBarSrollHandler()Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarScrollHandler:Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;

    return-object v0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/v5/widget/menubar/MenuBarItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 493
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 495
    .local v2, itemsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 496
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarItem;

    .line 497
    .local v1, item:Lmiui/v5/widget/menubar/MenuBarItem;
    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBarItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lmiui/v5/widget/menubar/MenuBarItem;->setTag(Ljava/lang/Object;)Landroid/view/MenuItem;

    goto :goto_1

    .line 503
    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_1
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mVisibleItems:Ljava/util/ArrayList;

    return-object v3
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 246
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBar;->size()I

    move-result v2

    .line 248
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 249
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarItem;

    .line 250
    .local v1, item:Lmiui/v5/widget/menubar/MenuBarItem;
    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBarItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    const/4 v3, 0x1

    .line 255
    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :goto_1
    return v3

    .line 248
    .restart local v1       #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v0, p0}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onPrepareMenuBarPanel(Landroid/view/Menu;)Z

    .line 316
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 381
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method onItemVisibleChanged(Lmiui/v5/widget/menubar/MenuBarItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    .line 516
    return-void
.end method

.method onItemsChanged(Z)V
    .locals 1
    .parameter "structureChanged"

    .prologue
    .line 507
    iget-boolean v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 508
    invoke-direct {p0, p1}, Lmiui/v5/widget/menubar/MenuBar;->dispatchPresenterUpdate(Z)V

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->open(Z)V

    .line 334
    return-void
.end method

.method public open(Z)V
    .locals 7
    .parameter "animate"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 337
    iget v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    if-ne v4, v6, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iput v6, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    .line 341
    iput-boolean v6, p0, Lmiui/v5/widget/menubar/MenuBar;->mPreventDispatchingItemsChanged:Z

    .line 342
    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    if-eqz v4, :cond_4

    .line 343
    iget-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsCreated:Z

    if-eqz v4, :cond_2

    .line 344
    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v4, p0}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onPrepareMenuBarPanel(Landroid/view/Menu;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsPrepared:Z

    .line 357
    :goto_1
    iput-boolean v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mPreventDispatchingItemsChanged:Z

    .line 358
    iput-boolean v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mItemsChangedWhileDispatchPrevented:Z

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, handled:Z
    iget-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsCreated:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsPrepared:Z

    if-eqz v4, :cond_6

    .line 362
    iput v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I

    .line 363
    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 364
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/menubar/MenuBarPresenter;

    .line 365
    .local v2, presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    if-nez v2, :cond_5

    .line 366
    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 346
    .end local v0           #handled:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_2
    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v4, p0}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onCreateMenuBarPanel(Landroid/view/Menu;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsCreated:Z

    .line 347
    iget-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsCreated:Z

    if-eqz v4, :cond_3

    .line 348
    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v4, p0}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onPrepareMenuBarPanel(Landroid/view/Menu;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsPrepared:Z

    goto :goto_1

    .line 350
    :cond_3
    iput-boolean v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsPrepared:Z

    goto :goto_1

    .line 354
    :cond_4
    iput-boolean v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsCreated:Z

    .line 355
    iput-boolean v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsPrepared:Z

    goto :goto_1

    .line 368
    .restart local v0       #handled:Z
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .restart local v3       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_5
    const/4 v0, 0x1

    .line 369
    iget v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I

    .line 370
    invoke-interface {v2, p0, p1}, Lmiui/v5/widget/menubar/MenuBarPresenter;->onOpenMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V

    goto :goto_2

    .line 375
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_6
    if-nez v0, :cond_0

    .line 376
    invoke-virtual {p0, v5}, Lmiui/v5/widget/menubar/MenuBar;->close(Z)V

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 3
    .parameter "item"
    .parameter "flags"

    .prologue
    .line 271
    move-object v1, p1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarItem;

    .line 273
    .local v1, itemImpl:Lmiui/v5/widget/menubar/MenuBarItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBarItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    :cond_0
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    .line 277
    :cond_1
    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBarItem;->invoke()Z

    move-result v0

    .line 279
    .local v0, invoked:Z
    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public removeGroup(I)V
    .locals 0
    .parameter "groupId"

    .prologue
    .line 284
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lmiui/v5/widget/menubar/MenuBar;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/v5/widget/menubar/MenuBar;->removeItemAtInt(IZ)V

    .line 288
    return-void
.end method

.method public removeMenuPresenter(Lmiui/v5/widget/menubar/MenuBarPresenter;)V
    .locals 4
    .parameter "presenter"

    .prologue
    .line 132
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 133
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarPresenter;

    .line 134
    .local v1, item:Lmiui/v5/widget/menubar/MenuBarPresenter;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 135
    :cond_1
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_2
    return-void
.end method

.method public reopen()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->reopen(Z)V

    .line 320
    return-void
.end method

.method public reopen(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 323
    iput-boolean v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsCreated:Z

    .line 325
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 326
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 327
    iput v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    .line 329
    invoke-virtual {p0, p1}, Lmiui/v5/widget/menubar/MenuBar;->open(Z)V

    .line 330
    return-void
.end method

.method public setCallback(Lmiui/v5/widget/menubar/MenuBar$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    .line 386
    iput-object p1, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    .line 387
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 0
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 302
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 0
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 305
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 0
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 308
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0
    .parameter "isQwerty"

    .prologue
    .line 311
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 406
    iput-boolean v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mPreventDispatchingItemsChanged:Z

    .line 408
    iget-boolean v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 409
    iput-boolean v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mItemsChangedWhileDispatchPrevented:Z

    .line 410
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    .line 412
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mPreventDispatchingItemsChanged:Z

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItemsChangedWhileDispatchPrevented:Z

    .line 403
    :cond_0
    return-void
.end method
