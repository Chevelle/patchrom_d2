.class abstract Lmiui/net/PaymentManager$AddAccountCallback;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;
.implements Lmiui/net/PaymentManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AddAccountCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lmiui/net/PaymentManager$LoginCallback;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;


# direct methods
.method private constructor <init>(Lmiui/net/PaymentManager;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lmiui/net/PaymentManager$AddAccountCallback;->this$0:Lmiui/net/PaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/net/PaymentManager;Lmiui/net/PaymentManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lmiui/net/PaymentManager$AddAccountCallback;-><init>(Lmiui/net/PaymentManager;)V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
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
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v7, 0x5

    .line 302
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    const/4 v3, 0x0

    .line 305
    .local v3, result:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Landroid/os/Bundle;
    check-cast v3, Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 320
    .restart local v3       #result:Landroid/os/Bundle;
    if-nez v3, :cond_1

    .line 321
    const-string v4, "PaymentManager"

    const-string v5, "login failed : authentication failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v4, "authentication failed"

    invoke-virtual {p0, v7, v4}, Lmiui/net/PaymentManager$AddAccountCallback;->onFailed(ILjava/lang/String;)V

    .line 335
    .end local v3           #result:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v2

    .line 307
    .local v2, e:Landroid/accounts/OperationCanceledException;
    const-string v4, "PaymentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "login failed : user canceled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v4, 0x4

    invoke-virtual {v2}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmiui/net/PaymentManager$AddAccountCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 310
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v2

    .line 311
    .local v2, e:Landroid/accounts/AuthenticatorException;
    const-string v4, "PaymentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "login failed : authenticator exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {v2}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v7, v4}, Lmiui/net/PaymentManager$AddAccountCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 314
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v2

    .line 315
    .local v2, e:Ljava/io/IOException;
    const-string v4, "PaymentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "login failed : io exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v4, 0x3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmiui/net/PaymentManager$AddAccountCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 326
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #result:Landroid/os/Bundle;
    :cond_1
    iget-object v4, p0, Lmiui/net/PaymentManager$AddAccountCallback;->this$0:Lmiui/net/PaymentManager;

    #getter for: Lmiui/net/PaymentManager;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v4}, Lmiui/net/PaymentManager;->access$700(Lmiui/net/PaymentManager;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.xiaomi"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 327
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v4, v1

    if-nez v4, :cond_2

    .line 328
    const-string v4, "PaymentManager"

    const-string v5, "login failed : authentication failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v4, "authentication failed"

    invoke-virtual {p0, v7, v4}, Lmiui/net/PaymentManager$AddAccountCallback;->onFailed(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :cond_2
    const/4 v4, 0x0

    aget-object v0, v1, v4

    .line 333
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {p0, v0}, Lmiui/net/PaymentManager$AddAccountCallback;->onSuccess(Landroid/accounts/Account;)V

    goto/16 :goto_0
.end method
