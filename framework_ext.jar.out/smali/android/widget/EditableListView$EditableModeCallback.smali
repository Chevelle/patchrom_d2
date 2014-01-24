.class public Landroid/widget/EditableListView$EditableModeCallback;
.super Ljava/lang/Object;
.source "EditableListView.java"

# interfaces
.implements Landroid/widget/EditableListView$EditableListViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EditableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditableModeCallback"
.end annotation


# instance fields
.field protected mEditActionMode:Lmiui/v5/view/EditActionMode;

.field protected mEditableListView:Landroid/widget/EditableListView;


# direct methods
.method public constructor <init>(Landroid/widget/EditableListView;)V
    .locals 0
    .parameter "editableListView"

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditableListView:Landroid/widget/EditableListView;

    .line 271
    return-void
.end method

.method private updateCheckStatus()V
    .locals 6

    .prologue
    const v5, 0x102001a

    .line 309
    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditActionMode:Lmiui/v5/view/EditActionMode;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditActionMode:Lmiui/v5/view/EditActionMode;

    iget-object v1, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x6100010

    iget-object v3, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v3}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v4}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/v5/view/EditActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isAllChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditActionMode:Lmiui/v5/view/EditActionMode;

    const v1, 0x60c01fa

    invoke-virtual {v0, v5, v1}, Lmiui/v5/view/EditActionMode;->setButton(II)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditActionMode:Lmiui/v5/view/EditActionMode;

    const v1, 0x60c01fd

    invoke-virtual {v0, v5, v1}, Lmiui/v5/view/EditActionMode;->setButton(II)V

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 285
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 305
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 287
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 291
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 295
    :sswitch_2
    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isAllChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->checkNothing()V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->checkAll()V

    goto :goto_0

    .line 285
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_1
        0x102001a -> :sswitch_2
        0x60b0046 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBatchCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 0
    .parameter "mode"
    .parameter "checked"

    .prologue
    .line 329
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableModeCallback;->updateCheckStatus()V

    .line 330
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 275
    check-cast p1, Lmiui/v5/view/EditActionMode;

    .end local p1
    iput-object p1, p0, Landroid/widget/EditableListView$EditableModeCallback;->mEditActionMode:Lmiui/v5/view/EditActionMode;

    .line 276
    const v0, 0x60b0046

    const v1, 0x60c012f

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x602014d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 279
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableModeCallback;->updateCheckStatus()V

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 334
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 324
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableModeCallback;->updateCheckStatus()V

    .line 325
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method
