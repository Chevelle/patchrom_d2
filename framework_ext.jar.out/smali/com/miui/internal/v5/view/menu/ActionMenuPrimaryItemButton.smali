.class public Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;
.super Landroid/widget/Button;
.source "ActionMenuPrimaryItemButton.java"

# interfaces
.implements Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;


# instance fields
.field private mIsCheckable:Z

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->setSelected(Z)V

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->setCheckable(Z)V

    .line 40
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->setChecked(Z)V

    .line 41
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->setEnabled(Z)V

    .line 42
    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->playSoundEffect(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 98
    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->mIsCheckable:Z

    .line 57
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->mIsCheckable:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->setSelected(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "icon"

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 73
    .local v0, current:Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :cond_0

    .line 74
    invoke-virtual {p0, v3, p1, v3, v3}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_0
    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .parameter "itemInvoker"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 104
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 68
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemButton;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method
