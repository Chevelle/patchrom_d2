.class public Lmiui/v5/widget/EditableListView;
.super Landroid/widget/ListView;
.source "EditableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/EditableListView$ListAdapterWrapper;,
        Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;
    }
.end annotation


# static fields
.field private static final KEY_CHECKBOX:I = 0x7fffffff


# instance fields
.field private mActionMode:Lmiui/v5/view/EditActionMode;

.field private mListAdapterWrapper:Lmiui/v5/widget/EditableListView$ListAdapterWrapper;

.field private mMultiChoiceModeListenerWrapper:Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method static synthetic access$002(Lmiui/v5/widget/EditableListView;Lmiui/v5/view/EditActionMode;)Lmiui/v5/view/EditActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lmiui/v5/widget/EditableListView;->mActionMode:Lmiui/v5/view/EditActionMode;

    return-object p1
.end method


# virtual methods
.method protected canCheckAll()Z
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/EditableListView;->mActionMode:Lmiui/v5/view/EditActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAll()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/v5/widget/EditableListView;->checkAllInternal(Z)V

    .line 35
    return-void
.end method

.method protected checkAllInternal(Z)V
    .locals 11
    .parameter "checked"

    .prologue
    .line 82
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->canCheckAll()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->isAllChecked()Z

    move-result v8

    if-ne v8, p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    if-eqz p1, :cond_8

    .line 87
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 88
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getHeaderViewsCount()I

    move-result v6

    .line 89
    .local v6, headers:I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getFooterViewsCount()I

    move-result v9

    sub-int v4, v8, v9

    .line 91
    .local v4, count:I
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 92
    .local v1, checkStates:Landroid/util/SparseBooleanArray;
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getCheckedIdStates()Landroid/util/LongSparseArray;

    move-result-object v2

    .line 93
    .local v2, checkedIdStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_3

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v5, 0x1

    .line 95
    .local v5, hasStableIds:Z
    :goto_1
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getCheckedItemCount()I

    move-result v3

    .line 96
    .local v3, checkedItemCount:I
    move v7, v6

    .local v7, i:I
    :goto_2
    if-ge v7, v4, :cond_7

    .line 97
    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 96
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 93
    .end local v3           #checkedItemCount:I
    .end local v5           #hasStableIds:Z
    .end local v7           #i:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 101
    .restart local v3       #checkedItemCount:I
    .restart local v5       #hasStableIds:Z
    .restart local v7       #i:I
    :cond_4
    if-eqz p1, :cond_5

    .line 102
    invoke-virtual {v1, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 113
    :goto_4
    invoke-virtual {v1, v7, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 115
    if-eqz v5, :cond_2

    .line 116
    if-eqz p1, :cond_6

    .line 117
    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 107
    :cond_5
    invoke-virtual {v1, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 110
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 119
    :cond_6
    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_3

    .line 123
    :cond_7
    invoke-virtual {p0, v3}, Lmiui/v5/widget/EditableListView;->setCheckedItemCount(I)V

    .line 128
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #checkStates:Landroid/util/SparseBooleanArray;
    .end local v2           #checkedIdStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v3           #checkedItemCount:I
    .end local v4           #count:I
    .end local v5           #hasStableIds:Z
    .end local v6           #headers:I
    .end local v7           #i:I
    :goto_5
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->updateOnScreenCheckedViews()V

    .line 129
    iget-object v8, p0, Lmiui/v5/widget/EditableListView;->mActionMode:Lmiui/v5/view/EditActionMode;

    invoke-virtual {p0, v8}, Lmiui/v5/widget/EditableListView;->updateCheckStatus(Lmiui/v5/view/EditActionMode;)V

    goto :goto_0

    .line 125
    :cond_8
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->clearChoices()V

    goto :goto_5
.end method

.method protected findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;
    .locals 3
    .parameter "view"

    .prologue
    const v2, 0x7fffffff

    .line 185
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 187
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-nez v0, :cond_0

    .line 188
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #checkBox:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 189
    .restart local v0       #checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 194
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmiui/v5/widget/EditableListView;->mListAdapterWrapper:Lmiui/v5/widget/EditableListView$ListAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/EditableListView;->mListAdapterWrapper:Lmiui/v5/widget/EditableListView$ListAdapterWrapper;

    invoke-virtual {v0}, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->getWrapped()Landroid/widget/ListAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getEnabledItemCount()I
    .locals 7

    .prologue
    .line 198
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 199
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 200
    const/4 v1, 0x0

    .line 212
    :cond_0
    return v1

    .line 203
    :cond_1
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getHeaderViewsCount()I

    move-result v4

    .line 204
    .local v4, start:I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getFooterViewsCount()I

    move-result v6

    sub-int v2, v5, v6

    .line 205
    .local v2, end:I
    const/4 v1, 0x0

    .line 206
    .local v1, count:I
    move v3, v4

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 207
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 208
    add-int/lit8 v1, v1, 0x1

    .line 206
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isAllChecked()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getCheckedItemCount()I

    move-result v1

    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getEnabledItemCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isFooterOrHeader(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 179
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getHeaderViewsCount()I

    move-result v1

    .line 180
    .local v1, headers:I
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 181
    .local v0, count:I
    if-ge p1, v1, :cond_0

    if-lt p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isInActionMode()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/v5/widget/EditableListView;->mActionMode:Lmiui/v5/view/EditActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemIdChecked(J)Z
    .locals 4
    .parameter "itemId"

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, retval:Z
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getCheckedIdStates()Landroid/util/LongSparseArray;

    move-result-object v0

    .line 48
    .local v0, checkedIdStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 50
    .local v1, position:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/v5/widget/EditableListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 53
    .end local v1           #position:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return v2

    .line 50
    .restart local v1       #position:Ljava/lang/Integer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/v5/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 62
    new-instance v0, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;

    invoke-direct {v0, p0}, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;-><init>(Lmiui/v5/widget/EditableListView;)V

    iput-object v0, p0, Lmiui/v5/widget/EditableListView;->mListAdapterWrapper:Lmiui/v5/widget/EditableListView$ListAdapterWrapper;

    .line 63
    iget-object v0, p0, Lmiui/v5/widget/EditableListView;->mListAdapterWrapper:Lmiui/v5/widget/EditableListView$ListAdapterWrapper;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/EditableListView$ListAdapterWrapper;->setWrapped(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, p0, Lmiui/v5/widget/EditableListView;->mListAdapterWrapper:Lmiui/v5/widget/EditableListView$ListAdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 75
    new-instance v0, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;

    invoke-direct {v0, p0}, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;-><init>(Lmiui/v5/widget/EditableListView;)V

    iput-object v0, p0, Lmiui/v5/widget/EditableListView;->mMultiChoiceModeListenerWrapper:Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;

    .line 76
    iget-object v0, p0, Lmiui/v5/widget/EditableListView;->mMultiChoiceModeListenerWrapper:Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 78
    iget-object v0, p0, Lmiui/v5/widget/EditableListView;->mMultiChoiceModeListenerWrapper:Lmiui/v5/widget/EditableListView$MultiChoiceModeListenerWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 79
    return-void
.end method

.method public uncheckAll()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/EditableListView;->checkAllInternal(Z)V

    .line 39
    return-void
.end method

.method protected updateCheckStatus(Lmiui/v5/view/EditActionMode;)V
    .locals 7
    .parameter "actionMode"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 160
    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getCheckedItemCount()I

    move-result v0

    .line 162
    .local v0, checkItemCount:I
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 163
    .local v2, r:Landroid/content/res/Resources;
    if-nez v0, :cond_1

    .line 164
    const v3, 0x60c01fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiui/v5/view/EditActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    :goto_0
    const v6, 0x102001a

    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->isAllChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x60c01fa

    :goto_1
    invoke-virtual {p1, v6, v3}, Lmiui/v5/view/EditActionMode;->setButton(II)V

    .line 174
    invoke-virtual {p1}, Lmiui/v5/view/EditActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getCheckedItemCount()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    invoke-interface {v6, v5, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 176
    .end local v0           #checkItemCount:I
    .end local v2           #r:Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 166
    .restart local v0       #checkItemCount:I
    .restart local v2       #r:Landroid/content/res/Resources;
    :cond_1
    const v3, 0x6100010

    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getCheckedItemCount()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, format:Ljava/lang/String;
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getCheckedItemCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiui/v5/view/EditActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    .end local v1           #format:Ljava/lang/String;
    :cond_2
    const v3, 0x60c01fd

    goto :goto_1

    :cond_3
    move v3, v5

    .line 174
    goto :goto_2
.end method

.method protected updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .locals 3
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 137
    invoke-virtual {p0, p2}, Lmiui/v5/widget/EditableListView;->isFooterOrHeader(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 142
    .local v1, checked:Z
    invoke-virtual {p0, p1}, Lmiui/v5/widget/EditableListView;->findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v0

    .line 143
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method protected updateOnScreenCheckedViews()V
    .locals 7

    .prologue
    .line 150
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getFirstVisiblePosition()I

    move-result v2

    .line 151
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getChildCount()I

    move-result v1

    .line 152
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 153
    invoke-virtual {p0, v3}, Lmiui/v5/widget/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, child:Landroid/view/View;
    add-int v4, v2, v3

    .line 155
    .local v4, position:I
    invoke-virtual {p0}, Lmiui/v5/widget/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {p0, v0, v4, v5, v6}, Lmiui/v5/widget/EditableListView;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v0           #child:Landroid/view/View;
    .end local v4           #position:I
    :cond_0
    return-void
.end method
