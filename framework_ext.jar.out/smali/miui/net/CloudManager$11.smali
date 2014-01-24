.class Lmiui/net/CloudManager$11;
.super Lmiui/net/CloudManager$CmTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/CloudManager;->cancelNotification(I)Lmiui/net/CloudManager$CloudManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/CloudManager;

.field final synthetic val$notificationId:I


# direct methods
.method constructor <init>(Lmiui/net/CloudManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lmiui/net/CloudManager$11;->this$0:Lmiui/net/CloudManager;

    iput p2, p0, Lmiui/net/CloudManager$11;->val$notificationId:I

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
    .line 499
    invoke-virtual {p0}, Lmiui/net/CloudManager$11;->getService()Lmiui/net/ICloudManagerService;

    move-result-object v0

    .line 500
    .local v0, service:Lmiui/net/ICloudManagerService;
    iget v1, p0, Lmiui/net/CloudManager$11;->val$notificationId:I

    invoke-virtual {p0}, Lmiui/net/CloudManager$11;->getResponse()Lmiui/net/ICloudManagerResponse;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmiui/net/ICloudManagerService;->cancelNotification(ILmiui/net/ICloudManagerResponse;)V

    .line 501
    return-void
.end method
