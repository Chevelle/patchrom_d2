.class public abstract Lmiui/os/UniqueAsyncTask;
.super Lmiui/os/ObservableAsyncTask;
.source "UniqueAsyncTask.java"


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
        "Lmiui/os/ObservableAsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    .local p0, this:Lmiui/os/UniqueAsyncTask;,"Lmiui/os/UniqueAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Lmiui/os/ObservableAsyncTask;-><init>()V

    .line 8
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/UniqueAsyncTask;->mId:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 11
    .local p0, this:Lmiui/os/UniqueAsyncTask;,"Lmiui/os/UniqueAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Lmiui/os/ObservableAsyncTask;-><init>()V

    .line 12
    iput-object p1, p0, Lmiui/os/UniqueAsyncTask;->mId:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 35
    .local p0, this:Lmiui/os/UniqueAsyncTask;,"Lmiui/os/UniqueAsyncTask<TParams;TProgress;TResult;>;"
    instance-of v0, p1, Lmiui/os/UniqueAsyncTask;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lmiui/os/UniqueAsyncTask;->mId:Ljava/lang/String;

    check-cast p1, Lmiui/os/UniqueAsyncTask;

    .end local p1
    iget-object v1, p1, Lmiui/os/UniqueAsyncTask;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 38
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    .local p0, this:Lmiui/os/UniqueAsyncTask;,"Lmiui/os/UniqueAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lmiui/os/UniqueAsyncTask;->mId:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract hasEquivalentRunningTasks()Z
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 43
    .local p0, this:Lmiui/os/UniqueAsyncTask;,"Lmiui/os/UniqueAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lmiui/os/UniqueAsyncTask;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 25
    .local p0, this:Lmiui/os/UniqueAsyncTask;,"Lmiui/os/UniqueAsyncTask<TParams;TProgress;TResult;>;"
    invoke-super {p0}, Lmiui/os/ObservableAsyncTask;->onPreExecute()V

    .line 26
    invoke-virtual {p0}, Lmiui/os/UniqueAsyncTask;->hasEquivalentRunningTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/os/UniqueAsyncTask;->cancel(Z)Z

    .line 29
    :cond_0
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 20
    .local p0, this:Lmiui/os/UniqueAsyncTask;,"Lmiui/os/UniqueAsyncTask<TParams;TProgress;TResult;>;"
    iput-object p1, p0, Lmiui/os/UniqueAsyncTask;->mId:Ljava/lang/String;

    .line 21
    return-void
.end method
