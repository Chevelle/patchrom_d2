.class public interface abstract Lmiui/v5/widget/menubar/MenuBarView$ItemView;
.super Ljava/lang/Object;
.source "MenuBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/menubar/MenuBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemView"
.end annotation


# virtual methods
.method public abstract getItemData()Lmiui/v5/widget/menubar/MenuBarItem;
.end method

.method public abstract initialize(Lmiui/v5/widget/menubar/MenuBarItem;I)V
.end method

.method public abstract prefersCondensedTitle()Z
.end method

.method public abstract setCheckable(Z)V
.end method

.method public abstract setChecked(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setShortcut(ZC)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract showsIcon()Z
.end method
