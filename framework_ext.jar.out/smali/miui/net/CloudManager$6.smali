.class Lmiui/net/CloudManager$6;
.super Lmiui/net/CloudManager$CmTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/CloudManager;->getFindDeviceToken(I)Lmiui/net/CloudManager$CloudManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/CloudManager;

.field final synthetic val$simIndex:I


# direct methods
.method constructor <init>(Lmiui/net/CloudManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lmiui/net/CloudManager$6;->this$0:Lmiui/net/CloudManager;

    iput p2, p0, Lmiui/net/CloudManager$6;->val$simIndex:I

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
    .line 417
    invoke-virtual {p0}, Lmiui/net/CloudManager$6;->getService()Lmiui/net/ICloudManagerService;

    move-result-object v0

    .line 418
    .local v0, service:Lmiui/net/ICloudManagerService;
    iget v1, p0, Lmiui/net/CloudManager$6;->val$simIndex:I

    invoke-virtual {p0}, Lmiui/net/CloudManager$6;->getResponse()Lmiui/net/ICloudManagerResponse;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmiui/net/ICloudManagerService;->getFindDeviceToken(ILmiui/net/ICloudManagerResponse;)V

    .line 419
    return-void
.end method
