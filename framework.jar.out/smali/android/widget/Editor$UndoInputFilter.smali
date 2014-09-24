.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation


# instance fields
.field final mEditor:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 3933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3934
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 3935
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3944
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-object v2, v3, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 3945
    .local v2, um:Landroid/content/UndoManager;
    invoke-virtual {v2}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4010
    :goto_0
    return-object v6

    .line 3950
    :cond_0
    const-string v3, "Edit text"

    invoke-virtual {v2, v3}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 3951
    const-class v3, Landroid/widget/Editor$TextModifyOperation;

    iget-object v4, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$TextModifyOperation;

    .line 3953
    .local v0, op:Landroid/widget/Editor$TextModifyOperation;
    if-eqz v0, :cond_6

    .line 3957
    iget-object v3, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    .line 3961
    if-ge p2, p3, :cond_5

    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    if-lt p5, v3, :cond_1

    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-le p6, v3, :cond_2

    :cond_1
    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-ne p5, v3, :cond_5

    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-ne p6, v3, :cond_5

    .line 3963
    :cond_2
    sub-int v3, p3, p2

    add-int/2addr v3, p5

    iput v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    .line 3964
    invoke-virtual {v2}, Landroid/content/UndoManager;->endUpdate()V

    goto :goto_0

    .line 3971
    :cond_3
    if-ne p2, p3, :cond_5

    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    add-int/lit8 v3, v3, -0x1

    if-ne p6, v3, :cond_5

    .line 3973
    iget-object v3, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/SpannableString;

    if-eqz v3, :cond_4

    .line 3974
    iget-object v1, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 3978
    .local v1, str:Landroid/text/SpannableStringBuilder;
    :goto_1
    invoke-virtual {v1, v7, p4, p5, p6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 3979
    iput p5, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    .line 3980
    iput-object v1, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    .line 3981
    invoke-virtual {v2}, Landroid/content/UndoManager;->endUpdate()V

    goto :goto_0

    .line 3976
    .end local v1           #str:Landroid/text/SpannableStringBuilder;
    :cond_4
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v3, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1       #str:Landroid/text/SpannableStringBuilder;
    goto :goto_1

    .line 3991
    .end local v1           #str:Landroid/text/SpannableStringBuilder;
    :cond_5
    invoke-virtual {v2, v6}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 3992
    const-string v3, "Edit text"

    invoke-virtual {v2, v3}, Landroid/content/UndoManager;->setUndoLabel(Ljava/lang/CharSequence;)V

    .line 3996
    :cond_6
    new-instance v0, Landroid/widget/Editor$TextModifyOperation;

    .end local v0           #op:Landroid/widget/Editor$TextModifyOperation;
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    invoke-direct {v0, v3}, Landroid/widget/Editor$TextModifyOperation;-><init>(Landroid/content/UndoOwner;)V

    .line 3997
    .restart local v0       #op:Landroid/widget/Editor$TextModifyOperation;
    iput p5, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    .line 3998
    if-ge p2, p3, :cond_8

    .line 3999
    sub-int v3, p3, p2

    add-int/2addr v3, p5

    iput v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    .line 4003
    :goto_2
    if-ge p5, p6, :cond_7

    .line 4004
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    .line 4008
    :cond_7
    invoke-virtual {v2, v0, v7}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 4009
    invoke-virtual {v2}, Landroid/content/UndoManager;->endUpdate()V

    goto/16 :goto_0

    .line 4001
    :cond_8
    iput p5, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    goto :goto_2
.end method
