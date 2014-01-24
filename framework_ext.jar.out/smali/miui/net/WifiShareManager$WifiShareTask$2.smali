.class Lmiui/net/WifiShareManager$WifiShareTask$2;
.super Ljava/lang/Object;
.source "WifiShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/WifiShareManager$WifiShareTask;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/net/WifiShareManager$WifiShareTask;


# direct methods
.method constructor <init>(Lmiui/net/WifiShareManager$WifiShareTask;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lmiui/net/WifiShareManager$WifiShareTask$2;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 265
    :try_start_0
    iget-object v2, p0, Lmiui/net/WifiShareManager$WifiShareTask$2;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    #getter for: Lmiui/net/WifiShareManager$WifiShareTask;->mWifiShareListener:Lmiui/net/WifiShareManager$WifiShareListener;
    invoke-static {v2}, Lmiui/net/WifiShareManager$WifiShareTask;->access$200(Lmiui/net/WifiShareManager$WifiShareTask;)Lmiui/net/WifiShareManager$WifiShareListener;

    move-result-object v2

    if-nez v2, :cond_0

    .line 284
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v2, p0, Lmiui/net/WifiShareManager$WifiShareTask$2;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    invoke-virtual {v2}, Lmiui/net/WifiShareManager$WifiShareTask;->getResult()Landroid/os/Bundle;

    move-result-object v1

    .line 269
    .local v1, result:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 270
    iget-object v2, p0, Lmiui/net/WifiShareManager$WifiShareTask$2;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    #getter for: Lmiui/net/WifiShareManager$WifiShareTask;->mWifiShareListener:Lmiui/net/WifiShareManager$WifiShareListener;
    invoke-static {v2}, Lmiui/net/WifiShareManager$WifiShareTask;->access$200(Lmiui/net/WifiShareManager$WifiShareTask;)Lmiui/net/WifiShareManager$WifiShareListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lmiui/net/WifiShareManager$WifiShareListener;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/net/exception/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_2

    .line 283
    .end local v1           #result:Landroid/os/Bundle;
    :goto_1
    iget-object v2, p0, Lmiui/net/WifiShareManager$WifiShareTask$2;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    const/4 v3, 0x0

    #setter for: Lmiui/net/WifiShareManager$WifiShareTask;->mWifiShareListener:Lmiui/net/WifiShareManager$WifiShareListener;
    invoke-static {v2, v3}, Lmiui/net/WifiShareManager$WifiShareTask;->access$202(Lmiui/net/WifiShareManager$WifiShareTask;Lmiui/net/WifiShareManager$WifiShareListener;)Lmiui/net/WifiShareManager$WifiShareListener;

    goto :goto_0

    .line 272
    .restart local v1       #result:Landroid/os/Bundle;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lmiui/net/WifiShareManager$WifiShareTask$2;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    #getter for: Lmiui/net/WifiShareManager$WifiShareTask;->mWifiShareListener:Lmiui/net/WifiShareManager$WifiShareListener;
    invoke-static {v2}, Lmiui/net/WifiShareManager$WifiShareTask;->access$200(Lmiui/net/WifiShareManager$WifiShareTask;)Lmiui/net/WifiShareManager$WifiShareListener;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "error"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5}, Lmiui/net/WifiShareManager$WifiShareListener;->onFailed(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmiui/net/exception/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 274
    .end local v1           #result:Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lmiui/net/WifiShareManager$WifiShareTask$2;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    #getter for: Lmiui/net/WifiShareManager$WifiShareTask;->mWifiShareListener:Lmiui/net/WifiShareManager$WifiShareListener;
    invoke-static {v2}, Lmiui/net/WifiShareManager$WifiShareTask;->access$200(Lmiui/net/WifiShareManager$WifiShareTask;)Lmiui/net/WifiShareManager$WifiShareListener;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5}, Lmiui/net/WifiShareManager$WifiShareListener;->onFailed(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 280
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    throw v2

    .line 276
    :catch_1
    move-exception v0

    .line 277
    .local v0, e:Lmiui/net/exception/OperationCancelledException;
    :try_start_3
    iget-object v2, p0, Lmiui/net/WifiShareManager$WifiShareTask$2;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    #getter for: Lmiui/net/WifiShareManager$WifiShareTask;->mWifiShareListener:Lmiui/net/WifiShareManager$WifiShareListener;
    invoke-static {v2}, Lmiui/net/WifiShareManager$WifiShareTask;->access$200(Lmiui/net/WifiShareManager$WifiShareTask;)Lmiui/net/WifiShareManager$WifiShareListener;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0}, Lmiui/net/exception/OperationCancelledException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5}, Lmiui/net/WifiShareManager$WifiShareListener;->onFailed(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 278
    .end local v0           #e:Lmiui/net/exception/OperationCancelledException;
    :catch_2
    move-exception v0

    .line 279
    .local v0, e:Lmiui/net/exception/AuthenticationFailureException;
    iget-object v2, p0, Lmiui/net/WifiShareManager$WifiShareTask$2;->this$1:Lmiui/net/WifiShareManager$WifiShareTask;

    #getter for: Lmiui/net/WifiShareManager$WifiShareTask;->mWifiShareListener:Lmiui/net/WifiShareManager$WifiShareListener;
    invoke-static {v2}, Lmiui/net/WifiShareManager$WifiShareTask;->access$200(Lmiui/net/WifiShareManager$WifiShareTask;)Lmiui/net/WifiShareManager$WifiShareListener;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0}, Lmiui/net/exception/AuthenticationFailureException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5}, Lmiui/net/WifiShareManager$WifiShareListener;->onFailed(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
