.class public Lmiui/widget/HeiHeiGestureView;
.super Landroid/widget/FrameLayout;
.source "HeiHeiGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/HeiHeiGestureView$DetectingStage;,
        Lmiui/widget/HeiHeiGestureView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DENSITY:F = 0.0f

.field private static final EFFECT_DURATION:J = 0x5dcL

#the value of this static final field might be set in the static constructor
.field private static final MOVE_DOWN_DISTANCE_THREDHOLD:F = 0.0f

.field private static final MOVE_DOWN_ELAPSED_THREDHOLD:J = 0x3e8L

#the value of this static final field might be set in the static constructor
.field private static final MOVE_UP_DISTANCE_THREDHOLD:F = 0.0f

.field private static final MOVE_UP_ELAPSED_THREDHOLD:J = 0x7d0L

.field private static final START_OR_END_DURATION_THREDHOLD:J = 0xc8L

.field private static final TWO_POINTS_DISTANCE_X_THREDHOLD:F

.field private static final TWO_POINTS_DISTANCE_Y_THREDHOLD:F

.field private static final TWO_POINTS_DISTANCE_Y_THREDHOLD_MIN:F


# instance fields
.field private mBottomY:F

.field private mChances:[D

.field private mCurrentPicture:I

.field private mCurrentSound:Ljava/lang/String;

.field private mFirstY:F

.field private mImageView:Landroid/widget/ImageView;

.field private mLastMatchTime:J

.field private mLastTiggerTime:J

.field private mListener:Lmiui/widget/HeiHeiGestureView$OnTriggerListener;

.field private mPictures:[I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSounds:[Ljava/lang/String;

.field private mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

.field private mTopY:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c8

    .line 21
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lmiui/widget/HeiHeiGestureView;->DENSITY:F

    .line 25
    const/high16 v0, 0x4316

    sget v1, Lmiui/widget/HeiHeiGestureView;->DENSITY:F

    mul-float/2addr v0, v1

    sput v0, Lmiui/widget/HeiHeiGestureView;->TWO_POINTS_DISTANCE_X_THREDHOLD:F

    .line 26
    const/high16 v0, 0x4396

    sget v1, Lmiui/widget/HeiHeiGestureView;->DENSITY:F

    mul-float/2addr v0, v1

    sput v0, Lmiui/widget/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD:F

    .line 27
    const/high16 v0, 0x4248

    sget v1, Lmiui/widget/HeiHeiGestureView;->DENSITY:F

    mul-float/2addr v0, v1

    sput v0, Lmiui/widget/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD_MIN:F

    .line 28
    sget v0, Lmiui/widget/HeiHeiGestureView;->DENSITY:F

    mul-float/2addr v0, v2

    sput v0, Lmiui/widget/HeiHeiGestureView;->MOVE_DOWN_DISTANCE_THREDHOLD:F

    .line 29
    sget v0, Lmiui/widget/HeiHeiGestureView;->DENSITY:F

    mul-float/2addr v0, v2

    sput v0, Lmiui/widget/HeiHeiGestureView;->MOVE_UP_DISTANCE_THREDHOLD:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [D

    iput-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    .line 60
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/HeiHeiGestureView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private exitWaiting(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 162
    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->WAITING:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 165
    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 166
    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    .line 167
    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getTrackingY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lmiui/widget/HeiHeiGestureView;->mFirstY:F

    .line 168
    const/high16 v0, -0x4080

    iput v0, p0, Lmiui/widget/HeiHeiGestureView;->mBottomY:F

    .line 169
    const/high16 v0, 0x4f00

    iput v0, p0, Lmiui/widget/HeiHeiGestureView;->mTopY:F

    .line 170
    invoke-direct {p0}, Lmiui/widget/HeiHeiGestureView;->prepare()V

    .line 175
    :goto_0
    const/4 v0, 0x1

    .line 177
    :goto_1
    return v0

    .line 173
    :cond_0
    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getElapsedTime(Landroid/view/MotionEvent;)J
    .locals 4
    .parameter "event"

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getTrackingY(Landroid/view/MotionEvent;)F
    .locals 1
    .parameter "event"

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method private matchGesture(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 182
    iget v0, p0, Lmiui/widget/HeiHeiGestureView;->mBottomY:F

    iget v1, p0, Lmiui/widget/HeiHeiGestureView;->mTopY:F

    sub-float/2addr v0, v1

    sget v1, Lmiui/widget/HeiHeiGestureView;->MOVE_DOWN_DISTANCE_THREDHOLD:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 184
    :cond_0
    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    .line 185
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    .line 187
    :cond_1
    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MATCHED:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    .line 188
    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/widget/HeiHeiGestureView;->mLastMatchTime:J

    .line 189
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private playSound()V
    .locals 2

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private prepare()V
    .locals 7

    .prologue
    .line 104
    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    .line 105
    .local v2, path:Ljava/lang/String;
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    array-length v5, v5

    if-lez v5, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    .line 107
    .local v3, rand:D
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 108
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    aget-wide v5, v5, v1

    sub-double/2addr v3, v5

    .line 109
    const-wide/16 v5, 0x0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_2

    .line 110
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mSounds:[Ljava/lang/String;

    aget-object v2, v5, v1

    .line 111
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mPictures:[I

    aget v5, v5, v1

    iput v5, p0, Lmiui/widget/HeiHeiGestureView;->mCurrentPicture:I

    .line 118
    .end local v1           #i:I
    .end local v3           #rand:D
    :cond_0
    :try_start_0
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v5, :cond_1

    .line 119
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 120
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 123
    :cond_1
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mCurrentSound:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 124
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 125
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 131
    :goto_1
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 136
    :goto_2
    return-void

    .line 107
    .restart local v1       #i:I
    .restart local v3       #rand:D
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1           #i:I
    .end local v3           #rand:D
    :cond_3
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    .line 129
    iget-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    const/4 v5, 0x0

    iput-object v5, p0, Lmiui/widget/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_2
.end method

.method private trigger()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/widget/HeiHeiGestureView;->mLastTiggerTime:J

    .line 83
    iget-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    array-length v0, v0

    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mListener:Lmiui/widget/HeiHeiGestureView$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mListener:Lmiui/widget/HeiHeiGestureView$OnTriggerListener;

    invoke-interface {v0}, Lmiui/widget/HeiHeiGestureView$OnTriggerListener;->onTrigger()V

    .line 85
    :cond_0
    iget-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_sounds_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 87
    invoke-direct {p0}, Lmiui/widget/HeiHeiGestureView;->playSound()V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    invoke-direct {p0}, Lmiui/widget/HeiHeiGestureView;->playSound()V

    .line 92
    iget-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    iget v1, p0, Lmiui/widget/HeiHeiGestureView;->mCurrentPicture:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    new-instance v0, Lmiui/widget/HeiHeiGestureView$1;

    invoke-direct {v0, p0}, Lmiui/widget/HeiHeiGestureView$1;-><init>(Lmiui/widget/HeiHeiGestureView;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Lmiui/widget/HeiHeiGestureView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lmiui/widget/HeiHeiGestureView;->mLastTiggerTime:J

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 151
    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->WAITING:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    .line 154
    :cond_0
    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->exitWaiting(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 196
    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MATCHED:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/widget/HeiHeiGestureView;->mLastMatchTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 198
    invoke-direct {p0}, Lmiui/widget/HeiHeiGestureView;->trigger()V

    .line 252
    :cond_0
    :goto_0
    return v1

    .line 203
    :cond_1
    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->exitWaiting(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_DOWN:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    if-eq v2, v3, :cond_2

    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    if-ne v2, v3, :cond_0

    .line 207
    :cond_2
    const/4 v2, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 208
    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->matchGesture(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 215
    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v2, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    goto :goto_0

    .line 220
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lmiui/widget/HeiHeiGestureView;->TWO_POINTS_DISTANCE_X_THREDHOLD:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lmiui/widget/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lmiui/widget/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD_MIN:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 224
    :cond_5
    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v2, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    goto :goto_0

    .line 228
    :cond_6
    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getTrackingY(Landroid/view/MotionEvent;)F

    move-result v0

    .line 229
    .local v0, trackingY:F
    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iget-object v3, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    if-ne v2, v3, :cond_a

    .line 230
    iget v2, p0, Lmiui/widget/HeiHeiGestureView;->mTopY:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_7

    .line 231
    iput v0, p0, Lmiui/widget/HeiHeiGestureView;->mTopY:F

    .line 252
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 235
    :cond_7
    iget v2, p0, Lmiui/widget/HeiHeiGestureView;->mFirstY:F

    iget v3, p0, Lmiui/widget/HeiHeiGestureView;->mTopY:F

    sub-float/2addr v2, v3

    sget v3, Lmiui/widget/HeiHeiGestureView;->MOVE_UP_DISTANCE_THREDHOLD:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_8

    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 237
    :cond_8
    sget-object v2, Lmiui/widget/HeiHeiGestureView$DetectingStage;->STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v2, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    goto/16 :goto_0

    .line 240
    :cond_9
    sget-object v1, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_DOWN:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    iput-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mStage:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    goto :goto_1

    .line 244
    :cond_a
    iget v1, p0, Lmiui/widget/HeiHeiGestureView;->mBottomY:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_b

    .line 245
    iput v0, p0, Lmiui/widget/HeiHeiGestureView;->mBottomY:F

    goto :goto_1

    .line 248
    :cond_b
    invoke-direct {p0, p1}, Lmiui/widget/HeiHeiGestureView;->matchGesture(Landroid/view/MotionEvent;)Z

    goto :goto_1
.end method

.method public setOnTriggerListener(Lmiui/widget/HeiHeiGestureView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 63
    iput-object p1, p0, Lmiui/widget/HeiHeiGestureView;->mListener:Lmiui/widget/HeiHeiGestureView$OnTriggerListener;

    .line 64
    return-void
.end method

.method public setResources([Ljava/lang/String;[I[D)V
    .locals 3
    .parameter "sounds"
    .parameter "pictures"
    .parameter "chances"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iput-object p1, p0, Lmiui/widget/HeiHeiGestureView;->mSounds:[Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lmiui/widget/HeiHeiGestureView;->mPictures:[I

    .line 70
    iput-object p3, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    .line 72
    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mChances:[D

    array-length v1, v1

    if-lez v1, :cond_0

    .line 73
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lmiui/widget/HeiHeiGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    .line 74
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lmiui/widget/HeiHeiGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 76
    iget-object v1, p0, Lmiui/widget/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lmiui/widget/HeiHeiGestureView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
