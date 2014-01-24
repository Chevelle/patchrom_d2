.class Lmiui/net/PaymentManager$11;
.super Lmiui/net/PaymentManager$PmsTask;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager;->internalGotoMiliCenter(Landroid/app/Activity;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lmiui/net/PaymentManager$11;->this$0:Lmiui/net/PaymentManager;

    iput-object p3, p0, Lmiui/net/PaymentManager$11;->val$account:Landroid/accounts/Account;

    invoke-direct {p0, p1, p2}, Lmiui/net/PaymentManager$PmsTask;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected doWork()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lmiui/net/PaymentManager$11;->getService()Lmiui/net/IPaymentManagerService;

    move-result-object v0

    .line 382
    .local v0, service:Lmiui/net/IPaymentManagerService;
    invoke-virtual {p0}, Lmiui/net/PaymentManager$11;->getResponse()Lmiui/net/IPaymentManagerResponse;

    move-result-object v1

    iget-object v2, p0, Lmiui/net/PaymentManager$11;->val$account:Landroid/accounts/Account;

    invoke-interface {v0, v1, v2}, Lmiui/net/IPaymentManagerService;->showMiliCenter(Lmiui/net/IPaymentManagerResponse;Landroid/accounts/Account;)V

    .line 383
    return-void
.end method
