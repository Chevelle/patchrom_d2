.class public Lmiui/view/VolumePanel$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOriginalStreamVolume:I

.field private mRequestFocus:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lmiui/view/VolumePanel;


# direct methods
.method public constructor <init>(Lmiui/view/VolumePanel;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 1466
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/view/VolumePanel$SeekBarVolumizer;-><init>(Lmiui/view/VolumePanel;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 1467
    return-void
.end method

.method public constructor <init>(Lmiui/view/VolumePanel;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "defaultUri"

    .prologue
    const/4 v1, -0x1

    .line 1469
    iput-object p1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->this$0:Lmiui/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1439
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 1446
    iput v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mLastProgress:I

    .line 1448
    iput v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 1452
    new-instance v0, Lmiui/view/VolumePanel$SeekBarVolumizer$1;

    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiui/view/VolumePanel$SeekBarVolumizer$1;-><init>(Lmiui/view/VolumePanel$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 1470
    iput-object p2, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 1471
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 1472
    iput p4, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I

    .line 1473
    iput-object p3, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 1475
    invoke-direct {p0, p3, p5}, Lmiui/view/VolumePanel$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 1476
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .prologue
    .line 1570
    iget-boolean v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mRequestFocus:Z

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mRequestFocus:Z

    .line 1574
    :cond_0
    return-void
.end method

.method static synthetic access$1800(Lmiui/view/VolumePanel$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1436
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1900(Lmiui/view/VolumePanel$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1436
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2000(Lmiui/view/VolumePanel$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1436
    iget v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 4
    .parameter "seekBar"
    .parameter "defaultUri"

    .prologue
    .line 1479
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1480
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 1481
    iget v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1482
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1484
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1488
    if-nez p2, :cond_0

    .line 1489
    iget v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1490
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 1497
    :cond_0
    :goto_0
    iput-object p2, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 1498
    return-void

    .line 1491
    :cond_1
    iget v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1492
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1494
    :cond_2
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 1581
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 1582
    invoke-virtual {p0}, Lmiui/view/VolumePanel$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1583
    invoke-virtual {p0}, Lmiui/view/VolumePanel$SeekBarVolumizer;->startSample()V

    .line 1585
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel$SeekBarVolumizer;->postSetVolume(I)V

    .line 1586
    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 1587
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1590
    iget v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 1591
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1592
    invoke-virtual {p0}, Lmiui/view/VolumePanel$SeekBarVolumizer;->startSample()V

    .line 1593
    iget v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel$SeekBarVolumizer;->postSetVolume(I)V

    .line 1594
    iput v2, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 1601
    :goto_0
    return-void

    .line 1596
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 1597
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1598
    invoke-virtual {p0}, Lmiui/view/VolumePanel$SeekBarVolumizer;->stopSample()V

    .line 1599
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 1620
    invoke-direct {p0}, Lmiui/view/VolumePanel$SeekBarVolumizer;->abandonAudioFocus()V

    .line 1621
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 1512
    if-nez p3, :cond_0

    .line 1517
    :goto_0
    return-void

    .line 1516
    :cond_0
    invoke-virtual {p0, p2}, Lmiui/view/VolumePanel$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    .line 1611
    iget v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1612
    iget v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 1613
    iget v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mLastProgress:I

    .line 1614
    iget v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel$SeekBarVolumizer;->postSetVolume(I)V

    .line 1616
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 1604
    iget v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 1605
    iget v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    .line 1606
    iget v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    .line 1608
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1527
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 1530
    invoke-virtual {p0}, Lmiui/view/VolumePanel$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1531
    invoke-virtual {p0}, Lmiui/view/VolumePanel$SeekBarVolumizer;->startSample()V

    .line 1533
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 1521
    iput p1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mLastProgress:I

    .line 1522
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1523
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1524
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 1507
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1508
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1536
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1537
    return-void
.end method

.method public startSample()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1544
    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v1, p0}, Lmiui/view/VolumePanel;->onSampleStarting(Lmiui/view/VolumePanel$SeekBarVolumizer;)V

    .line 1546
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1547
    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1548
    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1549
    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1550
    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1551
    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 1553
    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1554
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mRequestFocus:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1560
    :goto_0
    return-void

    .line 1555
    :catch_0
    move-exception v0

    .line 1556
    .local v0, e:Ljava/lang/SecurityException;
    iput-object v5, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 1557
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 1558
    .local v0, e:Ljava/io/IOException;
    iput-object v5, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 1501
    invoke-virtual {p0}, Lmiui/view/VolumePanel$SeekBarVolumizer;->stopSample()V

    .line 1502
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1503
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1504
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lmiui/view/VolumePanel$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1565
    invoke-direct {p0}, Lmiui/view/VolumePanel$SeekBarVolumizer;->abandonAudioFocus()V

    .line 1567
    :cond_0
    return-void
.end method
