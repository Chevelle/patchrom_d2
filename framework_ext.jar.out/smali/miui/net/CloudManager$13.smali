.class Lmiui/net/CloudManager$13;
.super Lmiui/net/CloudManager$CmTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/CloudManager;->getAccessToken(Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/CloudManager;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/net/CloudManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lmiui/net/CloudManager$13;->this$0:Lmiui/net/CloudManager;

    iput-object p2, p0, Lmiui/net/CloudManager$13;->val$type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/net/CloudManager$CmTask;-><init>(Lmiui/net/CloudManager;)V

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
    .line 534
    invoke-virtual {p0}, Lmiui/net/CloudManager$13;->getService()Lmiui/net/ICloudManagerService;

    move-result-object v0

    .line 535
    .local v0, service:Lmiui/net/ICloudManagerService;
    iget-object v1, p0, Lmiui/net/CloudManager$13;->val$type:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/net/CloudManager$13;->getResponse()Lmiui/net/ICloudManagerResponse;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmiui/net/ICloudManagerService;->getAccessToken(Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V

    .line 536
    return-void
.end method
