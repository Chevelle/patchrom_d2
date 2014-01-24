.class public interface abstract Lmiui/v5/widget/menubar/MenuBar$Callback;
.super Ljava/lang/Object;
.source "MenuBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/menubar/MenuBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCreateMenuBarPanel(Landroid/view/Menu;)Z
.end method

.method public abstract onMenuBarPanelClose(Landroid/view/Menu;)V
.end method

.method public abstract onMenuBarPanelItemSelected(Landroid/view/Menu;Landroid/view/MenuItem;)Z
.end method

.method public abstract onMenuBarPanelModeChange(Landroid/view/Menu;I)V
.end method

.method public abstract onMenuBarPanelOpen(Landroid/view/Menu;)V
.end method

.method public abstract onPrepareMenuBarPanel(Landroid/view/Menu;)Z
.end method
