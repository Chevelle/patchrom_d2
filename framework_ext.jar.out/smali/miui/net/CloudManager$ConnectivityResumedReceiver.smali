.class Lmiui/net/CloudManager$ConnectivityResumedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectivityResumedReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFuture:Lmiui/net/CloudManager$AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/net/CloudManager$AsyncFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1113
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1109
    new-instance v0, Lmiui/net/CloudManager$AsyncFuture;

    invoke-direct {v0}, Lmiui/net/CloudManager$AsyncFuture;-><init>()V

    iput-object v0, p0, Lmiui/net/CloudManager$ConnectivityResumedReceiver;->mFuture:Lmiui/net/CloudManager$AsyncFuture;

    .line 1114
    iput-object p1, p0, Lmiui/net/CloudManager$ConnectivityResumedReceiver;->mContext:Landroid/content/Context;

    .line 1115
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lmiui/net/CloudManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1107
    invoke-direct {p0, p1}, Lmiui/net/CloudManager$ConnectivityResumedReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public await()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 1128
    iget-object v0, p0, Lmiui/net/CloudManager$ConnectivityResumedReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/net/CloudManager;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lmiui/net/CloudManager$ConnectivityResumedReceiver;->mFuture:Lmiui/net/CloudManager$AsyncFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/net/CloudManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 1131
    :cond_0
    iget-object v0, p0, Lmiui/net/CloudManager$ConnectivityResumedReceiver;->mFuture:Lmiui/net/CloudManager$AsyncFuture;

    invoke-virtual {v0}, Lmiui/net/CloudManager$AsyncFuture;->get()Ljava/lang/Object;

    .line 1132
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1119
    const-string v1, "noConnectivity"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1121
    .local v0, noConnectivity:Z
    if-nez v0, :cond_0

    .line 1122
    const-string v1, "CloudManager"

    const-string v2, "connectivity resumed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v1, p0, Lmiui/net/CloudManager$ConnectivityResumedReceiver;->mFuture:Lmiui/net/CloudManager$AsyncFuture;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/net/CloudManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 1125
    :cond_0
    return-void
.end method
