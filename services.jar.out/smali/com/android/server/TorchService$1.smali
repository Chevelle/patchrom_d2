.class Lcom/android/server/TorchService$1;
.super Landroid/content/BroadcastReceiver;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TorchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TorchService;


# direct methods
.method constructor <init>(Lcom/android/server/TorchService;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/TorchService$1;->this$0:Lcom/android/server/TorchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/TorchService$1;->this$0:Lcom/android/server/TorchService;

    #getter for: Lcom/android/server/TorchService;->mStopTorchLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$000(Lcom/android/server/TorchService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TorchService$1;->this$0:Lcom/android/server/TorchService;

    #getter for: Lcom/android/server/TorchService;->mStopTorchLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$000(Lcom/android/server/TorchService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
