.class public interface abstract Lmiui/v5/widget/TabController$TabEditor;
.super Ljava/lang/Object;
.source "TabController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/TabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabEditor"
.end annotation


# virtual methods
.method public abstract add(Lmiui/v5/widget/TabController$TabEditCommand;)Lmiui/v5/widget/TabController$TabEditor;
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;)Lmiui/v5/widget/TabController$TabEditor;
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Ljava/lang/String;)Lmiui/v5/widget/TabController$TabEditor;
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Ljava/lang/String;Z)Lmiui/v5/widget/TabController$TabEditor;
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;Landroid/app/Fragment;Z)Lmiui/v5/widget/TabController$TabEditor;
.end method

.method public abstract commit()Z
.end method

.method public abstract removeTab(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabController$TabEditor;
.end method
