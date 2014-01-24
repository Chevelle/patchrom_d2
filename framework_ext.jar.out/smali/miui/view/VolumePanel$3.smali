.class Lmiui/view/VolumePanel$3;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumePanel;->recreateIfNeeded()V
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
    .line 405
    iput-object p1, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    iget v0, v0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    iget-object v0, v0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    iget v1, v1, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    invoke-static {v0, v1}, Lmiui/util/AudioManagerHelper;->saveLastAudibleRingVolume(Landroid/content/Context;I)V

    .line 409
    iget-object v0, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    iput v2, v0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    .line 411
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    const/4 v1, -0x1

    #setter for: Lmiui/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Lmiui/view/VolumePanel;->access$402(Lmiui/view/VolumePanel;I)I

    .line 412
    iget-object v0, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lmiui/view/VolumePanel;->access$500(Lmiui/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Lmiui/view/VolumePanel;->access$400(Lmiui/view/VolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 414
    iget-object v0, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    #calls: Lmiui/view/VolumePanel;->updateCurrentUI(Z)V
    invoke-static {v0, v2}, Lmiui/view/VolumePanel;->access$600(Lmiui/view/VolumePanel;Z)V

    .line 415
    iget-object v0, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    #calls: Lmiui/view/VolumePanel;->cleanup()V
    invoke-static {v0}, Lmiui/view/VolumePanel;->access$700(Lmiui/view/VolumePanel;)V

    .line 416
    return-void
.end method
