.class Lmiui/view/VolumePanel$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumePanel$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/VolumePanel$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lmiui/view/VolumePanel$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1452
    iput-object p1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer$1;->this$1:Lmiui/view/VolumePanel$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 1455
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1456
    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer$1;->this$1:Lmiui/view/VolumePanel$SeekBarVolumizer;

    #getter for: Lmiui/view/VolumePanel$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lmiui/view/VolumePanel$SeekBarVolumizer;->access$1800(Lmiui/view/VolumePanel$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer$1;->this$1:Lmiui/view/VolumePanel$SeekBarVolumizer;

    #getter for: Lmiui/view/VolumePanel$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lmiui/view/VolumePanel$SeekBarVolumizer;->access$1900(Lmiui/view/VolumePanel$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1457
    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer$1;->this$1:Lmiui/view/VolumePanel$SeekBarVolumizer;

    #getter for: Lmiui/view/VolumePanel$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lmiui/view/VolumePanel$SeekBarVolumizer;->access$1900(Lmiui/view/VolumePanel$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/VolumePanel$SeekBarVolumizer$1;->this$1:Lmiui/view/VolumePanel$SeekBarVolumizer;

    #getter for: Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lmiui/view/VolumePanel$SeekBarVolumizer;->access$2000(Lmiui/view/VolumePanel$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer$1;->this$1:Lmiui/view/VolumePanel$SeekBarVolumizer;

    #getter for: Lmiui/view/VolumePanel$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lmiui/view/VolumePanel$SeekBarVolumizer;->access$1900(Lmiui/view/VolumePanel$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/VolumePanel$SeekBarVolumizer$1;->this$1:Lmiui/view/VolumePanel$SeekBarVolumizer;

    #getter for: Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lmiui/view/VolumePanel$SeekBarVolumizer;->access$2000(Lmiui/view/VolumePanel$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 1460
    .local v0, volume:I
    :goto_0
    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer$1;->this$1:Lmiui/view/VolumePanel$SeekBarVolumizer;

    #getter for: Lmiui/view/VolumePanel$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lmiui/view/VolumePanel$SeekBarVolumizer;->access$1800(Lmiui/view/VolumePanel$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1462
    .end local v0           #volume:I
    :cond_0
    return-void

    .line 1457
    :cond_1
    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer$1;->this$1:Lmiui/view/VolumePanel$SeekBarVolumizer;

    #getter for: Lmiui/view/VolumePanel$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lmiui/view/VolumePanel$SeekBarVolumizer;->access$1900(Lmiui/view/VolumePanel$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/VolumePanel$SeekBarVolumizer$1;->this$1:Lmiui/view/VolumePanel$SeekBarVolumizer;

    #getter for: Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lmiui/view/VolumePanel$SeekBarVolumizer;->access$2000(Lmiui/view/VolumePanel$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method
