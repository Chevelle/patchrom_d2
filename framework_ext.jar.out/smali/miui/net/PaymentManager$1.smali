.class Lmiui/net/PaymentManager$1;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/net/PaymentManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager;->payForOrder(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lmiui/net/PaymentManager$PaymentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$order:Ljava/lang/String;

.field final synthetic val$paymentId:Ljava/lang/String;

.field final synthetic val$paymentListener:Lmiui/net/PaymentManager$PaymentListener;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentListener;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lmiui/net/PaymentManager$1;->this$0:Lmiui/net/PaymentManager;

    iput-object p2, p0, Lmiui/net/PaymentManager$1;->val$paymentId:Ljava/lang/String;

    iput-object p3, p0, Lmiui/net/PaymentManager$1;->val$paymentListener:Lmiui/net/PaymentManager$PaymentListener;

    iput-object p4, p0, Lmiui/net/PaymentManager$1;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lmiui/net/PaymentManager$1;->val$order:Ljava/lang/String;

    iput-object p6, p0, Lmiui/net/PaymentManager$1;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "message"

    .prologue
    .line 135
    iget-object v0, p0, Lmiui/net/PaymentManager$1;->val$paymentListener:Lmiui/net/PaymentManager$PaymentListener;

    iget-object v1, p0, Lmiui/net/PaymentManager$1;->val$paymentId:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1, p1, p2, v2}, Lmiui/net/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 136
    return-void
.end method

.method public onSuccess(Landroid/accounts/Account;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 129
    new-instance v5, Lmiui/net/PaymentManager$PaymentCallback;

    iget-object v0, p0, Lmiui/net/PaymentManager$1;->this$0:Lmiui/net/PaymentManager;

    const-string v1, "thd"

    iget-object v2, p0, Lmiui/net/PaymentManager$1;->val$paymentId:Ljava/lang/String;

    iget-object v3, p0, Lmiui/net/PaymentManager$1;->val$paymentListener:Lmiui/net/PaymentManager$PaymentListener;

    invoke-direct {v5, v0, v1, v2, v3}, Lmiui/net/PaymentManager$PaymentCallback;-><init>(Lmiui/net/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentListener;)V

    .line 130
    .local v5, paymentCallback:Lmiui/net/PaymentManager$PaymentCallback;
    iget-object v0, p0, Lmiui/net/PaymentManager$1;->this$0:Lmiui/net/PaymentManager;

    iget-object v1, p0, Lmiui/net/PaymentManager$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lmiui/net/PaymentManager$1;->val$order:Ljava/lang/String;

    iget-object v4, p0, Lmiui/net/PaymentManager$1;->val$extra:Landroid/os/Bundle;

    move-object v2, p1

    #calls: Lmiui/net/PaymentManager;->internalPayForOrder(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    invoke-static/range {v0 .. v5}, Lmiui/net/PaymentManager;->access$000(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;

    .line 131
    return-void
.end method
