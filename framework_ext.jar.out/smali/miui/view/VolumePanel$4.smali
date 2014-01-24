.class Lmiui/view/VolumePanel$4;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumePanel;->listenToRingerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumePanel;


# direct methods
.method constructor <init>(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 494
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    iget-object v2, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v2, v6}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 498
    iget-object v2, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    iget-object v3, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v3, v6}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 501
    iget-object v2, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mShowVolumeSettings:Z
    invoke-static {v2}, Lmiui/view/VolumePanel;->access$800(Lmiui/view/VolumePanel;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v2}, Lmiui/view/VolumePanel;->access$400(Lmiui/view/VolumePanel;)I

    move-result v2

    const/16 v3, -0xc8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    iget-object v2, v2, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    iget-object v3, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v3}, Lmiui/view/VolumePanel;->access$400(Lmiui/view/VolumePanel;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.media.EXTRA_RINGER_MODE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 504
    iget-object v2, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v2, v5}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 505
    iget-object v2, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    iget-object v3, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v3, v5}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    const-string v3, "state"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 509
    .local v1, hasHeadSet:Z
    :goto_1
    iget-object v3, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;
    invoke-static {v3}, Lmiui/view/VolumePanel;->access$900(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v1, :cond_3

    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    iget-object v3, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;
    invoke-static {v3}, Lmiui/view/VolumePanel;->access$1000(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v1, :cond_4

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object v2, p0, Lmiui/view/VolumePanel$4;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;
    invoke-static {v2}, Lmiui/view/VolumePanel;->access$1000(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x60202bf

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .end local v1           #hasHeadSet:Z
    :cond_2
    move v1, v2

    .line 508
    goto :goto_1

    .restart local v1       #hasHeadSet:Z
    :cond_3
    move v3, v4

    .line 509
    goto :goto_2

    :cond_4
    move v2, v4

    .line 510
    goto :goto_3
.end method
