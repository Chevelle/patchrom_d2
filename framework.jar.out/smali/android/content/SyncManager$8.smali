.class Landroid/content/SyncManager$8;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Landroid/content/SyncManager$8;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, -0x2710

    .line 321
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 323
    .local v1, userId:I
    if-ne v1, v3, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Landroid/content/SyncManager$8;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->onUserRemoved(I)V
    invoke-static {v2, v1}, Landroid/content/SyncManager;->access$900(Landroid/content/SyncManager;I)V

    goto :goto_0

    .line 327
    :cond_2
    const-string v2, "android.intent.action.USER_STARTING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    iget-object v2, p0, Landroid/content/SyncManager$8;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->onUserStarting(I)V
    invoke-static {v2, v1}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;I)V

    goto :goto_0

    .line 329
    :cond_3
    const-string v2, "android.intent.action.USER_STOPPING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Landroid/content/SyncManager$8;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->onUserStopping(I)V
    invoke-static {v2, v1}, Landroid/content/SyncManager;->access$1100(Landroid/content/SyncManager;I)V

    goto :goto_0
.end method
