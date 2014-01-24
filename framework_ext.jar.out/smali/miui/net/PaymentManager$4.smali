.class Lmiui/net/PaymentManager$4;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/net/PaymentManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager;->gotoMiliCenter(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lmiui/net/PaymentManager$4;->this$0:Lmiui/net/PaymentManager;

    iput-object p2, p0, Lmiui/net/PaymentManager$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "message"

    .prologue
    .line 214
    return-void
.end method

.method public onSuccess(Landroid/accounts/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 210
    iget-object v0, p0, Lmiui/net/PaymentManager$4;->this$0:Lmiui/net/PaymentManager;

    iget-object v1, p0, Lmiui/net/PaymentManager$4;->val$activity:Landroid/app/Activity;

    #calls: Lmiui/net/PaymentManager;->internalGotoMiliCenter(Landroid/app/Activity;Landroid/accounts/Account;)V
    invoke-static {v0, v1, p1}, Lmiui/net/PaymentManager;->access$300(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;)V

    .line 211
    return-void
.end method
