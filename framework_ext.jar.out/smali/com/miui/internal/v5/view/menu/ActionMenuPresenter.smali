.class public Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/ActionMenuPresenter;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;
    }
.end annotation


# static fields
.field static final MAX_PRIMARY_ITEMS:I = 0x4


# instance fields
.field private mId:I

.field private mIsEditMode:Z

.field private mLayoutResId:I

.field private mMaxPrimaryItems:I

.field private mMenuItems:I

.field private mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

.field private mPrimaryItemResId:I

.field private mSecondaryItemResId:I

.field private mUpdateListener:Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6
    .parameter "context"
    .parameter "layoutResId"
    .parameter "primaryItemResid"
    .parameter "secondaryItemResId"

    .prologue
    .line 43
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIIZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .parameter "context"
    .parameter "layoutResId"
    .parameter "primaryItemResid"
    .parameter "secondaryItemResId"
    .parameter "isEditMode"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMaxPrimaryItems:I

    .line 49
    iput p2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mLayoutResId:I

    .line 50
    iput p3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mPrimaryItemResId:I

    .line 51
    iput p4, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mSecondaryItemResId:I

    .line 52
    iput-boolean p5, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mIsEditMode:Z

    .line 53
    return-void
.end method


# virtual methods
.method addItemView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .parameter "parent"
    .parameter "itemView"
    .parameter "index"

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 168
    .local v0, currentParent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 171
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 172
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    .line 224
    .local v0, menuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->requestExpand(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public flagActionItems()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 201
    iget-object v4, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->miuiGetVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 202
    .local v3, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 203
    .local v2, itemsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 204
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 205
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    :cond_0
    invoke-virtual {v1, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 203
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2
    return v5
.end method

.method public getMenuItems()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuItems:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 3
    .parameter "root"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    iput-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 69
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 70
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v0, p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method getPrimaryItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;)Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    .locals 4
    .parameter "item"
    .parameter "convertView"

    .prologue
    .line 175
    instance-of v1, p2, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    :goto_0
    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    .line 178
    .local v0, itemView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 179
    return-object v0

    .line 175
    .end local v0           #itemView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mPrimaryItemResId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getSecondaryItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;)Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;
    .locals 4
    .parameter "item"
    .parameter "convertView"

    .prologue
    .line 183
    instance-of v1, p2, Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    :goto_0
    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;

    .line 186
    .local v0, itemView:Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 187
    return-object v0

    .line 183
    .end local v0           #itemView:Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mSecondaryItemResId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->requestExpand(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 63
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->requestExpand(Z)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    .line 230
    .local v1, menuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 232
    .local v2, primaryContainer:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 235
    iget-boolean v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mIsEditMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    const v4, 0x601005e

    invoke-static {v3, v4}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 238
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->setPrimaryContainerCollapsedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #primaryContainer:Landroid/view/ViewGroup;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 242
    return-void

    .line 235
    .restart local v2       #primaryContainer:Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    const v4, 0x6010044

    invoke-static {v3, v4}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 219
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public setUpdateListener(Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mUpdateListener:Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;

    .line 251
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 17
    .parameter "cleared"

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v9, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    .line 79
    .local v9, menuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/view/menu/MenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v15, :cond_3

    .line 82
    invoke-virtual {v9}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainer()Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 84
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getSecondaryContainer(Z)Landroid/widget/LinearLayout;

    move-result-object v14

    .line 85
    .local v14, secondaryContainer:Landroid/view/ViewGroup;
    if-eqz v14, :cond_0

    .line 86
    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 88
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuItems:I

    .line 161
    .end local v14           #secondaryContainer:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mUpdateListener:Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;

    if-eqz v15, :cond_2

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mUpdateListener:Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter$MenuUpdateListener;->onMenuUpdated(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 164
    :cond_2
    return-void

    .line 90
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuBuilder;->miuiGetActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 91
    .local v1, actionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuItems:I

    .line 92
    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMenuItems:I

    .line 93
    .local v8, itemsSize:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMaxPrimaryItems:I

    if-le v8, v15, :cond_6

    const/4 v11, 0x1

    .line 95
    .local v11, needsMore:Z
    :goto_1
    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMaxPrimaryItems:I

    add-int/lit8 v13, v15, -0x1

    .line 96
    .local v13, primaryCount:I
    :goto_2
    invoke-virtual {v9}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 97
    .local v3, container:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 98
    .local v5, i:I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v13, :cond_9

    .line 99
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 101
    .local v6, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 102
    .local v4, convertView:Landroid/view/View;
    instance-of v15, v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v15, :cond_8

    move-object v15, v4

    check-cast v15, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v15}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v12

    .line 104
    .local v12, oldItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->getPrimaryItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;)Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    move-result-object v7

    .local v7, itemView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    move-object v15, v7

    .line 105
    check-cast v15, Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    if-eq v6, v12, :cond_4

    move-object v15, v7

    .line 109
    check-cast v15, Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setPressed(Z)V

    move-object v15, v7

    .line 110
    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 113
    :cond_4
    if-eq v7, v4, :cond_5

    move-object v15, v7

    .line 114
    check-cast v15, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15, v5}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->addItemView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 115
    invoke-interface {v7, v9}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 98
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 93
    .end local v3           #container:Landroid/view/ViewGroup;
    .end local v4           #convertView:Landroid/view/View;
    .end local v5           #i:I
    .end local v6           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v7           #itemView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    .end local v11           #needsMore:Z
    .end local v12           #oldItem:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v13           #primaryCount:I
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .restart local v11       #needsMore:Z
    :cond_7
    move v13, v8

    .line 95
    goto :goto_2

    .line 102
    .restart local v3       #container:Landroid/view/ViewGroup;
    .restart local v4       #convertView:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v6       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v13       #primaryCount:I
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 119
    .end local v4           #convertView:Landroid/view/View;
    .end local v6           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_9
    if-eqz v11, :cond_10

    .line 120
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 121
    .local v10, moreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    if-ne v10, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    if-nez v15, :cond_b

    :cond_a
    move-object v15, v10

    .line 122
    check-cast v15, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mPrimaryItemResId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->createMoreItemView(Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;I)Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    .line 123
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    if-eq v15, v10, :cond_b

    .line 124
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    check-cast v15, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15, v5}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->addItemView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 128
    :cond_b
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getSecondaryContainer(Z)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, childIndex:I
    :goto_5
    if-ge v5, v8, :cond_f

    .line 131
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 132
    .restart local v6       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 133
    .restart local v4       #convertView:Landroid/view/View;
    instance-of v15, v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v15, :cond_e

    move-object v15, v4

    check-cast v15, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v15}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v12

    .line 135
    .restart local v12       #oldItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->getSecondaryItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;)Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;

    move-result-object v7

    .line 137
    .local v7, itemView:Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;
    if-eq v6, v12, :cond_c

    .line 139
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;->setPressed(Z)V

    .line 140
    invoke-virtual {v7}, Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;->jumpDrawablesToCurrentState()V

    .line 143
    :cond_c
    if-eq v7, v4, :cond_d

    .line 144
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7, v2}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->addItemView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 145
    invoke-virtual {v7, v9}, Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 130
    :cond_d
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 133
    .end local v7           #itemView:Lcom/miui/internal/v5/view/menu/ActionMenuSecondaryItemView;
    .end local v12           #oldItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_e
    const/4 v12, 0x0

    goto :goto_6

    .line 149
    .end local v4           #convertView:Landroid/view/View;
    .end local v6           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_f
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    sub-int/2addr v15, v2

    invoke-virtual {v3, v2, v15}, Landroid/view/ViewGroup;->removeViews(II)V

    goto/16 :goto_0

    .line 151
    .end local v2           #childIndex:I
    .end local v10           #moreView:Landroid/view/View;
    :cond_10
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;->mMoreView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    .line 152
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    sub-int/2addr v15, v5

    invoke-virtual {v3, v5, v15}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 154
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getSecondaryContainer(Z)Landroid/widget/LinearLayout;

    move-result-object v14

    .line 155
    .restart local v14       #secondaryContainer:Landroid/view/ViewGroup;
    if-eqz v14, :cond_1

    .line 156
    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_0
.end method
