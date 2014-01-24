.class public Lmiui/widget/SlidingButton;
.super Landroid/widget/CheckBox;
.source "SlidingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/SlidingButton$SlidingHandler;,
        Lmiui/widget/SlidingButton$OnCheckedChangedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final ANIMATION_TOGGLINE_FRAMES:I = 0x14

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final MSG_TOGGLING_ANIMATE:I = 0x3e9

.field private static final TAP_THRESHOLD:I = 0x6


# instance fields
.field private bDoAlphaAnimation:Z

.field private mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

.field private mAlphaPixels:[I

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBarSlice:[I

.field private mCurrentAnimationTime:J

.field private mCurrentTogglingAnimationTime:J

.field private mFrame:Landroid/graphics/drawable/Drawable;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mLastX:I

.field private mOffDisable:Landroid/graphics/drawable/BitmapDrawable;

.field private mOnCheckedChangedListener:Lmiui/widget/SlidingButton$OnCheckedChangedListener;

.field private mOnDisable:Landroid/graphics/drawable/BitmapDrawable;

.field private mOriginalTouchPointX:I

.field private mPressedSlider:Landroid/graphics/drawable/BitmapDrawable;

.field private mSlideMask:Landroid/graphics/drawable/Drawable;

.field private mSlideOff:Landroid/graphics/Bitmap;

.field private mSlideOffPaint:Landroid/graphics/Paint;

.field private mSlideOn:Landroid/graphics/Bitmap;

.field private mSlideOnPaint:Landroid/graphics/Paint;

.field private mSlider:Landroid/graphics/drawable/BitmapDrawable;

.field private mSliderMoved:Z

.field private mSliderOffset:I

.field private mSliderPositionEnd:I

.field private mSliderPositionStart:I

.field private mSliderWidth:I

.field private mTapThreshold:I

.field private mTracking:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-boolean v0, p0, Lmiui/widget/SlidingButton;->bDoAlphaAnimation:Z

    .line 62
    iput-boolean v0, p0, Lmiui/widget/SlidingButton;->mAnimating:Z

    .line 69
    new-instance v0, Lmiui/widget/SlidingButton$SlidingHandler;

    invoke-direct {v0, p0, v1}, Lmiui/widget/SlidingButton$SlidingHandler;-><init>(Lmiui/widget/SlidingButton;Lmiui/widget/SlidingButton$1;)V

    iput-object v0, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    .line 74
    const/high16 v0, 0x4316

    iput v0, p0, Lmiui/widget/SlidingButton;->mAnimatedVelocity:F

    .line 83
    iput-object v1, p0, Lmiui/widget/SlidingButton;->mOnCheckedChangedListener:Lmiui/widget/SlidingButton$OnCheckedChangedListener;

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/SlidingButton;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method static synthetic access$100(Lmiui/widget/SlidingButton;)Lmiui/widget/SlidingButton$OnCheckedChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mOnCheckedChangedListener:Lmiui/widget/SlidingButton$OnCheckedChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/SlidingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->doAnimation()V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/SlidingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lmiui/widget/SlidingButton;->doTogglingAnimation(I)V

    return-void
.end method

.method private animateOff()V
    .locals 1

    .prologue
    .line 290
    const/high16 v0, -0x3cea

    invoke-direct {p0, v0}, Lmiui/widget/SlidingButton;->performFling(F)V

    .line 291
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 292
    return-void
.end method

.method private animateOn()V
    .locals 1

    .prologue
    .line 285
    const/high16 v0, 0x4316

    invoke-direct {p0, v0}, Lmiui/widget/SlidingButton;->performFling(F)V

    .line 286
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 287
    return-void
.end method

.method private animateToggle()V
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateOff()V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateOn()V

    goto :goto_0
.end method

.method private cutEdge(II[I)V
    .locals 6
    .parameter "baseWidth"
    .parameter "baseHeight"
    .parameter "basePixels"

    .prologue
    .line 398
    const v2, 0xffffff

    .line 399
    .local v2, sRGBMask:I
    const/16 v1, 0x18

    .line 401
    .local v1, sAlphaShift:I
    mul-int v3, p1, p2

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 402
    aget v3, p3, v0

    aget v4, p3, v0

    ushr-int/2addr v4, v1

    iget-object v5, p0, Lmiui/widget/SlidingButton;->mAlphaPixels:[I

    aget v5, v5, v0

    ushr-int/2addr v5, v1

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    add-int/2addr v4, v2

    and-int/2addr v3, v4

    aput v3, p3, v0

    .line 401
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 406
    :cond_0
    return-void
.end method

.method private doAnimation()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    iget-boolean v2, p0, Lmiui/widget/SlidingButton;->mAnimating:Z

    if-nez v2, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->incrementAnimation()V

    .line 321
    iget v2, p0, Lmiui/widget/SlidingButton;->mAnimationPosition:F

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lmiui/widget/SlidingButton;->moveSlider(I)V

    .line 322
    iget v2, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v3, p0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v3, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    if-lt v2, v3, :cond_4

    .line 323
    :cond_2
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iput-boolean v1, p0, Lmiui/widget/SlidingButton;->mAnimating:Z

    .line 325
    iput-boolean v0, p0, Lmiui/widget/SlidingButton;->bDoAlphaAnimation:Z

    .line 326
    iget v2, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v3, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    if-lt v2, v3, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 327
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mOnCheckedChangedListener:Lmiui/widget/SlidingButton$OnCheckedChangedListener;

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Lmiui/widget/SlidingButton$1;

    invoke-direct {v0, p0}, Lmiui/widget/SlidingButton$1;-><init>(Lmiui/widget/SlidingButton;)V

    invoke-virtual {p0, v0}, Lmiui/widget/SlidingButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 326
    goto :goto_1

    .line 336
    :cond_4
    iget-wide v0, p0, Lmiui/widget/SlidingButton;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/widget/SlidingButton;->mCurrentAnimationTime:J

    .line 337
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lmiui/widget/SlidingButton;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private doTogglingAnimation(I)V
    .locals 8
    .parameter "frame"

    .prologue
    const/16 v7, 0x3e9

    const/4 v6, 0x0

    .line 409
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mSlideOn:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/widget/SlidingButton;->mSlideOff:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_0

    .line 436
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    if-nez p1, :cond_1

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/SlidingButton;->mCurrentTogglingAnimationTime:J

    .line 419
    :cond_1
    const/16 v2, 0x14

    if-ge p1, v2, :cond_2

    .line 420
    add-int/lit8 p1, p1, 0x1

    .line 421
    mul-int/lit16 v2, p1, 0xff

    div-int/lit8 v0, v2, 0x14

    .line 422
    .local v0, alpha:I
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 423
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mSlideOffPaint:Landroid/graphics/Paint;

    rsub-int v3, v0, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 424
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mSlideOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 430
    :goto_1
    iget-wide v2, p0, Lmiui/widget/SlidingButton;->mCurrentTogglingAnimationTime:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/widget/SlidingButton;->mCurrentTogglingAnimationTime:J

    .line 431
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, p1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 432
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lmiui/widget/SlidingButton;->mCurrentTogglingAnimationTime:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 433
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 435
    .end local v0           #alpha:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    iput-boolean v6, p0, Lmiui/widget/SlidingButton;->bDoAlphaAnimation:Z

    goto :goto_0

    .line 426
    .restart local v0       #alpha:I
    :cond_3
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mSlideOffPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 427
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mSlideOnPaint:Landroid/graphics/Paint;

    rsub-int v3, v0, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method private drawSlidingBar(Landroid/graphics/Canvas;)V
    .locals 15
    .parameter "canvas"

    .prologue
    .line 377
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    sub-int v4, v0, v1

    .line 379
    .local v4, barOffset:I
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mSlideOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mSlideOn:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/SlidingButton;->mBarSlice:[I

    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    const/4 v5, 0x0

    iget v6, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v7, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 383
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mHeight:I

    iget-object v2, p0, Lmiui/widget/SlidingButton;->mBarSlice:[I

    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/SlidingButton;->cutEdge(II[I)V

    .line 384
    iget-object v6, p0, Lmiui/widget/SlidingButton;->mBarSlice:[I

    const/4 v7, 0x0

    iget v8, p0, Lmiui/widget/SlidingButton;->mWidth:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v12, p0, Lmiui/widget/SlidingButton;->mHeight:I

    const/4 v13, 0x1

    iget-object v14, p0, Lmiui/widget/SlidingButton;->mSlideOnPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mSlideOffPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mSlideOff:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/SlidingButton;->mBarSlice:[I

    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    const/4 v5, 0x0

    iget v6, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v7, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 391
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mHeight:I

    iget-object v2, p0, Lmiui/widget/SlidingButton;->mBarSlice:[I

    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/SlidingButton;->cutEdge(II[I)V

    .line 392
    iget-object v6, p0, Lmiui/widget/SlidingButton;->mBarSlice:[I

    const/4 v7, 0x0

    iget v8, p0, Lmiui/widget/SlidingButton;->mWidth:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v12, p0, Lmiui/widget/SlidingButton;->mHeight:I

    const/4 v13, 0x1

    iget-object v14, p0, Lmiui/widget/SlidingButton;->mSlideOffPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 394
    :cond_1
    return-void
.end method

.method private incrementAnimation()V
    .locals 6

    .prologue
    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 343
    .local v0, now:J
    iget-wide v4, p0, Lmiui/widget/SlidingButton;->mAnimationLastTime:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a

    div-float v3, v4, v5

    .line 344
    .local v3, t:F
    iget v2, p0, Lmiui/widget/SlidingButton;->mAnimationPosition:F

    .line 345
    .local v2, position:F
    iget v4, p0, Lmiui/widget/SlidingButton;->mAnimatedVelocity:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    iput v4, p0, Lmiui/widget/SlidingButton;->mAnimationPosition:F

    .line 346
    iput-wide v0, p0, Lmiui/widget/SlidingButton;->mAnimationLastTime:J

    .line 347
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 103
    const v12, 0x60d0085

    .line 105
    .local v12, defaultStyleId:I
    const v4, 0x6010031

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lmiui/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result v14

    .line 106
    .local v14, newId:I
    if-lez v14, :cond_0

    .line 107
    move v12, v14

    .line 109
    :cond_0
    sget-object v4, Lcom/miui/internal/R$styleable;->SlidingButton:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 113
    .local v11, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/widget/SlidingButton;->setDrawingCacheEnabled(Z)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v13, v4, Landroid/util/DisplayMetrics;->density:F

    .line 115
    .local v13, density:F
    const/high16 v4, 0x40c0

    mul-float/2addr v4, v13

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/widget/SlidingButton;->mTapThreshold:I

    .line 118
    const/4 v4, 0x3

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/Drawable;

    .line 119
    const/4 v4, 0x7

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 120
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mPressedSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 121
    const/4 v4, 0x6

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mOnDisable:Landroid/graphics/drawable/BitmapDrawable;

    .line 122
    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mOffDisable:Landroid/graphics/drawable/BitmapDrawable;

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/widget/SlidingButton;->mWidth:I

    .line 125
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/widget/SlidingButton;->mHeight:I

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/SlidingButton;->mSlider:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 128
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/widget/SlidingButton;->mWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/widget/SlidingButton;->mSlider:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    .line 129
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    .line 130
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/widget/SlidingButton;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    .line 132
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    .line 135
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 136
    .local v18, valueSlideOff:Landroid/util/TypedValue;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v11, v4, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 137
    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    .line 138
    .local v19, valueSlideOn:Landroid/util/TypedValue;
    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v11, v4, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 139
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/BitmapDrawable;

    .line 140
    .local v15, slideOff:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/widget/SlidingButton;->mWidth:I

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/widget/SlidingButton;->mHeight:I

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mSlideOff:Landroid/graphics/Bitmap;

    .line 144
    move-object/from16 v0, v18

    iget v4, v0, Landroid/util/TypedValue;->type:I

    move-object/from16 v0, v19

    iget v5, v0, Landroid/util/TypedValue;->type:I

    if-ne v4, v5, :cond_2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/util/TypedValue;->data:I

    move-object/from16 v0, v19

    iget v5, v0, Landroid/util/TypedValue;->data:I

    if-ne v4, v5, :cond_2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, v19

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-ne v4, v5, :cond_2

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/SlidingButton;->mSlideOff:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mSlideOn:Landroid/graphics/Bitmap;

    .line 155
    :goto_0
    const/4 v4, 0x4

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mSlideMask:Landroid/graphics/drawable/Drawable;

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/widget/SlidingButton;->mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/SlidingButton;->mOnDisable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/widget/SlidingButton;->mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/SlidingButton;->mOffDisable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/widget/SlidingButton;->mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 163
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/widget/SlidingButton;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/widget/SlidingButton;->mHeight:I

    mul-int/2addr v4, v5

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mAlphaPixels:[I

    .line 164
    const/4 v4, 0x4

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    .line 165
    .local v17, source:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/widget/SlidingButton;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/widget/SlidingButton;->mHeight:I

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 170
    .local v3, alphaCutter:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/SlidingButton;->mAlphaPixels:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/widget/SlidingButton;->mWidth:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/widget/SlidingButton;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 171
    move-object/from16 v0, v17

    if-eq v3, v0, :cond_1

    .line 172
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/widget/SlidingButton;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/widget/SlidingButton;->mHeight:I

    mul-int/2addr v4, v5

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mBarSlice:[I

    .line 178
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mSlideOffPaint:Landroid/graphics/Paint;

    .line 179
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mSlideOnPaint:Landroid/graphics/Paint;

    .line 181
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    return-void

    .line 149
    .end local v3           #alphaCutter:Landroid/graphics/Bitmap;
    .end local v17           #source:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/BitmapDrawable;

    .line 150
    .local v16, slidingOn:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/widget/SlidingButton;->mWidth:I

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/widget/SlidingButton;->mHeight:I

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/SlidingButton;->mSlideOn:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private moveSlider(I)V
    .locals 2
    .parameter "offsetX"

    .prologue
    .line 296
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    .line 297
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    if-ge v0, v1, :cond_1

    .line 298
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    iput v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    .line 302
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 303
    return-void

    .line 299
    :cond_1
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    if-le v0, v1, :cond_0

    .line 300
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    iput v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    goto :goto_0
.end method

.method private performFling(F)V
    .locals 6
    .parameter "velocity"

    .prologue
    const/16 v4, 0x3e8

    .line 306
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/widget/SlidingButton;->mAnimating:Z

    .line 307
    const/4 v2, 0x0

    iput v2, p0, Lmiui/widget/SlidingButton;->mAnimationPosition:F

    .line 308
    iput p1, p0, Lmiui/widget/SlidingButton;->mAnimatedVelocity:F

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 310
    .local v0, now:J
    iput-wide v0, p0, Lmiui/widget/SlidingButton;->mAnimationLastTime:J

    .line 311
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lmiui/widget/SlidingButton;->mCurrentAnimationTime:J

    .line 312
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lmiui/widget/SlidingButton;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 314
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 351
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 353
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mOnDisable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mOffDisable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 362
    :cond_1
    invoke-direct {p0, p1}, Lmiui/widget/SlidingButton;->drawSlidingBar(Landroid/graphics/Canvas;)V

    .line 364
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mSlideMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 368
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    iget v4, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 369
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 210
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lmiui/widget/SlidingButton;->setMeasuredDimension(II)V

    .line 211
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 273
    :goto_0
    return v4

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 220
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 221
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 222
    .local v3, y:I
    new-instance v1, Landroid/graphics/Rect;

    iget v6, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v7, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v8, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-direct {v1, v6, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 224
    .local v1, sliderFrame:Landroid/graphics/Rect;
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v4, v5

    .line 273
    goto :goto_0

    .line 226
    :pswitch_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 227
    iput-boolean v5, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    .line 228
    iget-object v6, p0, Lmiui/widget/SlidingButton;->mPressedSlider:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v6, p0, Lmiui/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 229
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 233
    :goto_2
    iput v2, p0, Lmiui/widget/SlidingButton;->mLastX:I

    .line 234
    iput v2, p0, Lmiui/widget/SlidingButton;->mOriginalTouchPointX:I

    .line 235
    iput-boolean v4, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    goto :goto_1

    .line 231
    :cond_2
    iput-boolean v4, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    goto :goto_2

    .line 239
    :pswitch_1
    iget-boolean v4, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    if-eqz v4, :cond_1

    .line 240
    iget v4, p0, Lmiui/widget/SlidingButton;->mLastX:I

    sub-int v4, v2, v4

    invoke-direct {p0, v4}, Lmiui/widget/SlidingButton;->moveSlider(I)V

    .line 241
    iput v2, p0, Lmiui/widget/SlidingButton;->mLastX:I

    .line 242
    iget v4, p0, Lmiui/widget/SlidingButton;->mOriginalTouchPointX:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lmiui/widget/SlidingButton;->mTapThreshold:I

    if-lt v4, v6, :cond_1

    .line 243
    iput-boolean v5, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    .line 244
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 250
    :pswitch_2
    iget-boolean v6, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    if-eqz v6, :cond_5

    .line 251
    iget-boolean v6, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    if-nez v6, :cond_3

    .line 252
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateToggle()V

    .line 263
    :goto_3
    iput-boolean v4, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    .line 264
    iput-boolean v4, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    goto :goto_1

    .line 254
    :cond_3
    iget v6, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v7, p0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    if-lt v6, v7, :cond_4

    iget v6, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v7, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    div-int/lit8 v7, v7, 0x2

    if-gt v6, v7, :cond_4

    .line 255
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateOff()V

    goto :goto_3

    .line 257
    :cond_4
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateOn()V

    goto :goto_3

    .line 261
    :cond_5
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateToggle()V

    goto :goto_3

    .line 268
    :pswitch_3
    iput-boolean v4, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    .line 269
    iput-boolean v4, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    goto :goto_1

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 205
    return-void
.end method

.method public setChecked(Z)V
    .locals 5
    .parameter "checked"

    .prologue
    const/16 v2, 0xff

    const/4 v3, 0x0

    .line 186
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    .line 187
    .local v0, oldState:Z
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    iget-object v1, p0, Lmiui/widget/SlidingButton;->mSlider:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lmiui/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 189
    if-eqz p1, :cond_1

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    :goto_0
    iput v1, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    .line 191
    if-eq v0, p1, :cond_0

    .line 192
    iget-boolean v1, p0, Lmiui/widget/SlidingButton;->bDoAlphaAnimation:Z

    if-eqz v1, :cond_2

    .line 193
    invoke-direct {p0, v3}, Lmiui/widget/SlidingButton;->doTogglingAnimation(I)V

    .line 200
    :cond_0
    :goto_1
    return-void

    .line 189
    :cond_1
    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    goto :goto_0

    .line 195
    :cond_2
    iget-object v4, p0, Lmiui/widget/SlidingButton;->mSlideOnPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 196
    iget-object v1, p0, Lmiui/widget/SlidingButton;->mSlideOffPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 197
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    goto :goto_1

    :cond_3
    move v1, v3

    .line 195
    goto :goto_2

    :cond_4
    move v2, v3

    .line 196
    goto :goto_3
.end method

.method public setOnCheckedChangedListener(Lmiui/widget/SlidingButton$OnCheckedChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lmiui/widget/SlidingButton;->mOnCheckedChangedListener:Lmiui/widget/SlidingButton$OnCheckedChangedListener;

    .line 87
    return-void
.end method
