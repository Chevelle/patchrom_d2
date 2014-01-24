.class Lmiui/net/PaymentManager$2;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/net/PaymentManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager;->recharge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$serviceId:Ljava/lang/String;

.field final synthetic val$verify:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lmiui/net/PaymentManager$2;->this$0:Lmiui/net/PaymentManager;

    iput-object p2, p0, Lmiui/net/PaymentManager$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lmiui/net/PaymentManager$2;->val$serviceId:Ljava/lang/String;

    iput-object p4, p0, Lmiui/net/PaymentManager$2;->val$verify:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "message"

    .prologue
    .line 164
    return-void
.end method

.method public onSuccess(Landroid/accounts/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 160
    iget-object v0, p0, Lmiui/net/PaymentManager$2;->this$0:Lmiui/net/PaymentManager;

    iget-object v1, p0, Lmiui/net/PaymentManager$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lmiui/net/PaymentManager$2;->val$serviceId:Ljava/lang/String;

    iget-object v3, p0, Lmiui/net/PaymentManager$2;->val$verify:Ljava/lang/String;

    #calls: Lmiui/net/PaymentManager;->internalRecharge(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    invoke-static {v0, v1, p1, v2, v3}, Lmiui/net/PaymentManager;->access$100(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lmiui/net/PaymentManager$PaymentManagerFuture;

    .line 161
    return-void
.end method
