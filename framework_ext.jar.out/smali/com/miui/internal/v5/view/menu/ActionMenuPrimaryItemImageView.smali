.class public Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;
.super Landroid/widget/ImageView;
.source "ActionMenuPrimaryItemImageView.java"

# interfaces
.implements Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;


# instance fields
.field private mIsCheckable:Z

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setSelected(Z)V

    .line 29
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setCheckable(Z)V

    .line 32
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setChecked(Z)V

    .line 33
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setEnabled(Z)V

    .line 34
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 95
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 96
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 98
    .local v1, backgroundWidth:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 99
    .local v0, backgroundHeight:I
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setMeasuredDimension(II)V

    .line 102
    .end local v0           #backgroundHeight:I
    .end local v1           #backgroundWidth:I
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    :goto_0
    return v0

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->playSoundEffect(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mIsCheckable:Z

    .line 48
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mIsCheckable:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setSelected(Z)V

    .line 55
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .parameter "itemInvoker"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 106
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 59
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 43
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method
