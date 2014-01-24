.class Lmiui/widget/IconPanelActivity$StartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IconPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/IconPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/IconPanelActivity;


# direct methods
.method constructor <init>(Lmiui/widget/IconPanelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 170
    iget-object v1, p0, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    iget v1, v1, Lmiui/widget/IconPanelActivity;->mStatus:I

    sget v2, Lmiui/widget/IconPanelActivity;->STATUS_UNINITIALIZED:I

    if-eq v1, v2, :cond_1

    .line 171
    const-string v1, "IconPanelActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad status, mStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    iget v3, v3, Lmiui/widget/IconPanelActivity;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string v1, "miui.intent.extra.ICON_PANEL_COMMAND"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, cmd:Ljava/lang/String;
    const-string v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lmiui/widget/IconPanelActivity$StartReceiver$1;

    invoke-direct {v2, p0, p1}, Lmiui/widget/IconPanelActivity$StartReceiver$1;-><init>(Lmiui/widget/IconPanelActivity$StartReceiver;Landroid/content/Context;)V

    const-wide/16 v3, 0x28

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
