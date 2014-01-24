.class Lmiui/net/CloudManager$CmTask$1;
.super Ljava/lang/Object;
.source "CloudManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/CloudManager$CmTask;-><init>(Lmiui/net/CloudManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$this$0:Lmiui/net/CloudManager;


# direct methods
.method constructor <init>(Lmiui/net/CloudManager;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lmiui/net/CloudManager$CmTask$1;->val$this$0:Lmiui/net/CloudManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 571
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 568
    invoke-virtual {p0}, Lmiui/net/CloudManager$CmTask$1;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
