.class Lmiui/net/PaymentManager$10;
.super Lmiui/net/PaymentManager$PmsTask;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager;->internalGetMiliBalance(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$serviceId:Ljava/lang/String;

.field final synthetic val$verify:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Lmiui/net/PaymentManager$PaymentManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    .local p3, x1:Lmiui/net/PaymentManager$PaymentManagerCallback;,"Lmiui/net/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lmiui/net/PaymentManager$10;->this$0:Lmiui/net/PaymentManager;

    iput-object p4, p0, Lmiui/net/PaymentManager$10;->val$account:Landroid/accounts/Account;

    iput-object p5, p0, Lmiui/net/PaymentManager$10;->val$serviceId:Ljava/lang/String;

    iput-object p6, p0, Lmiui/net/PaymentManager$10;->val$verify:Ljava/lang/String;

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
    .line 371
    invoke-virtual {p0}, Lmiui/net/PaymentManager$10;->getService()Lmiui/net/IPaymentManagerService;

    move-result-object v0

    .line 372
    .local v0, service:Lmiui/net/IPaymentManagerService;
    invoke-virtual {p0}, Lmiui/net/PaymentManager$10;->getResponse()Lmiui/net/IPaymentManagerResponse;

    move-result-object v1

    iget-object v2, p0, Lmiui/net/PaymentManager$10;->val$account:Landroid/accounts/Account;

    iget-object v3, p0, Lmiui/net/PaymentManager$10;->val$serviceId:Ljava/lang/String;

    iget-object v4, p0, Lmiui/net/PaymentManager$10;->val$verify:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lmiui/net/IPaymentManagerService;->getMiliBalance(Lmiui/net/IPaymentManagerResponse;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method
