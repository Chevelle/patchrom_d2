.class public Lmiui/v5/widget/menubar/MenuBarItem;
.super Ljava/lang/Object;
.source "MenuBarItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field private static final IS_SECONDARY:I = -0x80000000

.field private static final NO_ICON:I


# instance fields
.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field protected final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mItemCallback:Ljava/lang/Runnable;

.field protected mMenu:Lmiui/v5/widget/menubar/MenuBar;

.field protected final mOrder:I

.field private mTag:Ljava/lang/Object;

.field protected mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lmiui/v5/widget/menubar/MenuBar;IILjava/lang/CharSequence;)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    .line 43
    iput p2, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mId:I

    .line 44
    iput p3, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mOrder:I

    .line 45
    iput-object p4, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mTitle:Ljava/lang/CharSequence;

    .line 48
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    .line 49
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mOrder:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 122
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    iget-object v2, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v1, v2, p0}, Lmiui/v5/widget/menubar/MenuBar;->dispatchMenuItemSelected(Lmiui/v5/widget/menubar/MenuBar;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 138
    :try_start_0
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 144
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSecondary()Z
    .locals 2

    .prologue
    .line 336
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0
    .parameter "actionProvider"

    .prologue
    .line 168
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 0
    .parameter "resId"

    .prologue
    .line 176
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0
    .parameter "view"

    .prologue
    .line 172
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .parameter "alphaChar"

    .prologue
    .line 180
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 3
    .parameter "checkable"

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    .line 190
    :goto_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBarItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    if-eqz v1, :cond_1

    .line 192
    check-cast v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-interface {v0, p1}, Lmiui/v5/widget/menubar/MenuBarView$ItemView;->setCheckable(Z)V

    .line 197
    :goto_1
    return-object p0

    .line 187
    :cond_0
    iget v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    goto :goto_0

    .line 194
    .restart local v0       #tag:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    goto :goto_1
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 3
    .parameter "checked"

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    .line 207
    :goto_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBarItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    if-eqz v1, :cond_1

    .line 209
    check-cast v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-interface {v0, p1}, Lmiui/v5/widget/menubar/MenuBarView$ItemView;->setChecked(Z)V

    .line 214
    :goto_1
    return-object p0

    .line 204
    :cond_0
    iget v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    goto :goto_0

    .line 211
    .restart local v0       #tag:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    goto :goto_1
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 3
    .parameter "enabled"

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    iget v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    .line 224
    :goto_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBarItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    if-eqz v1, :cond_1

    .line 226
    check-cast v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-interface {v0, p1}, Lmiui/v5/widget/menubar/MenuBarView$ItemView;->setEnabled(Z)V

    .line 231
    :goto_1
    return-object p0

    .line 221
    :cond_0
    iget v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    goto :goto_0

    .line 228
    .restart local v0       #tag:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    goto :goto_1
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "iconResId"

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 252
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/MenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBarItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 3
    .parameter "icon"

    .prologue
    .line 235
    iput-object p1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBarItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    if-eqz v1, :cond_0

    .line 239
    check-cast v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-interface {v0, p1}, Lmiui/v5/widget/menubar/MenuBarView$ItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 244
    :goto_0
    return-object p0

    .line 241
    .restart local v0       #tag:Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1
    .parameter "intent"

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mIntent:Landroid/content/Intent;

    .line 257
    iput-object p1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mIntent:Landroid/content/Intent;

    .line 259
    return-object p0
.end method

.method setIsSecondary(Z)V
    .locals 2
    .parameter "isSecondary"

    .prologue
    .line 328
    if-eqz p1, :cond_0

    .line 329
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    goto :goto_0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .parameter "numericChar"

    .prologue
    .line 263
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "listener"

    .prologue
    .line 267
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 272
    iput-object p1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 273
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0
    .parameter "numericChar"
    .parameter "alphaChar"

    .prologue
    .line 277
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .parameter "actionEnum"

    .prologue
    .line 281
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .parameter "actionEnum"

    .prologue
    .line 284
    return-object p0
.end method

.method setTag(Ljava/lang/Object;)Landroid/view/MenuItem;
    .locals 0
    .parameter "tag"

    .prologue
    .line 309
    iput-object p1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mTag:Ljava/lang/Object;

    .line 311
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    .line 301
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/MenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBarItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3
    .parameter "title"

    .prologue
    .line 288
    iput-object p1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mTitle:Ljava/lang/CharSequence;

    .line 290
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBarItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    if-eqz v1, :cond_0

    .line 292
    check-cast v0, Lmiui/v5/widget/menubar/MenuBarView$ItemView;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-interface {v0, p1}, Lmiui/v5/widget/menubar/MenuBarView$ItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    :goto_0
    return-object p0

    .line 294
    .restart local v0       #tag:Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .parameter "title"

    .prologue
    .line 305
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "visible"

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lmiui/v5/widget/menubar/MenuBarItem;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0, p0}, Lmiui/v5/widget/menubar/MenuBar;->onItemVisibleChanged(Lmiui/v5/widget/menubar/MenuBarItem;)V

    .line 324
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .parameter "shown"

    .prologue
    const/4 v2, 0x0

    .line 315
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    .line 316
    .local v0, oldFlags:I
    iget v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    .line 317
    iget v1, p0, Lmiui/v5/widget/menubar/MenuBarItem;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 316
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method
