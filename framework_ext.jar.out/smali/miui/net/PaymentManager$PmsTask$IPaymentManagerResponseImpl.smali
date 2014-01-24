.class Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;
.super Lmiui/net/IPaymentManagerResponse$Stub;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/PaymentManager$PmsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IPaymentManagerResponseImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/net/PaymentManager$PmsTask;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager$PmsTask;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/net/PaymentManager$PmsTask;

    invoke-direct {p0}, Lmiui/net/IPaymentManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "code"
    .parameter "message"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 689
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 691
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/net/PaymentManager$PmsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/net/PaymentManager$PmsTask;->cancel(Z)Z

    .line 692
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/net/PaymentManager$PmsTask;

    invoke-virtual {v0}, Lmiui/net/PaymentManager$PmsTask;->unBind()V

    .line 696
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/net/PaymentManager$PmsTask;

    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/net/PaymentManager$PmsTask;

    #calls: Lmiui/net/PaymentManager$PmsTask;->convertErrorCodeToException(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;
    invoke-static {v1, p1, p2, p3}, Lmiui/net/PaymentManager$PmsTask;->access$1200(Lmiui/net/PaymentManager$PmsTask;ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/net/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 673
    const-string v1, "intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 674
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 675
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/net/PaymentManager$PmsTask;

    #getter for: Lmiui/net/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lmiui/net/PaymentManager$PmsTask;->access$800(Lmiui/net/PaymentManager$PmsTask;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 677
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/net/PaymentManager$PmsTask;

    #getter for: Lmiui/net/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lmiui/net/PaymentManager$PmsTask;->access$800(Lmiui/net/PaymentManager$PmsTask;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 685
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/net/PaymentManager$PmsTask;

    new-instance v2, Lmiui/net/exception/PaymentServiceFailureException;

    const/4 v3, 0x2

    const-string v4, "activity cannot be null"

    invoke-direct {v2, v3, v4}, Lmiui/net/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lmiui/net/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 683
    :cond_1
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/net/PaymentManager$PmsTask;

    invoke-virtual {v1, p1}, Lmiui/net/PaymentManager$PmsTask;->set(Landroid/os/Bundle;)V

    goto :goto_0
.end method
