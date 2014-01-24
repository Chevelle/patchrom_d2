.class Lmiui/widget/ClearableEditText$1;
.super Ljava/lang/Object;
.source "ClearableEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ClearableEditText;


# direct methods
.method constructor <init>(Lmiui/widget/ClearableEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    #setter for: Lmiui/widget/ClearableEditText;->mShown:Z
    invoke-static {v0, v2}, Lmiui/widget/ClearableEditText;->access$002(Lmiui/widget/ClearableEditText;Z)Z

    .line 53
    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    const v1, 0x10100a9

    invoke-virtual {v0, v1}, Lmiui/widget/ClearableEditText;->setAdditionalState(I)V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    const/4 v1, 0x1

    #setter for: Lmiui/widget/ClearableEditText;->mShown:Z
    invoke-static {v0, v1}, Lmiui/widget/ClearableEditText;->access$002(Lmiui/widget/ClearableEditText;Z)Z

    .line 56
    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0, v2}, Lmiui/widget/ClearableEditText;->setAdditionalState(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 47
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 43
    return-void
.end method
