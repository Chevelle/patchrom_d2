.class public Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;
.super Landroid/widget/TextView;
.source "IconMenuBarSecondaryItemView.java"

# interfaces
.implements Lmiui/v5/widget/menubar/MenuBarView$ItemView;


# instance fields
.field private mItemData:Lmiui/v5/widget/menubar/MenuBarItem;

.field private mItemInvoker:Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public getItemData()Lmiui/v5/widget/menubar/MenuBarItem;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->mItemData:Lmiui/v5/widget/menubar/MenuBarItem;

    return-object v0
.end method

.method public initialize(Lmiui/v5/widget/menubar/MenuBarItem;I)V
    .locals 1
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 24
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->mItemData:Lmiui/v5/widget/menubar/MenuBarItem;

    .line 26
    invoke-virtual {p1}, Lmiui/v5/widget/menubar/MenuBarItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p1}, Lmiui/v5/widget/menubar/MenuBarItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-virtual {p1}, Lmiui/v5/widget/menubar/MenuBarItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->setEnabled(Z)V

    .line 29
    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :goto_0
    return v0

    .line 67
    :cond_0
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->mItemInvoker:Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->mItemInvoker:Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;

    iget-object v3, p0, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->mItemData:Lmiui/v5/widget/menubar/MenuBarItem;

    invoke-interface {v2, v3}, Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;->invokeItem(Lmiui/v5/widget/menubar/MenuBarItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0, v1}, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->playSoundEffect(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 43
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 47
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 55
    return-void
.end method

.method public setItemInvoker(Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;)V
    .locals 0
    .parameter "itemInvoker"

    .prologue
    .line 80
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->mItemInvoker:Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;

    .line 81
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 51
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 36
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 37
    .local v0, currentTitle:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/v5/widget/menubar/IconMenuBarSecondaryItemView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_1
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method
