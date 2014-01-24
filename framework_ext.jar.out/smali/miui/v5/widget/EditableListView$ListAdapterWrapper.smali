.class Lmiui/v5/widget/EditableListView$ListAdapterWrapper;
.super Ljava/lang/Object;
.source "EditableListView.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/EditableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapterWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lmiui/v5/widget/EditableListView;


# direct methods
.method public constructor <init>(Lmiui/v5/widget/EditableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 305
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 310
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 333
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 320
    iget-object v2, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 322
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    invoke-virtual {v2, v1}, Lmiui/v5/widget/EditableListView;->findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v0

    .line 323
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 324
    iget-object v2, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    invoke-virtual {v2}, Lmiui/v5/widget/EditableListView;->isInActionMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 325
    iget-object v2, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->this$0:Lmiui/v5/widget/EditableListView;

    invoke-virtual {v2}, Lmiui/v5/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 328
    :cond_0
    return-object v1

    .line 324
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrapped()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 353
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 290
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 291
    return-void
.end method

.method public setWrapped(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 281
    iput-object p1, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    .line 282
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 295
    iget-object v0, p0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 296
    return-void
.end method
