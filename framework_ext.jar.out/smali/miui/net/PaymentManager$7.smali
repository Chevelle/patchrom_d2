.class Lmiui/net/PaymentManager$7;
.super Lmiui/net/PaymentManager$AddAccountCallback;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;

.field final synthetic val$callback:Lmiui/net/PaymentManager$LoginCallback;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager;Lmiui/net/PaymentManager$LoginCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lmiui/net/PaymentManager$7;->this$0:Lmiui/net/PaymentManager;

    iput-object p2, p0, Lmiui/net/PaymentManager$7;->val$callback:Lmiui/net/PaymentManager$LoginCallback;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager$AddAccountCallback;-><init>(Lmiui/net/PaymentManager;Lmiui/net/PaymentManager$1;)V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 1
    .parameter "error"
    .parameter "message"

    .prologue
    .line 282
    iget-object v0, p0, Lmiui/net/PaymentManager$7;->val$callback:Lmiui/net/PaymentManager$LoginCallback;

    invoke-interface {v0, p1, p2}, Lmiui/net/PaymentManager$LoginCallback;->onFailed(ILjava/lang/String;)V

    .line 283
    return-void
.end method

.method public onSuccess(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 277
    iget-object v0, p0, Lmiui/net/PaymentManager$7;->val$callback:Lmiui/net/PaymentManager$LoginCallback;

    invoke-interface {v0, p1}, Lmiui/net/PaymentManager$LoginCallback;->onSuccess(Landroid/accounts/Account;)V

    .line 278
    return-void
.end method
