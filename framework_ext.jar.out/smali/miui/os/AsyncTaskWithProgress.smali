.class public abstract Lmiui/os/AsyncTaskWithProgress;
.super Landroid/os/AsyncTask;
.source "AsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field protected mDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 16
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    invoke-direct {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->init(Landroid/app/ProgressDialog;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 3
    .parameter "context"
    .parameter "titleId"
    .parameter "theme"
    .parameter "messageId"
    .parameter "cancelable"

    .prologue
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-nez p2, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    if-nez p4, :cond_1

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 29
    invoke-virtual {v0, p5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 30
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 31
    invoke-direct {p0, v0}, Lmiui/os/AsyncTaskWithProgress;->init(Landroid/app/ProgressDialog;)V

    .line 32
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 6
    .parameter "context"
    .parameter "titleId"
    .parameter "messageId"
    .parameter "cancelable"

    .prologue
    .line 21
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/content/Context;IIIZ)V

    .line 22
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 70
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private init(Landroid/app/ProgressDialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 35
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    .line 37
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lmiui/os/AsyncTaskWithProgress$1;

    invoke-direct {v1, p0}, Lmiui/os/AsyncTaskWithProgress$1;-><init>(Lmiui/os/AsyncTaskWithProgress;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    .prologue
    .line 65
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Lmiui/os/AsyncTaskWithProgress;->dismissDialog()V

    .line 66
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-direct {p0}, Lmiui/os/AsyncTaskWithProgress;->dismissDialog()V

    .line 61
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 56
    :cond_0
    return-void
.end method

.method public setDialogType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 48
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 51
    :cond_0
    return-void
.end method
