.class Lmiui/app/AccountUnlockDialog$4;
.super Ljava/lang/Object;
.source "AccountUnlockDialog.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/AccountUnlockDialog;->asyncCheckPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/AccountUnlockDialog;


# direct methods
.method constructor <init>(Lmiui/app/AccountUnlockDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lmiui/app/AccountUnlockDialog$4;->this$0:Lmiui/app/AccountUnlockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 220
    .local v1, result:Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 221
    .local v2, verified:Z
    iget-object v3, p0, Lmiui/app/AccountUnlockDialog$4;->this$0:Lmiui/app/AccountUnlockDialog;

    #calls: Lmiui/app/AccountUnlockDialog;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v2}, Lmiui/app/AccountUnlockDialog;->access$600(Lmiui/app/AccountUnlockDialog;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v1           #result:Landroid/os/Bundle;
    .end local v2           #verified:Z
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lmiui/app/AccountUnlockDialog$4;->this$0:Lmiui/app/AccountUnlockDialog;

    const/4 v4, 0x0

    #calls: Lmiui/app/AccountUnlockDialog;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lmiui/app/AccountUnlockDialog;->access$600(Lmiui/app/AccountUnlockDialog;Z)V

    goto :goto_0
.end method
