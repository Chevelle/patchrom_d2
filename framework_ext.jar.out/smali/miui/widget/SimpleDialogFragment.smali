.class public Lmiui/widget/SimpleDialogFragment;
.super Landroid/app/DialogFragment;
.source "SimpleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    }
.end annotation


# static fields
.field public static final ARG_CANCELABLE:Ljava/lang/String; = "cancelable"

.field public static final ARG_MESSAGE:Ljava/lang/String; = "msg_res_id"

.field public static final ARG_TITLE:Ljava/lang/String; = "title"

.field public static final ARG_TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_ALERT:I = 0x1

.field public static final TYPE_PROGRESS:I = 0x2


# instance fields
.field private mCancelable:Z

.field private mMessage:Ljava/lang/String;

.field private mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeButtonTextRes:I

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonTextRes:I

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SimpleDialogFragment;->mCancelable:Z

    .line 112
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lmiui/widget/SimpleDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 48
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "no argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmiui/widget/SimpleDialogFragment;->mType:I

    .line 52
    const-string v1, "msg_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/SimpleDialogFragment;->mMessage:Ljava/lang/String;

    .line 53
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/SimpleDialogFragment;->mTitle:Ljava/lang/String;

    .line 54
    const-string v1, "cancelable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/SimpleDialogFragment;->mCancelable:Z

    .line 55
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 59
    iget v2, p0, Lmiui/widget/SimpleDialogFragment;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 83
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown dialog type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmiui/widget/SimpleDialogFragment;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmiui/widget/SimpleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lmiui/widget/SimpleDialogFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lmiui/widget/SimpleDialogFragment;->mCancelable:Z

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lmiui/widget/SimpleDialogFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 66
    .local v0, b:Landroid/app/AlertDialog$Builder;
    iget v2, p0, Lmiui/widget/SimpleDialogFragment;->mPositiveButtonTextRes:I

    if-lez v2, :cond_0

    .line 67
    iget v2, p0, Lmiui/widget/SimpleDialogFragment;->mPositiveButtonTextRes:I

    iget-object v3, p0, Lmiui/widget/SimpleDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    :cond_0
    iget v2, p0, Lmiui/widget/SimpleDialogFragment;->mNegativeButtonTextRes:I

    if-lez v2, :cond_1

    .line 71
    iget v2, p0, Lmiui/widget/SimpleDialogFragment;->mNegativeButtonTextRes:I

    iget-object v3, p0, Lmiui/widget/SimpleDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 80
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v1

    .line 77
    :pswitch_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lmiui/widget/SimpleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 78
    .local v1, dialog:Landroid/app/ProgressDialog;
    iget-object v2, p0, Lmiui/widget/SimpleDialogFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    iget-boolean v2, p0, Lmiui/widget/SimpleDialogFragment;->mCancelable:Z

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 95
    iget-object v0, p0, Lmiui/widget/SimpleDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lmiui/widget/SimpleDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 98
    :cond_0
    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "text"
    .parameter "negativeButtonClickListener"

    .prologue
    .line 102
    iput p1, p0, Lmiui/widget/SimpleDialogFragment;->mNegativeButtonTextRes:I

    .line 103
    iput-object p2, p0, Lmiui/widget/SimpleDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter "dialogDismissListener"

    .prologue
    .line 89
    iput-object p1, p0, Lmiui/widget/SimpleDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 90
    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "text"
    .parameter "positiveButtonClickListener"

    .prologue
    .line 108
    iput p1, p0, Lmiui/widget/SimpleDialogFragment;->mPositiveButtonTextRes:I

    .line 109
    iput-object p2, p0, Lmiui/widget/SimpleDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 110
    return-void
.end method
