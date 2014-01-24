.class Lmiui/net/PaymentManager$PmsTask$3;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager$PmsTask;->done()V
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
    .line 632
    iput-object p1, p0, Lmiui/net/PaymentManager$PmsTask$3;->this$1:Lmiui/net/PaymentManager$PmsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask$3;->this$1:Lmiui/net/PaymentManager$PmsTask;

    #getter for: Lmiui/net/PaymentManager$PmsTask;->mCallback:Lmiui/net/PaymentManager$PaymentManagerCallback;
    invoke-static {v0}, Lmiui/net/PaymentManager$PmsTask;->access$1100(Lmiui/net/PaymentManager$PmsTask;)Lmiui/net/PaymentManager$PaymentManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask$3;->this$1:Lmiui/net/PaymentManager$PmsTask;

    invoke-interface {v0, v1}, Lmiui/net/PaymentManager$PaymentManagerCallback;->run(Lmiui/net/PaymentManager$PaymentManagerFuture;)V

    .line 636
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask$3;->this$1:Lmiui/net/PaymentManager$PmsTask;

    const/4 v1, 0x0

    #setter for: Lmiui/net/PaymentManager$PmsTask;->mCallback:Lmiui/net/PaymentManager$PaymentManagerCallback;
    invoke-static {v0, v1}, Lmiui/net/PaymentManager$PmsTask;->access$1102(Lmiui/net/PaymentManager$PmsTask;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerCallback;

    .line 637
    return-void
.end method
