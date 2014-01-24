.class abstract Lmiui/net/PaymentManager$PmsTask;
.super Ljava/util/concurrent/FutureTask;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/net/PaymentManager$PaymentManagerFuture;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PmsTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lmiui/net/PaymentManager$PaymentManagerFuture",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private final HOST_MONITOR_HEART_INTERNAL:I

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lmiui/net/PaymentManager$PaymentManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/net/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHostActivityMonitor:Ljava/lang/Runnable;

.field private mIsBound:Z

.field private mResponse:Lmiui/net/IPaymentManagerResponse;

.field private mService:Lmiui/net/IPaymentManagerService;

.field final synthetic this$0:Lmiui/net/PaymentManager;


# direct methods
.method protected constructor <init>(Lmiui/net/PaymentManager;Landroid/app/Activity;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/net/PaymentManager$PmsTask;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Lmiui/net/PaymentManager$PaymentManagerCallback;)V

    .line 498
    return-void
.end method

.method protected constructor <init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/os/Handler;Lmiui/net/PaymentManager$PaymentManagerCallback;)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Lmiui/net/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p4, callback:Lmiui/net/PaymentManager$PaymentManagerCallback;,"Lmiui/net/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    .line 505
    new-instance v0, Lmiui/net/PaymentManager$PmsTask$2;

    invoke-direct {v0, p1}, Lmiui/net/PaymentManager$PmsTask$2;-><init>(Lmiui/net/PaymentManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/net/PaymentManager$PmsTask;->mIsBound:Z

    .line 477
    const/16 v0, 0x3e8

    iput v0, p0, Lmiui/net/PaymentManager$PmsTask;->HOST_MONITOR_HEART_INTERNAL:I

    .line 478
    new-instance v0, Lmiui/net/PaymentManager$PmsTask$1;

    invoke-direct {v0, p0}, Lmiui/net/PaymentManager$PmsTask$1;-><init>(Lmiui/net/PaymentManager$PmsTask;)V

    iput-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mHostActivityMonitor:Ljava/lang/Runnable;

    .line 513
    iput-object p2, p0, Lmiui/net/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    .line 514
    iput-object p3, p0, Lmiui/net/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    .line 515
    iput-object p4, p0, Lmiui/net/PaymentManager$PmsTask;->mCallback:Lmiui/net/PaymentManager$PaymentManagerCallback;

    .line 516
    new-instance v0, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;

    invoke-direct {v0, p0}, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;-><init>(Lmiui/net/PaymentManager$PmsTask;)V

    iput-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mResponse:Lmiui/net/IPaymentManagerResponse;

    .line 517
    return-void
.end method

.method protected constructor <init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Lmiui/net/PaymentManager$PaymentManagerCallback;)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lmiui/net/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p3, callback:Lmiui/net/PaymentManager$PaymentManagerCallback;,"Lmiui/net/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/net/PaymentManager$PmsTask;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/os/Handler;Lmiui/net/PaymentManager$PaymentManagerCallback;)V

    .line 502
    return-void
.end method

.method static synthetic access$1100(Lmiui/net/PaymentManager$PmsTask;)Lmiui/net/PaymentManager$PaymentManagerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 467
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mCallback:Lmiui/net/PaymentManager$PaymentManagerCallback;

    return-object v0
.end method

.method static synthetic access$1102(Lmiui/net/PaymentManager$PmsTask;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 467
    iput-object p1, p0, Lmiui/net/PaymentManager$PmsTask;->mCallback:Lmiui/net/PaymentManager$PaymentManagerCallback;

    return-object p1
.end method

.method static synthetic access$1200(Lmiui/net/PaymentManager$PmsTask;ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 467
    invoke-direct {p0, p1, p2, p3}, Lmiui/net/PaymentManager$PmsTask;->convertErrorCodeToException(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lmiui/net/PaymentManager$PmsTask;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 467
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private convertErrorCodeToException(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;
    .locals 1
    .parameter "code"
    .parameter "message"
    .parameter "bundle"

    .prologue
    .line 700
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 701
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 711
    :goto_0
    return-object v0

    .line 704
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 705
    new-instance v0, Lmiui/net/exception/AuthenticationFailureException;

    invoke-direct {v0, p2}, Lmiui/net/exception/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    const-string p2, "Unknown payment failure"

    .line 711
    :cond_2
    new-instance v0, Lmiui/net/exception/PaymentServiceFailureException;

    invoke-direct {v0, p1, p2, p3}, Lmiui/net/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private ensureNotOnMainThread()V
    .locals 4

    .prologue
    .line 715
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 716
    .local v1, looper:Landroid/os/Looper;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    #getter for: Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmiui/net/PaymentManager;->access$1000(Lmiui/net/PaymentManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 717
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 719
    .local v0, exception:Ljava/lang/IllegalStateException;
    const-string v2, "PaymentManager"

    const-string v3, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    throw v0

    .line 723
    .end local v0           #exception:Ljava/lang/IllegalStateException;
    :cond_0
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/AuthenticationFailureException;,
            Lmiui/net/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 565
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 566
    invoke-direct {p0}, Lmiui/net/PaymentManager$PmsTask;->ensureNotOnMainThread()V

    .line 569
    :cond_0
    if-nez p1, :cond_1

    .line 570
    :try_start_0
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 598
    :goto_0
    invoke-virtual {p0, v4}, Lmiui/net/PaymentManager$PmsTask;->cancel(Z)Z

    .line 572
    return-object v2

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v2

    :try_start_3
    invoke-virtual {p0, v2, v3, p2}, Lmiui/net/PaymentManager$PmsTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    :try_start_4
    check-cast v2, Landroid/os/Bundle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 574
    :catch_0
    move-exception v1

    .line 575
    .local v1, e:Ljava/util/concurrent/CancellationException;
    :try_start_5
    new-instance v2, Lmiui/net/exception/OperationCancelledException;

    const-string v3, "cancelled by user"

    invoke-direct {v2, v3}, Lmiui/net/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 598
    .end local v1           #e:Ljava/util/concurrent/CancellationException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v4}, Lmiui/net/PaymentManager$PmsTask;->cancel(Z)Z

    throw v2

    .line 580
    :catch_1
    move-exception v1

    .line 581
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    :try_start_6
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 582
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 583
    check-cast v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 584
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_2
    instance-of v2, v0, Lmiui/net/exception/PaymentServiceFailureException;

    if-eqz v2, :cond_3

    .line 585
    check-cast v0, Lmiui/net/exception/PaymentServiceFailureException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 586
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_3
    instance-of v2, v0, Lmiui/net/exception/AuthenticationFailureException;

    if-eqz v2, :cond_4

    .line 587
    check-cast v0, Lmiui/net/exception/AuthenticationFailureException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 588
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_4
    instance-of v2, v0, Lmiui/net/exception/OperationCancelledException;

    if-eqz v2, :cond_5

    .line 589
    check-cast v0, Lmiui/net/exception/OperationCancelledException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 590
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_5
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_6

    .line 591
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 592
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_6
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_7

    .line 593
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 595
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 578
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    .line 598
    :goto_1
    invoke-virtual {p0, v4}, Lmiui/net/PaymentManager$PmsTask;->cancel(Z)Z

    .line 600
    new-instance v2, Lmiui/net/exception/OperationCancelledException;

    const-string v3, "cancelled by exception"

    invoke-direct {v2, v3}, Lmiui/net/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 578
    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_1

    .line 576
    :catch_7
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected bind()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 535
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->bindToPaymentService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Lmiui/net/exception/PaymentServiceFailureException;

    const-string v1, "bind to service failed"

    invoke-direct {v0, v2, v1}, Lmiui/net/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/net/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    .line 543
    :goto_0
    return-void

    .line 538
    :cond_0
    iput-boolean v2, p0, Lmiui/net/PaymentManager$PmsTask;->mIsBound:Z

    .line 540
    const-string v0, "PaymentManager"

    const-string v1, "service bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bindToPaymentService()Z
    .locals 3

    .prologue
    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.action.PAYMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    #getter for: Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/net/PaymentManager;->access$1000(Lmiui/net/PaymentManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method protected abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected done()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 630
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask;->mCallback:Lmiui/net/PaymentManager$PaymentManagerCallback;

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    #getter for: Lmiui/net/PaymentManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/net/PaymentManager;->access$900(Lmiui/net/PaymentManager;)Landroid/os/Handler;

    move-result-object v0

    .line 632
    .local v0, handler:Landroid/os/Handler;
    :goto_0
    new-instance v1, Lmiui/net/PaymentManager$PmsTask$3;

    invoke-direct {v1, p0}, Lmiui/net/PaymentManager$PmsTask$3;-><init>(Lmiui/net/PaymentManager$PmsTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    #getter for: Lmiui/net/PaymentManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/net/PaymentManager;->access$900(Lmiui/net/PaymentManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmiui/net/PaymentManager$PmsTask;->mHostActivityMonitor:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 642
    iput-object v3, p0, Lmiui/net/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    .line 643
    iput-object v3, p0, Lmiui/net/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    .line 644
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method protected getResponse()Lmiui/net/IPaymentManagerResponse;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mResponse:Lmiui/net/IPaymentManagerResponse;

    return-object v0
.end method

.method public getResult()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/AuthenticationFailureException;,
            Lmiui/net/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 626
    invoke-direct {p0, v0, v0}, Lmiui/net/PaymentManager$PmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/AuthenticationFailureException;,
            Lmiui/net/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lmiui/net/PaymentManager$PmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/AuthenticationFailureException;,
            Lmiui/net/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/AuthenticationFailureException;,
            Lmiui/net/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0, p1, p2, p3}, Lmiui/net/PaymentManager$PmsTask;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lmiui/net/IPaymentManagerService;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mService:Lmiui/net/IPaymentManagerService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 649
    const-string v1, "PaymentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected, component:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {p2}, Lmiui/net/IPaymentManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IPaymentManagerService;

    move-result-object v1

    iput-object v1, p0, Lmiui/net/PaymentManager$PmsTask;->mService:Lmiui/net/IPaymentManagerService;

    .line 653
    :try_start_0
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->doWork()V

    .line 654
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    #getter for: Lmiui/net/PaymentManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/net/PaymentManager;->access$900(Lmiui/net/PaymentManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmiui/net/PaymentManager$PmsTask;->mHostActivityMonitor:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmiui/net/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 662
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    const-string v0, "PaymentManager"

    const-string v1, "payment service disconnected, but task is not completed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v0, Lmiui/net/exception/PaymentServiceFailureException;

    const/4 v1, 0x1

    const-string v2, "active service exits unexpectedly"

    invoke-direct {v0, v1, v2}, Lmiui/net/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/net/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    .line 666
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mService:Lmiui/net/IPaymentManagerService;

    .line 667
    return-void
.end method

.method protected set(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 605
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    .line 606
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->unBind()V

    .line 607
    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 467
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/net/PaymentManager$PmsTask;->set(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 611
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    .line 612
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->unBind()V

    .line 613
    return-void
.end method

.method public final start()Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->bind()V

    .line 531
    return-object p0
.end method

.method protected unBind()V
    .locals 2

    .prologue
    .line 546
    iget-boolean v0, p0, Lmiui/net/PaymentManager$PmsTask;->mIsBound:Z

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    #getter for: Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/net/PaymentManager;->access$1000(Lmiui/net/PaymentManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/net/PaymentManager$PmsTask;->mIsBound:Z

    .line 553
    const-string v0, "PaymentManager"

    const-string v1, "service unbinded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
