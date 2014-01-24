.class public Lmiui/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/VolumePanel$SeekBarVolumizer;,
        Lmiui/view/VolumePanel$VolumeChangeInfo;,
        Lmiui/view/VolumePanel$WarningDialogReceiver;,
        Lmiui/view/VolumePanel$StreamControl;,
        Lmiui/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME_UNIT:I = 0x32

.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field static final SECTION_ID:[I = null

.field private static final SEEKBAR_MUTED_RES_ID:[I = null

.field private static final SEEKBAR_TYPE:[I = null

.field private static final SEEKBAR_UNMUTED_RES_ID:[I = null

.field private static final STREAMS:[Lmiui/view/VolumePanel$StreamResources; = null

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final VOLUME_SETTINGS_TIMEOUT_DELAY:I = 0xfa0

.field private static sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

.field private static sConfirmSafeVolumeLock:Ljava/lang/Object;


# instance fields
.field private final DESCPTION_ID:[I

.field private VOLUME_MAX:I

.field private VOLUME_NORMAL:I

.field private VOLUME_SILENT:I

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field protected mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mIsAnimationCancel:Z

.field mLastAudibleRingVolume:I

.field private mOrientationChanged:I

.field mRestoreRingVolume:I

.field private mRingIsSilent:Z

.field private mSeekBarVolumizer:[Lmiui/view/VolumePanel$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private mShowVolumeSettings:Z

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeChanged:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private mVolumeDivider:Landroid/widget/ImageView;

.field private mVolumeHeadSet:Landroid/widget/ImageView;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private mVolumePanel:Landroid/view/View;

.field private mVolumePregress:Lmiui/v5/widget/CircleProgressView;

.field private mVolumeSettings:Landroid/view/View;

.field private mVolumeStatus:I

.field private mVolumeType:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 92
    sput-boolean v2, Lmiui/view/VolumePanel;->LOGD:Z

    .line 220
    const/16 v0, 0x8

    new-array v0, v0, [Lmiui/view/VolumePanel$StreamResources;

    sget-object v1, Lmiui/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->RingerStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->VoiceStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lmiui/view/VolumePanel$StreamResources;->MediaStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    const/4 v1, 0x4

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->NotificationStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->AlarmStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->MasterStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->RemoteStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    .line 245
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    .line 277
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/view/VolumePanel;->SECTION_ID:[I

    .line 283
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmiui/view/VolumePanel;->SEEKBAR_TYPE:[I

    .line 289
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lmiui/view/VolumePanel;->SEEKBAR_MUTED_RES_ID:[I

    .line 301
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lmiui/view/VolumePanel;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 277
    :array_0
    .array-data 0x4
        0xe4t 0x0t 0xbt 0x6t
        0xe3t 0x0t 0xbt 0x6t
        0xe2t 0x0t 0xbt 0x6t
    .end array-data

    .line 283
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 289
    :array_2
    .array-data 0x4
        0x3ct 0x3t 0x2t 0x6t
        0x3et 0x3t 0x2t 0x6t
        0x39t 0x3t 0x2t 0x6t
    .end array-data

    .line 301
    :array_3
    .array-data 0x4
        0x3at 0x3t 0x2t 0x6t
        0x3ft 0x3t 0x2t 0x6t
        0x39t 0x3t 0x2t 0x6t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 3
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 337
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 155
    iput v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 295
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmiui/view/VolumePanel;->DESCPTION_ID:[I

    .line 306
    sget-object v0, Lmiui/view/VolumePanel;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/view/VolumePanel;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 307
    sget-object v0, Lmiui/view/VolumePanel;->SECTION_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lmiui/view/VolumePanel;->mSeekBars:[Landroid/widget/SeekBar;

    .line 345
    iput v1, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    .line 346
    iput v1, p0, Lmiui/view/VolumePanel;->mOrientationChanged:I

    .line 766
    iput v2, p0, Lmiui/view/VolumePanel;->VOLUME_NORMAL:I

    .line 767
    const/4 v0, 0x1

    iput v0, p0, Lmiui/view/VolumePanel;->VOLUME_MAX:I

    .line 768
    const/4 v0, 0x2

    iput v0, p0, Lmiui/view/VolumePanel;->VOLUME_SILENT:I

    .line 1416
    iput v2, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    .line 1417
    iput v2, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    .line 338
    iput-object p1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 339
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 340
    iput-object p2, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 341
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->recreateIfNeeded()V

    .line 342
    invoke-direct {p0}, Lmiui/view/VolumePanel;->listenToRingerMode()V

    .line 343
    return-void

    .line 295
    :array_0
    .array-data 0x4
        0x56t 0x2t 0xct 0x6t
        0x6t 0x2t 0xct 0x6t
        0x5t 0x2t 0xct 0x6t
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lmiui/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    sput-object p0, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1200(Lmiui/view/VolumePanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mIsAnimationCancel:Z

    return v0
.end method

.method static synthetic access$1300(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lmiui/view/VolumePanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lmiui/view/VolumePanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lmiui/view/VolumePanel;)Lmiui/v5/widget/CircleProgressView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    return-object v0
.end method

.method static synthetic access$1700(Lmiui/view/VolumePanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeSettings:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$300(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lmiui/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$400(Lmiui/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$402(Lmiui/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$500(Lmiui/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/view/VolumePanel;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->updateCurrentUI(Z)V

    return-void
.end method

.method static synthetic access$700(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lmiui/view/VolumePanel;->cleanup()V

    return-void
.end method

.method static synthetic access$800(Lmiui/view/VolumePanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mShowVolumeSettings:Z

    return v0
.end method

.method static synthetic access$900(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    return-object v0
.end method

.method private cleanup()V
    .locals 3

    .prologue
    .line 443
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lmiui/view/VolumePanel;->SECTION_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 444
    iget-object v1, p0, Lmiui/view/VolumePanel;->mSeekBarVolumizer:[Lmiui/view/VolumePanel$SeekBarVolumizer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lmiui/view/VolumePanel;->mSeekBarVolumizer:[Lmiui/view/VolumePanel$SeekBarVolumizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmiui/view/VolumePanel$SeekBarVolumizer;->stop()V

    .line 446
    iget-object v1, p0, Lmiui/view/VolumePanel;->mSeekBarVolumizer:[Lmiui/view/VolumePanel$SeekBarVolumizer;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 443
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_1
    return-void
.end method

.method private createStreamControl()V
    .locals 7

    .prologue
    .line 548
    new-instance v5, Ljava/util/HashMap;

    sget-object v6, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 549
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 550
    sget-object v5, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v3, v5, v0

    .line 551
    .local v3, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v4, v3, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    .line 552
    .local v4, streamType:I
    iget-boolean v5, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v5, :cond_0

    sget-object v5, Lmiui/view/VolumePanel$StreamResources;->NotificationStream:Lmiui/view/VolumePanel$StreamResources;

    if-ne v3, v5, :cond_0

    .line 553
    sget-object v3, Lmiui/view/VolumePanel$StreamResources;->RingerStream:Lmiui/view/VolumePanel$StreamResources;

    .line 555
    :cond_0
    new-instance v2, Lmiui/view/VolumePanel$StreamControl;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lmiui/view/VolumePanel$StreamControl;-><init>(Lmiui/view/VolumePanel;Lmiui/view/VolumePanel$1;)V

    .line 556
    .local v2, sc:Lmiui/view/VolumePanel$StreamControl;
    iput v4, v2, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    .line 557
    iget v5, v3, Lmiui/view/VolumePanel$StreamResources;->iconRes:I

    iput v5, v2, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    .line 558
    iget v5, v3, Lmiui/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v5, v2, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 559
    iget v5, v3, Lmiui/view/VolumePanel$StreamResources;->descRes:I

    iput v5, v2, Lmiui/view/VolumePanel$StreamControl;->descRes:I

    .line 560
    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 562
    .local v1, plusOne:I
    :goto_1
    invoke-direct {p0, v4}, Lmiui/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v5

    add-int/2addr v5, v1

    iput v5, v2, Lmiui/view/VolumePanel$StreamControl;->maxVolume:I

    .line 563
    iget-object v5, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    .end local v1           #plusOne:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 565
    .end local v2           #sc:Lmiui/view/VolumePanel$StreamControl;
    .end local v3           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    .end local v4           #streamType:I
    :cond_3
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1390
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 1391
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1392
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1273
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 1285
    :goto_0
    return-object v1

    .line 1274
    :cond_0
    monitor-enter p0

    .line 1275
    :try_start_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1277
    :try_start_1
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1285
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    goto :goto_0

    .line 1286
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1278
    :catch_0
    move-exception v0

    .line 1279
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    sget-boolean v1, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 1280
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 528
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 529
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 533
    :goto_0
    return v0

    .line 530
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 531
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 533
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 538
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 539
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 543
    :goto_0
    return v0

    .line 540
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 541
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 543
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private initVolumeSettings()V
    .locals 12

    .prologue
    .line 452
    sget-object v0, Lmiui/view/VolumePanel;->SECTION_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lmiui/view/VolumePanel$SeekBarVolumizer;

    iput-object v0, p0, Lmiui/view/VolumePanel;->mSeekBarVolumizer:[Lmiui/view/VolumePanel$SeekBarVolumizer;

    .line 453
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    sget-object v0, Lmiui/view/VolumePanel;->SECTION_ID:[I

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 454
    iget-object v0, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    sget-object v1, Lmiui/view/VolumePanel;->SECTION_ID:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 455
    .local v10, section:Landroid/view/View;
    const v0, 0x60b00e6

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 456
    .local v3, seekBar:Landroid/widget/SeekBar;
    iget-object v0, p0, Lmiui/view/VolumePanel;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v8

    .line 457
    sget-object v0, Lmiui/view/VolumePanel;->SEEKBAR_TYPE:[I

    aget v0, v0, v8

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 458
    iget-object v11, p0, Lmiui/view/VolumePanel;->mSeekBarVolumizer:[Lmiui/view/VolumePanel$SeekBarVolumizer;

    new-instance v0, Lmiui/view/VolumePanel$SeekBarVolumizer;

    iget-object v2, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v1, Lmiui/view/VolumePanel;->SEEKBAR_TYPE:[I

    aget v4, v1, v8

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmiui/view/VolumePanel$SeekBarVolumizer;-><init>(Lmiui/view/VolumePanel;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v11, v8

    .line 466
    :goto_1
    const v0, 0x60b00e8

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 467
    .local v6, checkbox:Landroid/widget/ImageView;
    iget-object v0, p0, Lmiui/view/VolumePanel;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v6, v0, v8

    .line 470
    const v0, 0x60b00e7

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmiui/view/VolumePanel;->DESCPTION_ID:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 453
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 461
    .end local v6           #checkbox:Landroid/widget/ImageView;
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mSeekBarVolumizer:[Lmiui/view/VolumePanel$SeekBarVolumizer;

    new-instance v1, Lmiui/view/VolumePanel$SeekBarVolumizer;

    iget-object v2, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v4, Lmiui/view/VolumePanel;->SEEKBAR_TYPE:[I

    aget v4, v4, v8

    invoke-direct {v1, p0, v2, v3, v4}, Lmiui/view/VolumePanel$SeekBarVolumizer;-><init>(Lmiui/view/VolumePanel;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v8

    goto :goto_1

    .line 474
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    .end local v10           #section:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lmiui/view/VolumePanel;->updateSlidersAndMutedStates()V

    .line 478
    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    if-nez v0, :cond_2

    .line 479
    const v9, 0x60b00e4

    .line 483
    .local v9, id:I
    :goto_2
    iget-object v0, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 484
    .local v7, hideSection:Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 485
    return-void

    .line 481
    .end local v7           #hideSection:Landroid/view/View;
    .end local v9           #id:I
    :cond_2
    const v9, 0x60b00e3

    .restart local v9       #id:I
    goto :goto_2
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 518
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 519
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 523
    :goto_0
    return v0

    .line 520
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 521
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 523
    :cond_2
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 488
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 489
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/view/VolumePanel$4;

    invoke-direct {v2, p0}, Lmiui/view/VolumePanel$4;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 515
    return-void
.end method

.method private reorderStream(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 568
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 569
    .local v0, active:Lmiui/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 570
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v1, -0x1

    iput v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 576
    :goto_0
    return-void

    .line 573
    :cond_0
    iput p1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 574
    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->updateState(Lmiui/view/VolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 1384
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 1385
    iget-boolean v1, p0, Lmiui/view/VolumePanel;->mShowVolumeSettings:Z

    if-eqz v1, :cond_0

    const/16 v0, 0xfa0

    .line 1386
    .local v0, delay:I
    :goto_0
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1387
    return-void

    .line 1385
    .end local v0           #delay:I
    :cond_0
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 1295
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 1296
    .local v0, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1297
    iput p1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    .line 1298
    iput p2, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1299
    iget-object v2, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1300
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    iget v2, v0, Lmiui/view/VolumePanel$StreamControl;->descRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1302
    :cond_0
    return-void

    .line 1299
    :cond_1
    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private startMaxVolumeAnimation()V
    .locals 11

    .prologue
    .line 952
    const/16 v10, 0x46

    .line 953
    .local v10, ANIMATION_TIME:I
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f8ccccd

    const/high16 v3, 0x3f80

    const v4, 0x3f8ccccd

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 955
    .local v0, scaleAnimation1:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x46

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 956
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartTime(J)V

    .line 958
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f8ccccd

    const/high16 v3, 0x3f80

    const v4, 0x3f8ccccd

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 960
    .local v1, scaleAnimation2:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x46

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 962
    new-instance v2, Lmiui/view/VolumePanel$5;

    invoke-direct {v2, p0, v1}, Lmiui/view/VolumePanel$5;-><init>(Lmiui/view/VolumePanel;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 981
    iget-object v2, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 982
    return-void
.end method

.method private startSilentAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 1091
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1092
    .local v0, alphaAnimation1:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1094
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1095
    .local v1, alphaAnimation2:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1097
    new-instance v2, Lmiui/view/VolumePanel$8;

    invoke-direct {v2, p0, v1}, Lmiui/view/VolumePanel$8;-><init>(Lmiui/view/VolumePanel;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1116
    iget-object v2, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1117
    return-void
.end method

.method private startVibrateAnimation()V
    .locals 15

    .prologue
    .line 987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/VolumePanel;->mIsAnimationCancel:Z

    .line 989
    const/4 v0, 0x4

    new-array v12, v0, [Landroid/view/animation/RotateAnimation;

    .line 990
    .local v12, rotationAnimation:[Landroid/view/animation/RotateAnimation;
    const/4 v14, 0x0

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x4100

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    aput-object v0, v12, v14

    .line 992
    const/4 v0, 0x0

    aget-object v0, v12, v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 993
    const/4 v0, 0x0

    aget-object v0, v12, v0

    const-wide/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 995
    const/4 v14, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x4100

    const/high16 v2, -0x3f00

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    aput-object v0, v12, v14

    .line 997
    const/4 v0, 0x1

    aget-object v0, v12, v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 998
    const/4 v0, 0x1

    aget-object v0, v12, v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1000
    const/4 v14, 0x2

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3f00

    const/high16 v2, 0x4100

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    aput-object v0, v12, v14

    .line 1002
    const/4 v0, 0x2

    aget-object v0, v12, v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1003
    const/4 v0, 0x2

    aget-object v0, v12, v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1005
    const/4 v14, 0x3

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3f00

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    aput-object v0, v12, v14

    .line 1007
    const/4 v0, 0x3

    aget-object v0, v12, v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1008
    const/4 v0, 0x3

    aget-object v0, v12, v0

    const-wide/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1010
    new-instance v9, Lmiui/view/VolumePanel$6;

    invoke-direct {v9, p0, v12}, Lmiui/view/VolumePanel$6;-><init>(Lmiui/view/VolumePanel;[Landroid/view/animation/RotateAnimation;)V

    .line 1042
    .local v9, animationListener:Landroid/view/animation/Animation$AnimationListener;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v12

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_0

    .line 1043
    aget-object v0, v12, v10

    invoke-virtual {v0, v9}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1042
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1045
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1048
    new-instance v11, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1049
    .local v11, random:Ljava/util/Random;
    const/16 v7, 0xa

    .line 1050
    .local v7, DISTANCEX:I
    const/4 v8, 0x5

    .line 1052
    .local v8, DISTANCEY:I
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x4120

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x40a0

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1054
    .local v13, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v0, 0x32

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1056
    new-instance v0, Lmiui/view/VolumePanel$7;

    invoke-direct {v0, p0, v11}, Lmiui/view/VolumePanel$7;-><init>(Lmiui/view/VolumePanel;Ljava/util/Random;)V

    invoke-virtual {v13, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1087
    iget-object v0, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1088
    return-void
.end method

.method private startVolumeSettingsAnimation()V
    .locals 12

    .prologue
    .line 1120
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1121
    .local v9, set1:Landroid/view/animation/AnimationSet;
    const-wide/16 v0, 0xaa

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1122
    const-wide/16 v0, 0x50

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1123
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1124
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1126
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1127
    new-instance v0, Lmiui/view/VolumePanel$9;

    invoke-direct {v0, p0}, Lmiui/view/VolumePanel$9;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1145
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 1146
    .local v11, volumePanel:Landroid/view/View;
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1147
    .local v10, set2:Landroid/view/animation/AnimationSet;
    const-wide/16 v0, 0xaa

    invoke-virtual {v10, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1148
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1149
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1150
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f00

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1152
    new-instance v0, Lmiui/view/VolumePanel$10;

    invoke-direct {v0, p0, v11, v9}, Lmiui/view/VolumePanel$10;-><init>(Lmiui/view/VolumePanel;Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1174
    invoke-virtual {v11, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1175
    return-void
.end method

.method private updateCurrentUI(Z)V
    .locals 3
    .parameter "showVolumeSettings"

    .prologue
    const/4 v2, 0x0

    .line 1403
    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mShowVolumeSettings:Z

    if-ne v0, p1, :cond_0

    .line 1414
    :goto_0
    return-void

    .line 1406
    :cond_0
    if-eqz p1, :cond_1

    .line 1407
    invoke-direct {p0}, Lmiui/view/VolumePanel;->startVolumeSettingsAnimation()V

    .line 1413
    :goto_1
    iput-boolean p1, p0, Lmiui/view/VolumePanel;->mShowVolumeSettings:Z

    goto :goto_0

    .line 1409
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeSettings:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1410
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1411
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v0, v2}, Lmiui/v5/widget/CircleProgressView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateSlidersAndMutedStates()V
    .locals 2

    .prologue
    .line 310
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lmiui/view/VolumePanel;->SEEKBAR_TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 311
    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->updateSlidersAndMutedStates(I)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    return-void
.end method

.method private updateSlidersAndMutedStates(I)V
    .locals 5
    .parameter "i"

    .prologue
    .line 316
    sget-object v3, Lmiui/view/VolumePanel;->SEEKBAR_TYPE:[I

    aget v1, v3, p1

    .line 317
    .local v1, streamType:I
    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 319
    .local v0, muted:Z
    iget-object v3, p0, Lmiui/view/VolumePanel;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 320
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 322
    iget-object v3, p0, Lmiui/view/VolumePanel;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    const v4, 0x602033d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    :cond_0
    :goto_0
    iget-object v3, p0, Lmiui/view/VolumePanel;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    .line 330
    if-eqz v0, :cond_5

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    const/4 v2, 0x0

    .line 333
    .local v2, volume:I
    :goto_1
    iget-object v3, p0, Lmiui/view/VolumePanel;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, p1

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 335
    .end local v2           #volume:I
    :cond_1
    return-void

    .line 325
    :cond_2
    iget-object v3, p0, Lmiui/view/VolumePanel;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v3, p1

    if-eqz v0, :cond_3

    sget-object v3, Lmiui/view/VolumePanel;->SEEKBAR_MUTED_RES_ID:[I

    aget v3, v3, p1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    sget-object v3, Lmiui/view/VolumePanel;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v3, v3, p1

    goto :goto_2

    .line 330
    :cond_4
    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    goto :goto_1
.end method

.method private updateState(Lmiui/view/VolumePanel$StreamControl;)V
    .locals 5
    .parameter "sc"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 580
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    iget v4, p1, Lmiui/view/VolumePanel$StreamControl;->maxVolume:I

    invoke-virtual {v1, v4}, Lmiui/v5/widget/CircleProgressView;->setMaxProgress(I)V

    .line 581
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    iget v4, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Lmiui/view/VolumePanel;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lmiui/v5/widget/CircleProgressView;->setProgress(I)V

    .line 582
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 583
    .local v0, muted:Z
    iget-object v4, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    .line 584
    iget-object v4, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    iget v4, p1, Lmiui/view/VolumePanel$StreamControl;->descRes:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 586
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;

    const v4, 0x6020195

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 587
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v1, v3}, Lmiui/v5/widget/CircleProgressView;->setBackgroundResource(I)V

    .line 588
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 590
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    const v4, 0x60201a3

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 591
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;

    const v4, 0x6020196

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 592
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    const v4, 0x60201a0

    invoke-virtual {v1, v4}, Lmiui/v5/widget/CircleProgressView;->setBackgroundResource(I)V

    .line 594
    :cond_0
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/16 v4, -0xc8

    if-ne v1, v4, :cond_3

    .line 597
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v1, v2}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    .line 603
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 583
    goto :goto_0

    .line 584
    :cond_2
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1

    .line 598
    :cond_3
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v4

    if-eq v1, v4, :cond_4

    if-eqz v0, :cond_4

    .line 599
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v1, v3}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    goto :goto_2

    .line 601
    :cond_4
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v1, v2}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateStreamDevice(I)V
    .locals 4
    .parameter "streamType"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 636
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 637
    .local v0, device:I
    if-nez p1, :cond_0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 640
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    const v2, 0x60202c0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 653
    :goto_0
    return-void

    .line 644
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 646
    :cond_1
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 647
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 648
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    const v2, 0x60202bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 650
    :cond_2
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 651
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, -0x1

    .line 1317
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1320
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-virtual {p0, v1, v2, v0}, Lmiui/view/VolumePanel;->onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V

    goto :goto_0

    .line 1325
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1330
    :pswitch_2
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1335
    :pswitch_3
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1340
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1345
    :pswitch_5
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 1350
    :pswitch_6
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1352
    iput v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 1357
    :pswitch_7
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-le v0, v1, :cond_0

    .line 1358
    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->updateState(Lmiui/view/VolumePanel$StreamControl;)V

    .line 1359
    invoke-direct {p0}, Lmiui/view/VolumePanel;->updateSlidersAndMutedStates()V

    goto :goto_0

    .line 1365
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 1370
    :pswitch_9
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1374
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1378
    :pswitch_b
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onDisplaySafeVolumeWarning()V

    goto :goto_0

    .line 1317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1395
    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1396
    .local v0, sbm:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 1398
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->updateCurrentUI(Z)V

    .line 1399
    return-void
.end method

.method protected onDisplaySafeVolumeWarning()V
    .locals 5

    .prologue
    .line 1244
    sget-object v2, Lmiui/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1245
    :try_start_0
    sget-object v1, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1246
    monitor-exit v2

    .line 1267
    :goto_0
    return-void

    .line 1248
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x60c024c

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040013

    new-instance v4, Lmiui/view/VolumePanel$11;

    invoke-direct {v4, p0}, Lmiui/view/VolumePanel$11;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1010355

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 1259
    new-instance v0, Lmiui/view/VolumePanel$WarningDialogReceiver;

    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v3, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v0, v1, v3}, Lmiui/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 1262
    .local v0, warning:Lmiui/view/VolumePanel$WarningDialogReceiver;
    sget-object v1, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1263
    sget-object v1, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x7d9

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 1265
    sget-object v1, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1266
    monitor-exit v2

    goto :goto_0

    .end local v0           #warning:Lmiui/view/VolumePanel$WarningDialogReceiver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1305
    monitor-enter p0

    .line 1306
    :try_start_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1307
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1308
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1310
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1306
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1312
    :cond_1
    monitor-exit p0

    .line 1313
    return-void

    .line 1312
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 754
    sget-boolean v1, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 757
    .local v0, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 758
    iget-object v2, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 759
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    iget v2, v0, Lmiui/view/VolumePanel$StreamControl;->descRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 762
    :cond_1
    new-instance v1, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-direct {v1, v4, v4}, Lmiui/view/VolumePanel$VolumeChangeInfo;-><init>(II)V

    invoke-virtual {p0, p1, p2, v1}, Lmiui/view/VolumePanel;->onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V

    .line 763
    return-void

    .line 758
    :cond_2
    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 912
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 915
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 918
    :cond_0
    monitor-enter p0

    .line 919
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 920
    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 921
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 922
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 924
    :cond_1
    monitor-exit p0

    .line 925
    return-void

    .line 924
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 1181
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1184
    :cond_1
    monitor-enter p0

    .line 1185
    :try_start_0
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 1186
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->reorderStream(I)V

    .line 1188
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1189
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    :cond_3
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 1195
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 1196
    invoke-virtual {p0, v4, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1199
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 1200
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 1201
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 1202
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 1205
    :cond_5
    invoke-virtual {p0, v5}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 1206
    invoke-virtual {p0, v5}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1208
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 1209
    return-void

    .line 1189
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1191
    :cond_6
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "VolumePanel"

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 1212
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1216
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1218
    :cond_1
    return-void
.end method

.method protected onSampleStarting(Lmiui/view/VolumePanel$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 1625
    iget-object v0, p0, Lmiui/view/VolumePanel;->mSeekBarVolumizer:[Lmiui/view/VolumePanel$SeekBarVolumizer;

    .local v0, arr$:[Lmiui/view/VolumePanel$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1626
    .local v3, vol:Lmiui/view/VolumePanel$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lmiui/view/VolumePanel$SeekBarVolumizer;->stopSample()V

    .line 1625
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1628
    .end local v3           #vol:Lmiui/view/VolumePanel$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 9
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getStreamVolume(I)I

    move-result v1

    .line 772
    .local v1, index:I
    const/4 v6, 0x0

    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    .line 774
    sget-boolean v6, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_0

    .line 775
    const-string v6, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onShowVolumeChanged(streamType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", flags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v2

    .line 783
    .local v2, max:I
    sparse-switch p1, :sswitch_data_0

    .line 849
    :cond_1
    :goto_0
    :sswitch_0
    iget-object v6, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/view/VolumePanel$StreamControl;

    .line 850
    .local v4, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v4, :cond_5

    .line 851
    iget v6, v4, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 853
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mIsAnimationCancel:Z

    .line 855
    :cond_3
    iget-object v6, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    iget v7, v4, Lmiui/view/VolumePanel$StreamControl;->maxVolume:I

    invoke-virtual {v6, v7}, Lmiui/v5/widget/CircleProgressView;->setMaxProgress(I)V

    .line 856
    iget-object v6, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v6, v1}, Lmiui/v5/widget/CircleProgressView;->setProgress(I)V

    .line 857
    iget v6, v4, Lmiui/view/VolumePanel$StreamControl;->maxVolume:I

    if-ne v1, v6, :cond_a

    iget-object v6, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 858
    iget v6, p0, Lmiui/view/VolumePanel;->mVolumeStatus:I

    iget v7, p0, Lmiui/view/VolumePanel;->VOLUME_MAX:I

    if-eq v6, v7, :cond_4

    .line 859
    invoke-direct {p0}, Lmiui/view/VolumePanel;->startMaxVolumeAnimation()V

    .line 860
    iget v6, p0, Lmiui/view/VolumePanel;->VOLUME_MAX:I

    iput v6, p0, Lmiui/view/VolumePanel;->mVolumeStatus:I

    .line 873
    :cond_4
    :goto_1
    iget-object v6, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v6

    if-eq p1, v6, :cond_c

    const/16 v6, -0xc8

    if-eq p1, v6, :cond_c

    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 875
    iget-object v6, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    .line 881
    :cond_5
    :goto_2
    iget-object v6, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_6

    .line 882
    const/16 v6, -0xc8

    if-ne p1, v6, :cond_e

    const/4 v5, -0x1

    .line 884
    .local v5, stream:I
    :goto_3
    iget-object v6, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 885
    iget-object v6, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v7, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 886
    iget-object v6, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 887
    invoke-direct {p0}, Lmiui/view/VolumePanel;->initVolumeSettings()V

    .line 891
    .end local v5           #stream:I
    :cond_6
    const/16 v6, -0xc8

    if-eq p1, v6, :cond_7

    iget-object v6, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v6, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 897
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 898
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-virtual {p0, v6, v7, v8}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 901
    :cond_7
    iget-object v6, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 902
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    sget-object v6, Lmiui/view/VolumePanel;->SEEKBAR_TYPE:[I

    array-length v6, v6

    if-ge v0, v6, :cond_f

    .line 903
    sget-object v6, Lmiui/view/VolumePanel;->SEEKBAR_TYPE:[I

    aget v6, v6, v0

    if-ne v6, p1, :cond_8

    .line 904
    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->updateSlidersAndMutedStates(I)V

    .line 902
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 787
    .end local v0           #i:I
    .end local v4           #sc:Lmiui/view/VolumePanel$StreamControl;
    :sswitch_1
    iget-object v6, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 789
    .local v3, ringuri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 790
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 797
    .end local v3           #ringuri:Landroid/net/Uri;
    :sswitch_2
    iget-object v6, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v6

    and-int/lit16 v6, v6, 0x380

    if-eqz v6, :cond_9

    .line 801
    const v6, 0x6020197

    const v7, 0x6020198

    invoke-direct {p0, v6, v7}, Lmiui/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 803
    :cond_9
    const v6, 0x602019a

    const v7, 0x602019a

    invoke-direct {p0, v6, v7}, Lmiui/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 814
    :sswitch_3
    add-int/lit8 v1, v1, 0x1

    .line 815
    add-int/lit8 v2, v2, 0x1

    .line 816
    goto/16 :goto_0

    .line 824
    :sswitch_4
    iget-object v6, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 826
    .restart local v3       #ringuri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 827
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 838
    .end local v3           #ringuri:Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v1, v1, 0x1

    .line 839
    add-int/lit8 v2, v2, 0x1

    .line 840
    goto/16 :goto_0

    .line 844
    :sswitch_6
    sget-boolean v6, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_1

    const-string v6, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showing remote volume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " over "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 862
    .restart local v4       #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_a
    iget v6, v4, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 865
    iget v6, p0, Lmiui/view/VolumePanel;->mVolumeStatus:I

    iget v7, p0, Lmiui/view/VolumePanel;->VOLUME_SILENT:I

    if-eq v6, v7, :cond_4

    .line 866
    invoke-direct {p0}, Lmiui/view/VolumePanel;->startSilentAnimation()V

    .line 867
    iget v6, p0, Lmiui/view/VolumePanel;->VOLUME_SILENT:I

    iput v6, p0, Lmiui/view/VolumePanel;->mVolumeStatus:I

    goto/16 :goto_1

    .line 870
    :cond_b
    iget v6, p0, Lmiui/view/VolumePanel;->VOLUME_NORMAL:I

    iput v6, p0, Lmiui/view/VolumePanel;->mVolumeStatus:I

    goto/16 :goto_1

    .line 877
    :cond_c
    iget-object v7, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v7, v6}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_d
    const/4 v6, 0x0

    goto :goto_5

    :cond_e
    move v5, p1

    .line 882
    goto/16 :goto_3

    .line 908
    :cond_f
    return-void

    .line 783
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 1229
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_0
    if-ne p2, v1, :cond_2

    .line 1231
    .local v1, isVisible:Z
    :goto_0
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 1232
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 1233
    .local v2, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v3, v2, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 1234
    iput-boolean v1, v2, Lmiui/view/VolumePanel$StreamResources;->show:Z

    .line 1235
    if-nez v1, :cond_1

    iget v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 1236
    const/4 v3, -0x1

    iput v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    .end local v2           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 1230
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1231
    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1229
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    .end local v2           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 929
    monitor-enter p0

    .line 930
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 931
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 932
    iget-object v3, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 933
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 934
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 931
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 937
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 938
    return-void

    .line 937
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 943
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 949
    :goto_0
    return-void

    .line 947
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 948
    invoke-direct {p0}, Lmiui/view/VolumePanel;->startVibrateAnimation()V

    goto :goto_0
.end method

.method protected onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"
    .parameter "vc"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 720
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 723
    monitor-enter p0

    .line 724
    :try_start_0
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    .line 725
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->reorderStream(I)V

    .line 727
    :cond_1
    invoke-virtual {p0, p1, p2}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 729
    if-ne v3, p1, :cond_2

    iget v0, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    if-nez v0, :cond_2

    .line 730
    iget v0, p3, Lmiui/view/VolumePanel$VolumeChangeInfo;->mFromVolume:I

    iput v0, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    .line 732
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 736
    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 737
    invoke-virtual {p0, v3, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 740
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 741
    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 742
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 743
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 746
    :cond_5
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 747
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 749
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 750
    return-void

    .line 732
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDisplaySafeVolumeWarning()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x0

    .line 709
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 683
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    :goto_0
    return-void

    .line 686
    :cond_0
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 705
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lmiui/view/VolumePanel;->postMuteChanged(II)V

    .line 706
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 690
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lmiui/view/VolumePanel;->postVolumeChanged(II)V

    .line 691
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 694
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    :goto_0
    return-void

    .line 695
    :cond_0
    monitor-enter p0

    .line 696
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 697
    invoke-direct {p0}, Lmiui/view/VolumePanel;->createStreamControl()V

    .line 699
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 701
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 699
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 667
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 669
    return-void

    .line 667
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v1, 0x8

    .line 656
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    :goto_0
    return-void

    .line 657
    :cond_0
    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 659
    invoke-direct {p0}, Lmiui/view/VolumePanel;->createStreamControl()V

    .line 661
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 663
    invoke-virtual {p0, v1, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 7
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, from:I
    const/4 v2, 0x0

    .line 608
    .local v2, to:I
    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    .line 609
    iget v0, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    .line 610
    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3, p1}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v2

    .line 611
    iput v2, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    .line 613
    :cond_0
    invoke-virtual {p0, v6}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 633
    :goto_0
    return-void

    .line 614
    :cond_1
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->recreateIfNeeded()V

    .line 615
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->updateStreamDevice(I)V

    .line 616
    monitor-enter p0

    .line 617
    :try_start_0
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 618
    invoke-direct {p0}, Lmiui/view/VolumePanel;->createStreamControl()V

    .line 620
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 623
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumePanel$StreamControl;

    .line 624
    .local v1, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_4

    .line 625
    iput p1, v1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    .line 626
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .end local v1           #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_3
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 632
    new-instance v3, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-direct {v3, v0, v2}, Lmiui/view/VolumePanel$VolumeChangeInfo;-><init>(II)V

    invoke-virtual {p0, v6, p1, p2, v3}, Lmiui/view/VolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 628
    .restart local v1       #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_4
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unkown stream type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not bind any streamcontrol"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public recreateIfNeeded()V
    .locals 12

    .prologue
    .line 348
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 349
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v0, :cond_0

    const/4 v6, 0x0

    .line 350
    .local v6, themeChanged:I
    :goto_0
    if-nez v0, :cond_1

    const/4 v4, 0x0

    .line 351
    .local v4, orientationChanged:I
    :goto_1
    iget v9, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    if-ne v9, v6, :cond_2

    iget v9, p0, Lmiui/view/VolumePanel;->mOrientationChanged:I

    if-ne v9, v4, :cond_2

    .line 440
    :goto_2
    return-void

    .line 349
    .end local v4           #orientationChanged:I
    .end local v6           #themeChanged:I
    :cond_0
    iget-object v9, v0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v6, v9, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    goto :goto_0

    .line 350
    .restart local v6       #themeChanged:I
    :cond_1
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_1

    .line 353
    .restart local v4       #orientationChanged:I
    :cond_2
    iput v6, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    .line 354
    iput v4, p0, Lmiui/view/VolumePanel;->mOrientationChanged:I

    .line 355
    const/4 v9, 0x0

    iput-object v9, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 357
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x6090004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 359
    .local v7, useMasterVolume:Z
    if-eqz v7, :cond_4

    .line 360
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    sget-object v9, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v9, v9

    if-ge v1, v9, :cond_4

    .line 361
    sget-object v9, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v5, v9, v1

    .line 362
    .local v5, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v9, v5, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    const/16 v10, -0x64

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, v5, Lmiui/view/VolumePanel$StreamResources;->show:Z

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 362
    :cond_3
    const/4 v9, 0x0

    goto :goto_4

    .line 366
    .end local v1           #i:I
    .end local v5           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :cond_4
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 368
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v9, 0x6030055

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    .line 369
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v10, Lmiui/view/VolumePanel$1;

    invoke-direct {v10, p0}, Lmiui/view/VolumePanel$1;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 376
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    .line 379
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    .line 380
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    .line 381
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00cf

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    .line 382
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lmiui/v5/widget/CircleProgressView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    .line 383
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;

    .line 384
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00e5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeSettings:Landroid/view/View;

    .line 386
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_5

    .line 387
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 403
    :goto_5
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v10, "Volume control"

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v10, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 405
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v10, Lmiui/view/VolumePanel$3;

    invoke-direct {v10, p0}, Lmiui/view/VolumePanel$3;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 420
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 421
    .local v8, window:Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 422
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x0

    iput-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 423
    if-eqz v0, :cond_6

    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 425
    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 426
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x60a004d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 432
    :goto_6
    const/4 v9, 0x0

    iput-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 433
    const/16 v9, 0x7e4

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 434
    const/4 v9, -0x2

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 435
    const/4 v9, -0x2

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 436
    invoke-virtual {v8, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 437
    const v9, 0x40008

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 439
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x6090006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    goto/16 :goto_2

    .line 389
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #window:Landroid/view/Window;
    :cond_5
    new-instance v9, Lmiui/view/VolumePanel$2;

    iget-object v10, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const v11, 0x60d0046

    invoke-direct {v9, p0, v10, v11}, Lmiui/view/VolumePanel$2;-><init>(Lmiui/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 400
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    new-array v9, v9, [Landroid/media/ToneGenerator;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 401
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "vibrator"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    goto/16 :goto_5

    .line 429
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v8       #window:Landroid/view/Window;
    :cond_6
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 430
    const/4 v9, 0x0

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_6
.end method
