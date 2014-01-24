.class public Landroid/widget/EditableListView;
.super Landroid/widget/ListView;
.source "EditableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditableListView$EditableModeCallback;,
        Landroid/widget/EditableListView$EditableModeWrapper;,
        Landroid/widget/EditableListView$EditableListViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditableListView"


# instance fields
.field private mIsUpdateBatchChecked:Z

.field private mKeepEditModeIfNoItemChecked:Z

.field private mMultiChoiceModeListener:Landroid/widget/EditableListView$EditableListViewListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mShowCheckBoxInNoneEditMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Landroid/widget/EditableListView$1;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$1;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    new-instance v0, Landroid/widget/EditableListView$1;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$1;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 39
    return-void
.end method

.method static synthetic access$000(Landroid/widget/EditableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/EditableListView;->enterEditModeInner()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/EditableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/EditableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Landroid/widget/EditableListView;->mKeepEditModeIfNoItemChecked:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/EditableListView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/EditableListView;->isValidPos(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/EditableListView;)Landroid/widget/EditableListView$EditableListViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeListener:Landroid/widget/EditableListView$EditableListViewListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/EditableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/EditableListView;->updateOnScreenCheckedViews()V

    return-void
.end method

.method private enterEditModeInner()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 59
    :cond_0
    return-void
.end method

.method private getEnabledCount()I
    .locals 6

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v3

    .local v3, start:I
    iget-object v4, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v5

    sub-int v1, v4, v5

    .line 84
    .local v1, end:I
    const/4 v0, 0x0

    .line 85
    .local v0, count:I
    move v2, v3

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 86
    iget-object v4, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 85
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_1
    return v0
.end method

.method private isValidPos(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v1

    .line 191
    .local v1, numHeaders:I
    iget-object v2, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 192
    .local v0, count:I
    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateBatchChecked(Z)V
    .locals 9
    .parameter "checked"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 130
    iget-object v4, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/widget/EditableListView;->mChoiceMode:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    iget v4, p0, Landroid/widget/EditableListView;->mChoiceMode:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iput-boolean v1, p0, Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z

    .line 137
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v3

    .line 138
    .local v3, numHeaders:I
    iget-object v4, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v6

    sub-int v0, v4, v6

    .line 139
    .local v0, count:I
    iget-object v4, p0, Landroid/widget/EditableListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    .local v1, hasStableIds:Z
    :goto_1
    move v2, v3

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_7

    .line 142
    iget-object v4, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 141
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1           #hasStableIds:Z
    .end local v2           #i:I
    :cond_3
    move v1, v5

    .line 139
    goto :goto_1

    .line 146
    .restart local v1       #hasStableIds:Z
    .restart local v2       #i:I
    :cond_4
    if-eqz p1, :cond_5

    .line 147
    iget-object v4, p0, Landroid/widget/EditableListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 150
    iget v4, p0, Landroid/widget/EditableListView;->mCheckedItemCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/EditableListView;->mCheckedItemCount:I

    .line 157
    :goto_4
    iget-object v4, p0, Landroid/widget/EditableListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 158
    if-eqz v1, :cond_2

    .line 159
    if-eqz p1, :cond_6

    .line 160
    iget-object v4, p0, Landroid/widget/EditableListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v6, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 152
    :cond_5
    iget-object v4, p0, Landroid/widget/EditableListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    iget v4, p0, Landroid/widget/EditableListView;->mCheckedItemCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/widget/EditableListView;->mCheckedItemCount:I

    goto :goto_4

    .line 162
    :cond_6
    iget-object v4, p0, Landroid/widget/EditableListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v6, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_3

    .line 167
    :cond_7
    iget-object v4, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    check-cast v4, Landroid/widget/EditableListView$EditableModeWrapper;

    iget-object v6, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4, v6, p1}, Landroid/widget/EditableListView$EditableModeWrapper;->onBatchCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 170
    invoke-direct {p0}, Landroid/widget/EditableListView;->updateOnScreenCheckedViews()V

    .line 171
    iput-boolean v5, p0, Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z

    goto/16 :goto_0
.end method

.method private updateCheckBoxState(Landroid/widget/CheckBox;I)V
    .locals 1
    .parameter "checkBox"
    .parameter "position"

    .prologue
    .line 226
    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Landroid/widget/EditableListView;->isValidPos(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/EditableListView;->mShowCheckBoxInNoneEditMode:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 231
    :cond_1
    return-void

    .line 227
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateOnScreenCheckedViews()V
    .locals 7

    .prologue
    .line 215
    iget v3, p0, Landroid/widget/EditableListView;->mFirstPosition:I

    .line 216
    .local v3, firstPos:I
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getChildCount()I

    move-result v2

    .line 217
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 218
    invoke-virtual {p0, v4}, Landroid/widget/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 219
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    .line 220
    .local v5, position:I
    const v6, 0x1020001

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 221
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-direct {p0, v0, v5}, Landroid/widget/EditableListView;->updateCheckBoxState(Landroid/widget/CheckBox;I)V

    .line 217
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 223
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #child:Landroid/view/View;
    .end local v5           #position:I
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAll()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/EditableListView;->updateBatchChecked(Z)V

    .line 183
    return-void
.end method

.method public checkNothing()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/EditableListView;->updateBatchChecked(Z)V

    .line 187
    return-void
.end method

.method public enterEditMode()V
    .locals 6

    .prologue
    .line 42
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 46
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeListener:Landroid/widget/EditableListView$EditableListViewListener;

    iget-object v1, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/EditableListView$EditableListViewListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 48
    iget-boolean v0, p0, Landroid/widget/EditableListView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/EditableListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/EditableListView;->mDataChanged:Z

    .line 50
    invoke-virtual {p0}, Landroid/widget/EditableListView;->rememberSyncState()V

    .line 51
    invoke-virtual {p0}, Landroid/widget/EditableListView;->requestLayout()V

    goto :goto_0
.end method

.method public exitEditMode()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 73
    :cond_0
    return-void
.end method

.method public isAllChecked()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0}, Landroid/widget/EditableListView;->getEnabledCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 79
    :cond_0
    return v0
.end method

.method public isEditMode()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemCheckedById(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 94
    iget-object v1, p0, Landroid/widget/EditableListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 95
    .local v0, pos:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditableListView;->isItemChecked(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "isScrap"

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 209
    .local v1, view:Landroid/view/View;
    const v2, 0x1020001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 210
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-direct {p0, v0, p1}, Landroid/widget/EditableListView;->updateCheckBoxState(Landroid/widget/CheckBox;I)V

    .line 211
    return-object v1
.end method

.method public setCheckBoxVisiableInNoneEditMode(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 66
    iput-boolean p1, p0, Landroid/widget/EditableListView;->mShowCheckBoxInNoneEditMode:Z

    .line 67
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1
    .parameter "position"
    .parameter "value"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Landroid/widget/EditableListView;->isValidPos(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 179
    :cond_0
    return-void
.end method

.method public setKeepExitModeIfNoItemChecked(Z)V
    .locals 0
    .parameter "keepEidtMode"

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/widget/EditableListView;->mKeepEditModeIfNoItemChecked:Z

    .line 63
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 122
    const-string v0, "EditableListView"

    const-string v1, "should use setMultiChoiceModeListener(final EditableListViewListener listener)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/widget/EditableListView$EditableModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$EditableModeWrapper;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 113
    :cond_0
    iput-object p1, p0, Landroid/widget/EditableListView;->mMultiChoiceModeListener:Landroid/widget/EditableListView$EditableListViewListener;

    .line 114
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 116
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->setChoiceMode(I)V

    .line 117
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 118
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Landroid/widget/EditableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    goto :goto_0
.end method
