.class public interface abstract Lmiui/v5/widget/menubar/MenuBarPresenter;
.super Ljava/lang/Object;
.source "MenuBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lmiui/v5/widget/menubar/MenuBar;Lmiui/v5/widget/menubar/MenuBarItem;)Z
.end method

.method public abstract expandItemActionView(Lmiui/v5/widget/menubar/MenuBar;Lmiui/v5/widget/menubar/MenuBarItem;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getMenuView(Landroid/view/ViewGroup;)Lmiui/v5/widget/menubar/MenuBarView;
.end method

.method public abstract initForMenu(Landroid/content/Context;Lmiui/v5/widget/menubar/MenuBar;)V
.end method

.method public abstract onCloseMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V
.end method

.method public abstract onExpandMenu(Lmiui/v5/widget/menubar/MenuBar;Z)Z
.end method

.method public abstract onOpenMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState()Landroid/os/Parcelable;
.end method

.method public abstract onScroll(FZZ)V
.end method

.method public abstract onScrollStateChanged(I)V
.end method

.method public abstract setCallback(Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;)V
.end method

.method public abstract updateMenuView(Z)V
.end method
