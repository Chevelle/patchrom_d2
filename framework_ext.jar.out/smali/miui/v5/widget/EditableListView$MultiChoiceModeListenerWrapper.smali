.class Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;
.super Ljava/lang/Object;
.source "EditableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/EditableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiChoiceModeListenerWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Lmiui/v5/widget/EditableListView;


# direct methods
.method public constructor <init>(Lmiui/v5/widget/EditableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 249
    move-object v0, p1

    check-cast v0, Lmiui/v5/view/EditActionMode;

    .line 250
    .local v0, editActionMode:Lmiui/v5/view/EditActionMode;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x1020019

    if-ne v1, v2, :cond_1

    .line 251
    invoke-virtual {v0}, Lmiui/v5/view/EditActionMode;->finish()V

    .line 260
    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v1, v0, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 252
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102001a

    if-ne v1, v2, :cond_0

    .line 253
    iget-object v1, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    invoke-virtual {v1}, Lmiui/v5/widget/EditableListView;->isAllChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    invoke-virtual {v1}, Lmiui/v5/widget/EditableListView;->uncheckAll()V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v1, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    invoke-virtual {v1}, Lmiui/v5/widget/EditableListView;->checkAll()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 239
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    check-cast p1, Lmiui/v5/view/EditActionMode;

    .end local p1
    #setter for: Lmiui/v5/widget/EditableListView;->mActionMode:Lmiui/v5/view/EditActionMode;
    invoke-static {v0, p1}, Lmiui/v5/widget/EditableListView;->access$002(Lmiui/v5/widget/EditableListView;Lmiui/v5/view/EditActionMode;)Lmiui/v5/view/EditActionMode;

    .line 241
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 233
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 234
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    const/4 v1, 0x0

    #setter for: Lmiui/v5/widget/EditableListView;->mActionMode:Lmiui/v5/view/EditActionMode;
    invoke-static {v0, v1}, Lmiui/v5/widget/EditableListView;->access$002(Lmiui/v5/widget/EditableListView;Lmiui/v5/view/EditActionMode;)Lmiui/v5/view/EditActionMode;

    .line 235
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 266
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    iget-object v1, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    iget-object v2, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    invoke-virtual {v2}, Lmiui/v5/widget/EditableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Lmiui/v5/widget/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lmiui/v5/widget/EditableListView;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 267
    iget-object v1, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    move-object v0, p1

    check-cast v0, Lmiui/v5/view/EditActionMode;

    invoke-virtual {v1, v0}, Lmiui/v5/widget/EditableListView;->updateCheckStatus(Lmiui/v5/view/EditActionMode;)V

    .line 269
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 270
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 228
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 223
    iput-object p1, p0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 224
    return-void
.end method
