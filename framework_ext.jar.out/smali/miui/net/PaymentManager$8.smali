.class Lmiui/net/PaymentManager$8;
.super Lmiui/net/PaymentManager$PmsTask;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager;->internalPayForOrder(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$order:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Lmiui/net/PaymentManager$PaymentManagerCallback;Landroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    .local p3, x1:Lmiui/net/PaymentManager$PaymentManagerCallback;,"Lmiui/net/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lmiui/net/PaymentManager$8;->this$0:Lmiui/net/PaymentManager;

    iput-object p4, p0, Lmiui/net/PaymentManager$8;->val$extra:Landroid/os/Bundle;

    iput-object p5, p0, Lmiui/net/PaymentManager$8;->val$account:Landroid/accounts/Account;

    iput-object p6, p0, Lmiui/net/PaymentManager$8;->val$order:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lmiui/net/PaymentManager$PmsTask;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Lmiui/net/PaymentManager$PaymentManagerCallback;)V

    return-void
.end method


# virtual methods
.method protected doWork()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0}, Lmiui/net/PaymentManager$8;->getService()Lmiui/net/IPaymentManagerService;

    move-result-object v1

    .line 345
    .local v1, service:Lmiui/net/IPaymentManagerService;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 346
    .local v0, finalExtra:Landroid/os/Bundle;
    iget-object v2, p0, Lmiui/net/PaymentManager$8;->val$extra:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lmiui/net/PaymentManager$8;->val$extra:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 349
    :cond_0
    invoke-virtual {p0}, Lmiui/net/PaymentManager$8;->getResponse()Lmiui/net/IPaymentManagerResponse;

    move-result-object v2

    iget-object v3, p0, Lmiui/net/PaymentManager$8;->val$account:Landroid/accounts/Account;

    iget-object v4, p0, Lmiui/net/PaymentManager$8;->val$order:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lmiui/net/IPaymentManagerService;->payForOrder(Lmiui/net/IPaymentManagerResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 350
    return-void
.end method
