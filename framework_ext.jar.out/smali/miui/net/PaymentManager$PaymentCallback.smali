.class Lmiui/net/PaymentManager$PaymentCallback;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/net/PaymentManager$PaymentManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaymentCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/net/PaymentManager$PaymentManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mPaymentId:Ljava/lang/String;

.field private mPaymentListener:Lmiui/net/PaymentManager$PaymentListener;

.field private mServiceId:Ljava/lang/String;

.field final synthetic this$0:Lmiui/net/PaymentManager;


# direct methods
.method public constructor <init>(Lmiui/net/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentListener;)V
    .locals 0
    .parameter
    .parameter "serviceId"
    .parameter "paymentId"
    .parameter "paymentListener"

    .prologue
    .line 434
    iput-object p1, p0, Lmiui/net/PaymentManager$PaymentCallback;->this$0:Lmiui/net/PaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p2, p0, Lmiui/net/PaymentManager$PaymentCallback;->mServiceId:Ljava/lang/String;

    .line 436
    iput-object p3, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    .line 437
    iput-object p4, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/net/PaymentManager$PaymentListener;

    .line 438
    return-void
.end method


# virtual methods
.method public run(Lmiui/net/PaymentManager$PaymentManagerFuture;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/net/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Lmiui/net/PaymentManager$PaymentManagerFuture;,"Lmiui/net/PaymentManager$PaymentManagerFuture<Landroid/os/Bundle;>;"
    const/4 v7, 0x0

    .line 442
    iget-object v2, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/net/PaymentManager$PaymentListener;

    if-nez v2, :cond_0

    .line 464
    :goto_0
    return-void

    .line 446
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lmiui/net/PaymentManager$PaymentManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 447
    .local v1, result:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 448
    iget-object v2, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/net/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lmiui/net/PaymentManager$PaymentListener;->onSuccess(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/net/exception/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/net/exception/PaymentServiceFailureException; {:try_start_0 .. :try_end_0} :catch_3

    .line 462
    .end local v1           #result:Landroid/os/Bundle;
    :goto_1
    iput-object v7, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/net/PaymentManager$PaymentListener;

    goto :goto_0

    .line 450
    .restart local v1       #result:Landroid/os/Bundle;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/net/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "error"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/net/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmiui/net/exception/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lmiui/net/exception/PaymentServiceFailureException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 452
    .end local v1           #result:Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/net/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/net/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 462
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iput-object v7, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/net/PaymentManager$PaymentListener;

    throw v2

    .line 454
    :catch_1
    move-exception v0

    .line 455
    .local v0, e:Lmiui/net/exception/OperationCancelledException;
    :try_start_3
    iget-object v2, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/net/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v0}, Lmiui/net/exception/OperationCancelledException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/net/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 456
    .end local v0           #e:Lmiui/net/exception/OperationCancelledException;
    :catch_2
    move-exception v0

    .line 457
    .local v0, e:Lmiui/net/exception/AuthenticationFailureException;
    iget-object v2, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/net/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {v0}, Lmiui/net/exception/AuthenticationFailureException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/net/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 458
    .end local v0           #e:Lmiui/net/exception/AuthenticationFailureException;
    :catch_3
    move-exception v0

    .line 459
    .local v0, e:Lmiui/net/exception/PaymentServiceFailureException;
    iget-object v2, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/net/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/net/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v0}, Lmiui/net/exception/PaymentServiceFailureException;->getError()I

    move-result v4

    invoke-virtual {v0}, Lmiui/net/exception/PaymentServiceFailureException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lmiui/net/exception/PaymentServiceFailureException;->getErrorResult()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/net/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
