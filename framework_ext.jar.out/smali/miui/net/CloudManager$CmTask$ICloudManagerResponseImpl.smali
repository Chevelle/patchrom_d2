.class Lmiui/net/CloudManager$CmTask$ICloudManagerResponseImpl;
.super Lmiui/net/ICloudManagerResponse$Stub;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/CloudManager$CmTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICloudManagerResponseImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/net/CloudManager$CmTask;


# direct methods
.method constructor <init>(Lmiui/net/CloudManager$CmTask;)V
    .locals 0
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lmiui/net/CloudManager$CmTask$ICloudManagerResponseImpl;->this$1:Lmiui/net/CloudManager$CmTask;

    invoke-direct {p0}, Lmiui/net/ICloudManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .parameter "code"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 717
    iget-object v0, p0, Lmiui/net/CloudManager$CmTask$ICloudManagerResponseImpl;->this$1:Lmiui/net/CloudManager$CmTask;

    iget-object v1, p0, Lmiui/net/CloudManager$CmTask$ICloudManagerResponseImpl;->this$1:Lmiui/net/CloudManager$CmTask;

    #calls: Lmiui/net/CloudManager$CmTask;->convertErrorCodeToException(I)Ljava/lang/Exception;
    invoke-static {v1, p1}, Lmiui/net/CloudManager$CmTask;->access$100(Lmiui/net/CloudManager$CmTask;I)Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/net/CloudManager$CmTask;->setException(Ljava/lang/Throwable;)V

    .line 718
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lmiui/net/CloudManager$CmTask$ICloudManagerResponseImpl;->this$1:Lmiui/net/CloudManager$CmTask;

    invoke-virtual {v0, p1}, Lmiui/net/CloudManager$CmTask;->set(Landroid/os/Bundle;)V

    .line 712
    return-void
.end method
