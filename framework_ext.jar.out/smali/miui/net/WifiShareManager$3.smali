.class Lmiui/net/WifiShareManager$3;
.super Lmiui/net/WifiShareManager$WifiShareTask;
.source "WifiShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/WifiShareManager;->feedback(Landroid/content/Context;Landroid/os/Bundle;Lmiui/net/WifiShareManager$WifiShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/WifiShareManager;

.field final synthetic val$extra:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lmiui/net/WifiShareManager;Landroid/content/Context;Lmiui/net/WifiShareManager$WifiShareListener;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lmiui/net/WifiShareManager$3;->this$0:Lmiui/net/WifiShareManager;

    iput-object p4, p0, Lmiui/net/WifiShareManager$3;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, p3}, Lmiui/net/WifiShareManager$WifiShareTask;-><init>(Lmiui/net/WifiShareManager;Landroid/content/Context;Lmiui/net/WifiShareManager$WifiShareListener;)V

    return-void
.end method


# virtual methods
.method protected doWork()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lmiui/net/WifiShareManager$3;->getService()Lmiui/net/IWifiShareManagerService;

    move-result-object v2

    .line 119
    .local v2, service:Lmiui/net/IWifiShareManagerService;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v1, finalExtra:Landroid/os/Bundle;
    iget-object v3, p0, Lmiui/net/WifiShareManager$3;->val$extra:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lmiui/net/WifiShareManager$3;->val$extra:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 123
    :cond_0
    if-eqz v2, :cond_1

    .line 124
    iget-object v3, p0, Lmiui/net/WifiShareManager$3;->this$0:Lmiui/net/WifiShareManager;

    #getter for: Lmiui/net/WifiShareManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/net/WifiShareManager;->access$000(Lmiui/net/WifiShareManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lmiui/net/WifiShareManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 125
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {p0}, Lmiui/net/WifiShareManager$3;->getResponse()Lmiui/net/IWifiShareManagerResponse;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lmiui/net/IWifiShareManagerService;->feedback(Lmiui/net/IWifiShareManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 127
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    return-void
.end method
