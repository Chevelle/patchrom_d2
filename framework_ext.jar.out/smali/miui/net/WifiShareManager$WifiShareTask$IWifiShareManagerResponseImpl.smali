.class Lmiui/net/WifiShareManager$WifiShareTask$IWifiShareManagerResponseImpl;
.super Lmiui/net/IWifiShareManagerResponse$Stub;
.source "WifiShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/WifiShareManager$WifiShareTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IWifiShareManagerResponseImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/net/WifiShareManager$WifiShareTask;


# direct methods
.method constructor <init>(Lmiui/net/WifiShareManager$WifiShareTask;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lmiui/net/WifiShareManager$WifiShareTask$IWifiShareManagerResponseImpl;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    invoke-direct {p0}, Lmiui/net/IWifiShareManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "code"
    .parameter "message"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 333
    iget-object v0, p0, Lmiui/net/WifiShareManager$WifiShareTask$IWifiShareManagerResponseImpl;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/net/WifiShareManager$WifiShareTask;->cancel(Z)Z

    .line 334
    iget-object v0, p0, Lmiui/net/WifiShareManager$WifiShareTask$IWifiShareManagerResponseImpl;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    invoke-virtual {v0}, Lmiui/net/WifiShareManager$WifiShareTask;->unBind()V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lmiui/net/WifiShareManager$WifiShareTask$IWifiShareManagerResponseImpl;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmiui/net/WifiShareManager$WifiShareTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
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
    .line 326
    iget-object v0, p0, Lmiui/net/WifiShareManager$WifiShareTask$IWifiShareManagerResponseImpl;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    invoke-virtual {v0, p1}, Lmiui/net/WifiShareManager$WifiShareTask;->set(Landroid/os/Bundle;)V

    .line 327
    return-void
.end method
