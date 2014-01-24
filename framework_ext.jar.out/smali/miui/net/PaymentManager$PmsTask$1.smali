.class Lmiui/net/PaymentManager$PmsTask$1;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/PaymentManager$PmsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/net/PaymentManager$PmsTask;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager$PmsTask;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lmiui/net/PaymentManager$PmsTask$1;->this$1:Lmiui/net/PaymentManager$PmsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 482
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask$1;->this$1:Lmiui/net/PaymentManager$PmsTask;

    #getter for: Lmiui/net/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lmiui/net/PaymentManager$PmsTask;->access$800(Lmiui/net/PaymentManager$PmsTask;)Landroid/app/Activity;

    move-result-object v0

    .line 483
    .local v0, host:Landroid/app/Activity;
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask$1;->this$1:Lmiui/net/PaymentManager$PmsTask;

    invoke-virtual {v1}, Lmiui/net/PaymentManager$PmsTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask$1;->this$1:Lmiui/net/PaymentManager$PmsTask;

    new-instance v2, Lmiui/net/exception/OperationCancelledException;

    const-string v3, "Operation has been cancelled because host activity has finished."

    invoke-direct {v2, v3}, Lmiui/net/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lmiui/net/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask$1;->this$1:Lmiui/net/PaymentManager$PmsTask;

    iget-object v1, v1, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    #getter for: Lmiui/net/PaymentManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/net/PaymentManager;->access$900(Lmiui/net/PaymentManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
