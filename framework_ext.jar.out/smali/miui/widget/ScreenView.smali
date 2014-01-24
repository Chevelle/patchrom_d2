.class public Lmiui/widget/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScreenView$SavedState;,
        Lmiui/widget/ScreenView$ScaleDetectorListener;,
        Lmiui/widget/ScreenView$SliderTouchListener;,
        Lmiui/widget/ScreenView$SlideBar;,
        Lmiui/widget/ScreenView$SeekBarIndicator;,
        Lmiui/widget/ScreenView$ArrowIndicator;,
        Lmiui/widget/ScreenView$Indicator;,
        Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;,
        Lmiui/widget/ScreenView$GestureVelocityTracker;,
        Lmiui/widget/ScreenView$SnapScreenOnceNotification;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_ANIMATION_DURATION:I = 0x1f4

.field private static final AUTO_HIDE_TIMEOUT_DURATION:I = 0x3e8

.field private static final BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final DEFAULT_OVER_SHOOT_TENSION:F = 1.3f

.field private static final DEFAULT_SCREEN_SNAP_DURATION:I = 0x12c

.field private static final FLING_VELOCITY_INFLUENCE:F = 0.4f

#the value of this static final field might be set in the static constructor
.field protected static final INDICATOR_MEASURE_SPEC:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field protected static final INVALID_SCREEN:I = -0x1

.field public static final MAX_TOUCH_STATE:I = 0x5

.field protected static final MINIMAL_SLIDE_BAR_POINT_WIDTH:I = 0x30

.field private static final NANOTIME_DIV:F = 1.0E9f

.field public static final SCREEN_ALIGN_CENTER:I = 0x2

.field public static final SCREEN_ALIGN_CUSTOMIZED:I = 0x0

.field public static final SCREEN_ALIGN_LEFT:I = 0x1

.field public static final SCREEN_ALIGN_RIGHT:I = 0x3

.field public static final SCREEN_LAYOUT_MODE_CENTER:I = 0x1

.field public static final SCREEN_LAYOUT_MODE_MATRIX:I = 0x4

.field public static final SCREEN_LAYOUT_MODE_NORMAL:I = 0x0

.field public static final SCREEN_LAYOUT_MODE_PREVIEW:I = 0x2

.field public static final SCREEN_LAYOUT_MODE_UNIFORM:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC:I = 0x0

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT:I = 0x1

.field public static final SCREEN_TRANSITION_TYPE_CROSSFADE:I = 0x2

.field public static final SCREEN_TRANSITION_TYPE_CUBE:I = 0x4

.field public static final SCREEN_TRANSITION_TYPE_CUSTOM:I = 0x9

.field public static final SCREEN_TRANSITION_TYPE_FALLDOWN:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_LEFTPAGE:I = 0x5

.field public static final SCREEN_TRANSITION_TYPE_RIGHTPAGE:I = 0x6

.field public static final SCREEN_TRANSITION_TYPE_ROTATE:I = 0x8

.field public static final SCREEN_TRANSITION_TYPE_STACK:I = 0x7

.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

#the value of this static final field might be set in the static constructor
.field private static final SMOOTHING_CONSTANT:F = 0.0f

.field private static final SMOOTHING_SPEED:F = 0.75f

.field private static final SNAP_VELOCITY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ScreenView"

.field protected static final TOUCH_STATE_CANCLED:I = 0x5

.field protected static final TOUCH_STATE_PINCHING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final TOUCH_STATE_SLIDING:I = 0x3


# instance fields
.field protected final DEFAULT_CAMERA_DISTANCE:F

.field protected final DEFAULT_ROTATE_CAMERA_DISTANCE:F

.field private final PREVIEW_MODE_MAX_SCREEN_WIDTH:F

.field protected mActivePointerId:I

.field private mAllowLongPress:Z

.field private mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

.field private mArrowLeftOffResId:I

.field private mArrowLeftOnResId:I

.field private mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

.field private mArrowRightOffResId:I

.field private mArrowRightOnResId:I

.field protected mAutoHideTimer:Ljava/lang/Runnable;

.field protected mChildScreenHeight:I

.field protected mChildScreenWidth:I

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field protected mColumnCountPerScreen:I

.field private mConfirmHorizontalScrollRatio:F

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreen:I

.field private mEnableReverseDrawingMode:Z

.field mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

.field protected mHeightMeasureSpec:I

.field private mIndicatorCount:I

.field protected mIsSlideBarAutoHide:Z

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field protected mNextScreen:I

.field protected mOverScrollRatio:F

.field private mOvershootTension:F

.field private mPreviewModeFooter:Landroid/view/View;

.field private mPreviewModeHeader:Landroid/view/View;

.field protected mRowCountPerScreen:I

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScreenAlignment:I

.field private mScreenCounter:I

.field private mScreenLayoutMode:I

.field protected mScreenOffset:I

.field protected mScreenPaddingBottom:I

.field protected mScreenPaddingTop:I

.field protected mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

.field private mScreenSnapDuration:I

.field private mScreenTransitionType:I

.field protected mScreenWidth:I

.field private mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

.field protected mScrollLeftBound:I

.field protected mScrollOffset:I

.field protected mScrollRightBound:I

.field protected mScrollWholeScreen:Z

.field protected mScroller:Landroid/widget/Scroller;

.field private mSeekPointResId:I

.field protected mSlideBar:Lmiui/widget/ScreenView$SlideBar;

.field private mSmoothingTime:F

.field private mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

.field private mTouchIntercepted:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field protected mVisibleRange:I

.field protected mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 43
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lmiui/widget/ScreenView;->INDICATOR_MEASURE_SPEC:I

    .line 47
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 147
    const-wide v0, 0x3f90624dd2f1a9fcL

    const-wide/high16 v2, 0x3fe8

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lmiui/widget/ScreenView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 399
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 52
    const v0, 0x602008b

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    .line 53
    const v0, 0x602008c

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    .line 54
    const v0, 0x602008d

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    .line 55
    const v0, 0x602008e

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    .line 57
    const v0, 0x602008f

    iput v0, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    .line 67
    new-instance v0, Lmiui/widget/ScreenView$1;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 84
    const v0, 0x3e4ccccd

    iput v0, p0, Lmiui/widget/ScreenView;->PREVIEW_MODE_MAX_SCREEN_WIDTH:F

    .line 85
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    .line 89
    iput v3, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    .line 90
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    .line 91
    iput v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    .line 92
    iput v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 93
    iput v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    .line 94
    iput v2, p0, Lmiui/widget/ScreenView;->mChildScreenHeight:I

    .line 95
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    .line 99
    iput v2, p0, Lmiui/widget/ScreenView;->mRowCountPerScreen:I

    .line 100
    iput v2, p0, Lmiui/widget/ScreenView;->mColumnCountPerScreen:I

    .line 102
    iput-object v4, p0, Lmiui/widget/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    .line 103
    iput-object v4, p0, Lmiui/widget/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    .line 105
    iput v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    .line 106
    iput v2, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 109
    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    .line 110
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    .line 113
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 126
    iput v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 132
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 143
    iput v2, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 150
    const/high16 v0, 0x3f00

    iput v0, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 152
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    .line 169
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    .line 171
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mEnableReverseDrawingMode:Z

    .line 174
    const v0, 0x3fa66666

    iput v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    .line 368
    new-instance v0, Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    .line 1806
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a0

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 1807
    const-wide/high16 v0, 0x4000

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4094

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->DEFAULT_ROTATE_CAMERA_DISTANCE:F

    .line 400
    invoke-direct {p0}, Lmiui/widget/ScreenView;->initScreenView()V

    .line 401
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 411
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 421
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const v0, 0x602008b

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    .line 53
    const v0, 0x602008c

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    .line 54
    const v0, 0x602008d

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    .line 55
    const v0, 0x602008e

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    .line 57
    const v0, 0x602008f

    iput v0, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    .line 67
    new-instance v0, Lmiui/widget/ScreenView$1;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 84
    const v0, 0x3e4ccccd

    iput v0, p0, Lmiui/widget/ScreenView;->PREVIEW_MODE_MAX_SCREEN_WIDTH:F

    .line 85
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    .line 89
    iput v3, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    .line 90
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    .line 91
    iput v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    .line 92
    iput v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 93
    iput v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    .line 94
    iput v2, p0, Lmiui/widget/ScreenView;->mChildScreenHeight:I

    .line 95
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    .line 99
    iput v2, p0, Lmiui/widget/ScreenView;->mRowCountPerScreen:I

    .line 100
    iput v2, p0, Lmiui/widget/ScreenView;->mColumnCountPerScreen:I

    .line 102
    iput-object v4, p0, Lmiui/widget/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    .line 103
    iput-object v4, p0, Lmiui/widget/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    .line 105
    iput v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    .line 106
    iput v2, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 109
    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    .line 110
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    .line 113
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 126
    iput v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 132
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 143
    iput v2, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 150
    const/high16 v0, 0x3f00

    iput v0, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 152
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    .line 169
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    .line 171
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mEnableReverseDrawingMode:Z

    .line 174
    const v0, 0x3fa66666

    iput v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    .line 368
    new-instance v0, Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    .line 1806
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a0

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 1807
    const-wide/high16 v0, 0x4000

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4094

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->DEFAULT_ROTATE_CAMERA_DISTANCE:F

    .line 422
    invoke-direct {p0}, Lmiui/widget/ScreenView;->initScreenView()V

    .line 423
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/ScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lmiui/widget/ScreenView;->startHideSlideBar()V

    return-void
.end method

.method static synthetic access$200(Lmiui/widget/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$300(Lmiui/widget/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Lmiui/widget/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollX:I

    return v0
.end method

.method static synthetic access$500(Lmiui/widget/ScreenView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    return v0
.end method

.method static synthetic access$800(Lmiui/widget/ScreenView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->updateSeekPoints(I)V

    return-void
.end method

.method static synthetic access$900(Lmiui/widget/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1732
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1733
    .local v0, seekPoint:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1734
    iget v1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1736
    return-object v0
.end method

.method private initScreenView()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 429
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 430
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setClipToPadding(Z)V

    .line 431
    new-instance v1, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, p0}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    .line 432
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    .line 434
    iget-object v1, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 435
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    .line 436
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setMaximumSnapVelocity(I)V

    .line 438
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    new-instance v3, Lmiui/widget/ScreenView$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lmiui/widget/ScreenView$ScaleDetectorListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 439
    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 1320
    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1322
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_1

    .line 1323
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1325
    :cond_1
    return-void
.end method

.method private refreshScrollBound()Z
    .locals 5

    .prologue
    .line 898
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    .line 899
    .local v0, oldLeftBound:I
    iget v1, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    .line 900
    .local v1, oldRightBound:I
    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    .line 901
    iget-boolean v2, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-nez v2, :cond_1

    .line 902
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->getScreenLayoutX(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    .line 908
    :goto_0
    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v2, v3

    iget v3, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    .line 909
    iget v2, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lmiui/widget/ScreenView;->mScrollX:I

    iget v3, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lmiui/widget/ScreenView;->mScrollX:I

    iget v3, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    if-le v2, v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 905
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    div-int/2addr v2, v3

    iget v3, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    goto :goto_0

    .line 909
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 1314
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1315
    .local v0, dx:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1316
    .local v1, dy:F
    iget v3, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    iget v3, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private showSlideBar()V
    .locals 3

    .prologue
    .line 670
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 675
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 677
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setAlpha(F)V

    .line 678
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    .line 680
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lmiui/widget/ScreenView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private snapByVelocity(I)V
    .locals 5
    .parameter "pointerId"

    .prologue
    .line 1419
    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->isScrollable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    iget-object v2, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    invoke-virtual {v2, v3, v4, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result v2

    float-to-int v1, v2

    .line 1424
    .local v1, velocityX:I
    iget-object v2, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getXFlingDirection(F)I

    move-result v0

    .line 1425
    .local v0, flingDirection:I
    invoke-virtual {p0, v1, v0}, Lmiui/widget/ScreenView;->snapByVelocity(II)V

    goto :goto_0
.end method

.method private startHideSlideBar()V
    .locals 3

    .prologue
    .line 686
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/widget/ScreenView$2;

    invoke-direct {v1, p0}, Lmiui/widget/ScreenView$2;-><init>(Lmiui/widget/ScreenView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private throwRemoveIndicatorException()V
    .locals 2

    .prologue
    .line 1626
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove indicator directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateArrowIndicatorResource(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 880
    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_0

    .line 881
    iget-object v1, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-gtz p1, :cond_1

    iget v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 885
    iget-object v1, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    sub-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    iget v0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 890
    :cond_0
    return-void

    .line 881
    :cond_1
    iget v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    goto :goto_0

    .line 885
    :cond_2
    iget v0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    goto :goto_1
.end method

.method private updateIndicatorPositions(IZ)V
    .locals 17
    .parameter "scrollX"
    .parameter "requestLayout"

    .prologue
    .line 791
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v14

    if-lez v14, :cond_3

    .line 792
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    .line 793
    .local v4, indexOffset:I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v12

    .line 794
    .local v12, screenWidth:I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getHeight()I

    move-result v11

    .line 796
    .local v11, screenHeight:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    if-ge v3, v14, :cond_3

    .line 797
    add-int v14, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 798
    .local v5, indicator:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 800
    .local v10, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 801
    .local v9, indicatorWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 803
    .local v6, indicatorHeight:I
    const/4 v7, 0x0

    .line 804
    .local v7, indicatorLeft:I
    const/4 v8, 0x0

    .line 806
    .local v8, indicatorTop:I
    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 808
    .local v1, gravity:I
    const/4 v14, -0x1

    if-eq v1, v14, :cond_0

    .line 809
    and-int/lit8 v2, v1, 0x7

    .line 810
    .local v2, horizontalGravity:I
    and-int/lit8 v13, v1, 0x70

    .line 812
    .local v13, verticalGravity:I
    packed-switch v2, :pswitch_data_0

    .line 824
    :pswitch_0
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 827
    :goto_1
    sparse-switch v13, :sswitch_data_0

    .line 839
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 842
    .end local v2           #horizontalGravity:I
    .end local v13           #verticalGravity:I
    :cond_0
    :goto_2
    if-nez p2, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v14

    if-lez v14, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    if-lez v14, :cond_2

    move-object v14, v5

    .line 843
    check-cast v14, Lmiui/widget/ScreenView$Indicator;

    add-int v15, p1, v7

    invoke-interface {v14, v15}, Lmiui/widget/ScreenView$Indicator;->fastOffset(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 844
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 796
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 814
    .restart local v2       #horizontalGravity:I
    .restart local v13       #verticalGravity:I
    :pswitch_1
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 815
    goto :goto_1

    .line 817
    :pswitch_2
    sub-int v14, v12, v9

    div-int/lit8 v14, v14, 0x2

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    .line 819
    goto :goto_1

    .line 821
    :pswitch_3
    sub-int v14, v12, v9

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    .line 822
    goto :goto_1

    .line 829
    :sswitch_0
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 830
    goto :goto_2

    .line 832
    :sswitch_1
    sub-int v14, v11, v6

    div-int/lit8 v14, v14, 0x2

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    .line 834
    goto :goto_2

    .line 836
    :sswitch_2
    sub-int v14, v11, v6

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    .line 837
    goto :goto_2

    .line 847
    .end local v2           #horizontalGravity:I
    .end local v13           #verticalGravity:I
    :cond_2
    add-int v14, p1, v7

    add-int v15, p1, v7

    add-int/2addr v15, v9

    add-int v16, v8, v6

    move/from16 v0, v16

    invoke-virtual {v5, v14, v8, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 855
    .end local v1           #gravity:I
    .end local v3           #i:I
    .end local v4           #indexOffset:I
    .end local v5           #indicator:Landroid/view/View;
    .end local v6           #indicatorHeight:I
    .end local v7           #indicatorLeft:I
    .end local v8           #indicatorTop:I
    .end local v9           #indicatorWidth:I
    .end local v10           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #screenHeight:I
    .end local v12           #screenWidth:I
    :cond_3
    return-void

    .line 812
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 827
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateScreenOffset()V
    .locals 2

    .prologue
    .line 774
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    packed-switch v0, :pswitch_data_0

    .line 788
    :goto_0
    return-void

    .line 776
    :pswitch_0
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 779
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 782
    :pswitch_2
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 785
    :pswitch_3
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSeekPoints(I)V
    .locals 4
    .parameter "newPos"

    .prologue
    .line 1740
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v3, :cond_2

    .line 1741
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1742
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1743
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v3, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1744
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1745
    if-lt v1, p1, :cond_1

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    add-int/2addr v3, p1

    if-ge v1, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1742
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1745
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1749
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .locals 7
    .parameter "scrollX"

    .prologue
    .line 859
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 860
    .local v0, screenCount:I
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v5, :cond_0

    if-lez v0, :cond_0

    .line 861
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v5}, Lmiui/widget/ScreenView$SlideBar;->getSlideWidth()I

    move-result v2

    .line 862
    .local v2, slideBarWidth:I
    div-int v5, v2, v0

    iget v6, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v5, v6

    const/16 v6, 0x30

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 866
    .local v3, slidePointWidth:I
    iget v5, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int v1, v5, v0

    .line 867
    .local v1, screenViewContentWidth:I
    if-gt v1, v2, :cond_1

    const/4 v4, 0x0

    .line 872
    .local v4, slidePointX:I
    :goto_0
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    add-int v6, v4, v3

    invoke-virtual {v5, v4, v6}, Lmiui/widget/ScreenView$SlideBar;->setPosition(II)V

    .line 873
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 874
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v5}, Lmiui/widget/ScreenView$SlideBar;->invalidate()V

    .line 877
    .end local v1           #screenViewContentWidth:I
    .end local v2           #slideBarWidth:I
    .end local v3           #slidePointWidth:I
    .end local v4           #slidePointX:I
    :cond_0
    return-void

    .line 867
    .restart local v1       #screenViewContentWidth:I
    .restart local v2       #slideBarWidth:I
    .restart local v3       #slidePointWidth:I
    :cond_1
    sub-int v5, v2, v3

    mul-int/2addr v5, p1

    sub-int v6, v1, v2

    div-int v4, v5, v6

    goto :goto_0
.end method


# virtual methods
.method public addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .parameter "indicator"
    .parameter "params"

    .prologue
    .line 1630
    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1631
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1632
    return-void
.end method

.method public addIndicatorAt(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 2
    .parameter "indicator"
    .parameter "params"
    .parameter "index"

    .prologue
    .line 1635
    const/4 v0, -0x1

    iget v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1636
    if-ltz p3, :cond_0

    .line 1637
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/2addr p3, v0

    .line 1640
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1641
    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1642
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1564
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1565
    .local v0, currentCount:I
    if-gez p2, :cond_1

    .line 1566
    move p2, v0

    .line 1572
    :goto_0
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v1, :cond_0

    .line 1573
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, p2, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1576
    :cond_0
    iget v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 1578
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1579
    return-void

    .line 1569
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1706
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const v5, 0x4e6e6b28

    .line 949
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 950
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iput v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v3, v3

    iput v3, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 951
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 952
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iput v3, p0, Lmiui/widget/ScreenView;->mScrollY:I

    .line 953
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidateOnAnimation()V

    .line 973
    :cond_0
    :goto_0
    iget v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3, v7}, Lmiui/widget/ScreenView;->updateIndicatorPositions(IZ)V

    .line 974
    iget v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lmiui/widget/ScreenView;->updateSlidePointPosition(I)V

    .line 975
    iget v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lmiui/widget/ScreenView;->updateArrowIndicatorResource(I)V

    .line 976
    return-void

    .line 954
    :cond_1
    iget v3, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    if-eq v3, v6, :cond_2

    .line 955
    iget v3, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 956
    iput v6, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 957
    iget-object v3, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v3, :cond_0

    .line 958
    iget-object v3, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-interface {v3, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapEnd(Lmiui/widget/ScreenView;)V

    .line 959
    const/4 v3, 0x0

    iput-object v3, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    goto :goto_0

    .line 961
    :cond_2
    iget v3, p0, Lmiui/widget/ScreenView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 962
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float v2, v3, v5

    .line 963
    .local v2, now:F
    iget v3, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    sub-float v3, v2, v3

    sget v4, Lmiui/widget/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 964
    .local v1, e:F
    iget v3, p0, Lmiui/widget/ScreenView;->mTouchX:F

    iget v4, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 965
    .local v0, dx:F
    iget v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v3, v3

    mul-float v4, v0, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    .line 966
    iput v2, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 968
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_3

    const/high16 v3, -0x4080

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 969
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 1199
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1200
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_1

    .line 1201
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 1210
    :goto_0
    return v0

    .line 1204
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1205
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1206
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    goto :goto_0

    .line 1210
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1180
    invoke-virtual {p0, p2}, Lmiui/widget/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 1181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .prologue
    .line 1443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    .line 1444
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1445
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1961
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mEnableReverseDrawingMode:Z

    if-eqz v0, :cond_0

    .line 1962
    sub-int v0, p1, p2

    add-int/lit8 p2, v0, -0x1

    .line 1964
    .end local p2
    :cond_0
    return p2
.end method

.method protected getChildScreenWidth()I
    .locals 1

    .prologue
    .line 990
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    return v0
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 1520
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .locals 2

    .prologue
    .line 1513
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1514
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1516
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    goto :goto_0
.end method

.method protected getDefaultScreenIndex()I
    .locals 1

    .prologue
    .line 1524
    const/4 v0, 0x0

    return v0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 1553
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1554
    :cond_0
    const/4 v0, 0x0

    .line 1556
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getScreenCount()I
    .locals 1

    .prologue
    .line 1504
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    return v0
.end method

.method protected getScreenIndexByPoint(II)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 727
    const/4 v1, -0x1

    .line 728
    .local v1, index:I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v4

    div-int v3, p1, v4

    .line 730
    .local v3, wholeScreenIndex:I
    iget v4, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 731
    iget v4, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    sub-int v4, p1, v4

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v5

    rem-int/2addr v4, v5

    iget v5, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int v0, v4, v5

    .line 732
    .local v0, columnIndex:I
    iget v4, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    sub-int v4, p2, v4

    iget v5, p0, Lmiui/widget/ScreenView;->mChildScreenHeight:I

    div-int v2, v4, v5

    .line 733
    .local v2, rowIndex:I
    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v4, v3

    iget v5, p0, Lmiui/widget/ScreenView;->mColumnCountPerScreen:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    add-int v1, v4, v0

    .line 738
    .end local v0           #columnIndex:I
    .end local v2           #rowIndex:I
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4

    .line 735
    :cond_0
    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v4, v3

    iget v5, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    sub-int v5, p1, v5

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v6

    rem-int/2addr v5, v6

    iget v6, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v5, v6

    add-int v1, v4, v5

    goto :goto_0
.end method

.method public getScreenLayoutMode()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    return v0
.end method

.method protected getScreenLayoutX(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 979
    iget v2, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v2, v3, :cond_0

    .line 980
    iget v2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v3, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    iget v4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    .line 986
    :goto_0
    return v2

    .line 981
    :cond_0
    iget v2, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 982
    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    div-int v1, p1, v2

    .line 983
    .local v1, screenIndex:I
    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v2, p1, v2

    iget v3, p0, Lmiui/widget/ScreenView;->mColumnCountPerScreen:I

    rem-int v0, v2, v3

    .line 984
    .local v0, columnIndex:I
    iget v2, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    iget v3, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    goto :goto_0

    .line 986
    .end local v0           #columnIndex:I
    .end local v1           #screenIndex:I
    :cond_1
    iget v2, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    iget v3, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    iget v4, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method protected final getScreenScrollX(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 921
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollX:I

    .line 926
    :goto_0
    return v0

    .line 923
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v0, v1, :cond_1

    .line 924
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    neg-int v0, v0

    goto :goto_0

    .line 926
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->getScreenVisualX(I)I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getScreenSnapMaxDuration()I
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getScreenTransitionType()I
    .locals 1

    .prologue
    .line 1803
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    return v0
.end method

.method protected final getScreenVisualX(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 930
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->getScreenLayoutX(I)I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getTouchState()I
    .locals 1

    .prologue
    .line 1214
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method public getVisibleRange()I
    .locals 1

    .prologue
    .line 1560
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    return v0
.end method

.method protected final isScrollable()Z
    .locals 2

    .prologue
    .line 934
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 994
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 995
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->computeScroll()V

    .line 996
    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    .line 997
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 1305
    :cond_0
    :goto_0
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-eq v3, v4, :cond_1

    .line 1306
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1309
    :cond_1
    iget-boolean v3, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    if-nez v3, :cond_2

    iget v3, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v3, :cond_3

    iget v3, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eq v3, v5, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    .line 1255
    :pswitch_0
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1256
    iget v3, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v3, :cond_0

    .line 1257
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1258
    invoke-virtual {p0, p1, v2}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1260
    :cond_4
    iget-object v3, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v3}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getVerticalGesture()I

    move-result v0

    .line 1261
    .local v0, vf:I
    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->onVerticalGesture(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1263
    const/4 v3, 0x5

    invoke-virtual {p0, p1, v3}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1272
    .end local v0           #vf:I
    :pswitch_1
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1273
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1274
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1275
    iget-object v3, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v3}, Lmiui/widget/ScreenView$GestureVelocityTracker;->recycle()V

    .line 1277
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    .line 1278
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    .line 1281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    .line 1284
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1285
    iput-boolean v2, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    goto :goto_0

    .line 1293
    :cond_5
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1294
    invoke-virtual {p0, p1, v2}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1301
    :pswitch_2
    invoke-virtual {p0, p1, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1090
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/widget/ScreenView;->setFrame(IIII)Z

    .line 1092
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScrollX:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lmiui/widget/ScreenView;->updateIndicatorPositions(IZ)V

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v8

    .line 1095
    .local v8, count:I
    if-gtz v8, :cond_1

    .line 1176
    :cond_0
    return-void

    .line 1097
    :cond_1
    invoke-direct/range {p0 .. p0}, Lmiui/widget/ScreenView;->refreshScrollBound()Z

    move-result v5

    .line 1099
    .local v5, boundChanged:Z
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getDefaultScreenIndex()I

    move-result v9

    .line 1100
    .local v9, currentScreen:I
    :goto_0
    const/16 v24, 0x0

    if-lt v9, v8, :cond_2

    add-int/lit8 v9, v8, -0x1

    .end local v9           #currentScreen:I
    :cond_2
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1101
    .restart local v9       #currentScreen:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mVisibleRange:I

    move/from16 v24, v0

    rem-int v24, v9, v24

    if-lez v24, :cond_3

    .line 1102
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mVisibleRange:I

    move/from16 v25, v0

    rem-int v24, v24, v25

    sub-int v9, v9, v24

    .line 1105
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v9, v0, :cond_4

    if-eqz v5, :cond_5

    .line 1106
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1109
    :cond_5
    const/4 v13, 0x0

    .line 1110
    .local v13, previewChildWidth:I
    const/16 v19, 0x0

    .line 1111
    .local v19, previewLayoutLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mVisibleRange:I

    move/from16 v25, v0

    div-int v18, v24, v25

    .line 1112
    .local v18, previewHeaderWidth:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mVisibleRange:I

    move/from16 v25, v0

    div-int v16, v24, v25

    .line 1113
    .local v16, previewFooterWidth:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    const/16 v17, 0x1

    .line 1114
    .local v17, previewHeaderCount:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    const/4 v15, 0x1

    .line 1115
    .local v15, previewFooterCount:I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1116
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3e4ccccd

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v13, v0

    .line 1117
    sub-int v24, v8, v17

    sub-int v14, v24, v15

    .line 1118
    .local v14, previewCnt:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenWidth:I

    move/from16 v24, v0

    sub-int v24, v24, v18

    sub-int v20, v24, v16

    .line 1119
    .local v20, previewSW:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    add-int/lit8 v25, v14, -0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v21, v24, v25

    .line 1120
    .local v21, psw:F
    int-to-float v0, v13

    move/from16 v24, v0

    cmpg-float v24, v21, v24

    if-gez v24, :cond_6

    .line 1121
    move/from16 v0, v21

    float-to-int v13, v0

    .line 1123
    :cond_6
    add-int/lit8 v24, v14, -0x1

    mul-int v24, v24, v13

    sub-int v24, v20, v24

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v19, v18, v24

    .line 1131
    .end local v14           #previewCnt:I
    .end local v20           #previewSW:I
    .end local v21           #psw:F
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mPaddingTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    move/from16 v25, v0

    add-int v12, v24, v25

    .line 1132
    .local v12, layoutTop:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_6
    if-ge v10, v8, :cond_0

    .line 1133
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1134
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_11

    .line 1135
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/widget/ScreenView;->getScreenLayoutX(I)I

    move-result v11

    .line 1136
    .local v11, layoutLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 1165
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 1166
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    move/from16 v24, v0

    add-int v24, v24, v11

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mChildScreenHeight:I

    move/from16 v25, v0

    add-int v25, v25, v12

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v11, v12, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1132
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1099
    .end local v6           #child:Landroid/view/View;
    .end local v9           #currentScreen:I
    .end local v10           #i:I
    .end local v11           #layoutLeft:I
    .end local v12           #layoutTop:I
    .end local v13           #previewChildWidth:I
    .end local v15           #previewFooterCount:I
    .end local v16           #previewFooterWidth:I
    .end local v17           #previewHeaderCount:I
    .end local v18           #previewHeaderWidth:I
    .end local v19           #previewLayoutLeft:I
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    goto/16 :goto_0

    .line 1111
    .restart local v9       #currentScreen:I
    .restart local v13       #previewChildWidth:I
    .restart local v19       #previewLayoutLeft:I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1112
    .restart local v18       #previewHeaderWidth:I
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1113
    .restart local v16       #previewFooterWidth:I
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1114
    .restart local v17       #previewHeaderCount:I
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1125
    .restart local v15       #previewFooterCount:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 1126
    sub-int v24, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mColumnCountPerScreen:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/ScreenView;->mPaddingRight:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/ScreenView;->mPaddingLeft:I

    .line 1127
    sub-int v24, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mChildScreenHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mRowCountPerScreen:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/ScreenView;->mPaddingTop:I

    goto/16 :goto_5

    .line 1138
    .restart local v6       #child:Landroid/view/View;
    .restart local v10       #i:I
    .restart local v11       #layoutLeft:I
    .restart local v12       #layoutTop:I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    move/from16 v24, v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v11, v11, v24

    .line 1139
    goto/16 :goto_7

    .line 1141
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    if-ne v6, v0, :cond_e

    .line 1142
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScrollX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    move/from16 v25, v0

    add-int v11, v24, v25

    goto/16 :goto_7

    .line 1143
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    if-ne v6, v0, :cond_f

    .line 1144
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScrollX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v25, v25, v16

    div-int/lit8 v25, v25, 0x2

    sub-int v11, v24, v25

    goto/16 :goto_7

    .line 1147
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScrollX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    move/from16 v25, v0

    add-int v24, v24, v25

    add-int v24, v24, v19

    sub-int v25, v10, v17

    mul-int v25, v25, v13

    add-int v11, v24, v25

    .line 1150
    goto/16 :goto_7

    .line 1152
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mPaddingTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mPaddingBottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mPaddingTop:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    move/from16 v25, v0

    add-int v12, v24, v25

    .line 1155
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    int-to-double v0, v10

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenWidth:I

    move/from16 v28, v0

    div-int v28, v28, v8

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v11, v0

    .line 1156
    goto/16 :goto_7

    .line 1158
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mVisibleRange:I

    move/from16 v24, v0

    div-int v23, v10, v24

    .line 1159
    .local v23, screenIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mVisibleRange:I

    move/from16 v24, v0

    rem-int v24, v10, v24

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mColumnCountPerScreen:I

    move/from16 v25, v0

    rem-int v7, v24, v25

    .line 1160
    .local v7, columnIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mVisibleRange:I

    move/from16 v24, v0

    rem-int v24, v10, v24

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mColumnCountPerScreen:I

    move/from16 v25, v0

    div-int v22, v24, v25

    .line 1161
    .local v22, rowIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mPaddingTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mChildScreenHeight:I

    move/from16 v25, v0

    mul-int v25, v25, v22

    add-int v12, v24, v25

    .line 1162
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v25

    mul-int v25, v25, v23

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    move/from16 v25, v0

    mul-int v25, v25, v7

    add-int v11, v24, v25

    goto/16 :goto_7

    .line 1169
    .end local v7           #columnIndex:I
    .end local v22           #rowIndex:I
    .end local v23           #screenIndex:I
    :cond_10
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    add-int v24, v24, v11

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    add-int v25, v25, v12

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v11, v12, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    .line 1173
    .end local v11           #layoutLeft:I
    :cond_11
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "child screen can\'t set visible as GONE."

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1009
    move/from16 v0, p1

    iput v0, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    .line 1010
    move/from16 v0, p2

    iput v0, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    .line 1011
    const/4 v9, 0x0

    .line 1012
    .local v9, maxHeight:I
    const/4 v10, 0x0

    .line 1014
    .local v10, maxWidth:I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    .line 1017
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v12, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    if-ge v5, v12, :cond_0

    .line 1018
    add-int v12, v5, v4

    invoke-virtual {p0, v12}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1020
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1022
    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v12, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    iget v13, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v12, v13

    iget v13, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v12, v13}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v3

    .line 1024
    .local v3, childWidthMeasureSpec:I
    iget v12, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v13, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v12, v13

    iget v13, p0, Lmiui/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v12, v13

    iget v13, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v12, v13

    iget v13, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v12, v13}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 1029
    .local v2, childHeightMeasureSpec:I
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1030
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1031
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1017
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1035
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childHeightMeasureSpec:I
    .end local v3           #childWidthMeasureSpec:I
    .end local v6           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v7, 0x0

    .line 1036
    .local v7, maxChildHeight:I
    const/4 v8, 0x0

    .line 1037
    .local v8, maxChildWidth:I
    const/4 v12, 0x1

    iput v12, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 1038
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 1039
    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1040
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1042
    .restart local v6       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v12, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    iget v13, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v12, v13

    iget v13, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v12, v13}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v3

    .line 1044
    .restart local v3       #childWidthMeasureSpec:I
    iget v12, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v13, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v12, v13

    iget v13, p0, Lmiui/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v12, v13

    iget v13, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v12, v13

    iget v13, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v12, v13}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 1049
    .restart local v2       #childHeightMeasureSpec:I
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1050
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1051
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1038
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1053
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childHeightMeasureSpec:I
    .end local v3           #childWidthMeasureSpec:I
    .end local v6           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1054
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1057
    iget v12, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    iget v13, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    .line 1058
    iget v12, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v13, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v12, v13

    iget v13, p0, Lmiui/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v12, v13

    iget v13, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v12, v13

    add-int/2addr v9, v12

    .line 1060
    move/from16 v0, p1

    invoke-static {v10, v0}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v12

    move/from16 v0, p2

    invoke-static {v9, v0}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v13

    invoke-virtual {p0, v12, v13}, Lmiui/widget/ScreenView;->setMeasuredDimension(II)V

    .line 1064
    if-lez v4, :cond_3

    .line 1065
    iput v8, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    .line 1066
    iput v7, p0, Lmiui/widget/ScreenView;->mChildScreenHeight:I

    .line 1067
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    iget v13, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    sub-int/2addr v12, v13

    iget v13, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    sub-int/2addr v12, v13

    iput v12, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    .line 1068
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    iget v13, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    sub-int/2addr v12, v13

    iget v13, p0, Lmiui/widget/ScreenView;->mPaddingBottom:I

    sub-int/2addr v12, v13

    iget v13, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    sub-int/2addr v12, v13

    iget v13, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    sub-int v11, v12, v13

    .line 1070
    .local v11, screenHeight:I
    iget v12, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v12, :cond_2

    .line 1071
    iget v12, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    const/4 v13, 0x4

    if-eq v12, v13, :cond_4

    .line 1072
    const/4 v12, 0x1

    iget v13, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v14, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 1073
    iget v12, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 1074
    iget v12, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v13, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    div-int/2addr v12, v13

    iput v12, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    .line 1083
    :cond_2
    :goto_2
    iget v12, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, v12}, Lmiui/widget/ScreenView;->setOverScrollRatio(F)V

    .line 1084
    invoke-direct {p0}, Lmiui/widget/ScreenView;->updateScreenOffset()V

    .line 1086
    .end local v11           #screenHeight:I
    :cond_3
    return-void

    .line 1077
    .restart local v11       #screenHeight:I
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    iput v12, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    .line 1078
    iget v12, p0, Lmiui/widget/ScreenView;->mChildScreenHeight:I

    div-int v12, v11, v12

    iput v12, p0, Lmiui/widget/ScreenView;->mRowCountPerScreen:I

    .line 1079
    iget v12, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v13, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v12, v13

    iput v12, p0, Lmiui/widget/ScreenView;->mColumnCountPerScreen:I

    .line 1080
    iget v12, p0, Lmiui/widget/ScreenView;->mRowCountPerScreen:I

    iget v13, p0, Lmiui/widget/ScreenView;->mColumnCountPerScreen:I

    mul-int/2addr v12, v13

    iput v12, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1755
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1756
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1757
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1759
    :cond_0
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 2002
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 2005
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2054
    move-object v0, p1

    check-cast v0, Lmiui/widget/ScreenView$SavedState;

    .line 2055
    .local v0, savedState:Lmiui/widget/ScreenView$SavedState;
    invoke-virtual {v0}, Lmiui/widget/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2056
    iget v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2057
    iget v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 2059
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1752
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 2047
    new-instance v0, Lmiui/widget/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2048
    .local v0, state:Lmiui/widget/ScreenView$SavedState;
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    .line 2049
    return-object v0
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 2
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 1390
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1391
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 1392
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 1393
    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p2}, Lmiui/widget/ScreenView$GestureVelocityTracker;->init(I)V

    .line 1394
    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1395
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 1396
    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 4
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 1405
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1406
    .local v1, x:F
    iget v2, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float v0, v2, v1

    .line 1407
    .local v0, deltaX:F
    iput v1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1409
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 1410
    iget v2, p0, Lmiui/widget/ScreenView;->mTouchX:F

    add-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lmiui/widget/ScreenView;->scrollTo(II)V

    .line 1415
    :goto_0
    iget-object v2, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v2, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1416
    return-void

    .line 1412
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 1
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 1399
    invoke-direct {p0, p2}, Lmiui/widget/ScreenView;->snapByVelocity(I)V

    .line 1400
    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->recycle()V

    .line 1401
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 1402
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1329
    iget-boolean v6, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    if-eqz v6, :cond_0

    .line 1386
    :goto_0
    return v5

    .line 1331
    :cond_0
    iget-boolean v6, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    if-eqz v6, :cond_1

    .line 1332
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1335
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 1385
    :cond_2
    :goto_1
    :pswitch_0
    iput-boolean v5, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    goto :goto_0

    .line 1340
    :pswitch_1
    iget v6, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v6, :cond_3

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1341
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1344
    :cond_3
    iget v6, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v6, v5, :cond_2

    .line 1346
    iget v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1347
    .local v3, pointerIndex:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 1348
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1349
    iget v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1351
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1352
    .local v4, x:F
    iget v6, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float v0, v6, v4

    .line 1353
    .local v0, deltaX:F
    iput v4, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1355
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_5

    .line 1356
    iget v6, p0, Lmiui/widget/ScreenView;->mTouchX:F

    add-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lmiui/widget/ScreenView;->scrollTo(II)V

    goto :goto_1

    .line 1358
    :cond_5
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_1

    .line 1364
    .end local v0           #deltaX:F
    .end local v3           #pointerIndex:I
    .end local v4           #x:F
    :pswitch_2
    iget v6, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v6, v5, :cond_6

    .line 1365
    iget v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v6}, Lmiui/widget/ScreenView;->snapByVelocity(I)V

    .line 1367
    :cond_6
    invoke-virtual {p0, p1, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 1370
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v3, v6, 0x8

    .line 1372
    .restart local v3       #pointerIndex:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1373
    .local v2, pointerId:I
    iget v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    if-ne v2, v6, :cond_2

    .line 1377
    if-nez v3, :cond_7

    move v1, v5

    .line 1378
    .local v1, newPointerIndex:I
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1379
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 1380
    iget-object v6, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    iget v7, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {v6, v7}, Lmiui/widget/ScreenView$GestureVelocityTracker;->init(I)V

    goto :goto_1

    .line 1335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onVerticalGesture(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 1998
    const/4 v0, 0x0

    return v0
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1618
    instance-of v0, p1, Lmiui/widget/ScreenView$Indicator;

    if-eqz v0, :cond_0

    .line 1619
    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1623
    :goto_0
    return-void

    .line 1621
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    goto :goto_0
.end method

.method public removeAllScreens()V
    .locals 2

    .prologue
    .line 1678
    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->removeScreensInLayout(II)V

    .line 1679
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 1680
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1681
    return-void
.end method

.method public removeIndicator(Landroid/view/View;)V
    .locals 3
    .parameter "indicator"

    .prologue
    .line 1645
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1646
    .local v0, index:I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1647
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "The view passed through the parameter must be indicator."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1650
    :cond_0
    iget v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1651
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1652
    return-void
.end method

.method public removeOutAllScreens()[Landroid/view/View;
    .locals 3

    .prologue
    .line 1684
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    new-array v0, v2, [Landroid/view/View;

    .line 1685
    .local v0, children:[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1686
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1688
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->removeAllScreens()V

    .line 1689
    return-object v0
.end method

.method public removeScreen(I)V
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 1655
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1656
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The view specified by the index must be a screen."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1659
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne p1, v0, :cond_1

    .line 1660
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_3

    .line 1661
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1662
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1671
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_2

    .line 1672
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->removeViewAt(I)V

    .line 1674
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1675
    return-void

    .line 1664
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1666
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    goto :goto_0
.end method

.method public removeScreensInLayout(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1693
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1700
    :cond_0
    :goto_0
    return-void

    .line 1694
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1696
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_2

    .line 1697
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/ScreenView$SeekBarIndicator;->removeViewsInLayout(II)V

    .line 1699
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1586
    instance-of v0, p1, Lmiui/widget/ScreenView$Indicator;

    if-eqz v0, :cond_0

    .line 1587
    invoke-direct {p0}, Lmiui/widget/ScreenView;->throwRemoveIndicatorException()V

    .line 1589
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1590
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1604
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1605
    invoke-direct {p0}, Lmiui/widget/ScreenView;->throwRemoveIndicatorException()V

    .line 1607
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1608
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1592
    instance-of v0, p1, Lmiui/widget/ScreenView$Indicator;

    if-eqz v0, :cond_0

    .line 1593
    invoke-direct {p0}, Lmiui/widget/ScreenView;->throwRemoveIndicatorException()V

    .line 1595
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1596
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1610
    add-int v0, p1, p2

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1611
    invoke-direct {p0}, Lmiui/widget/ScreenView;->throwRemoveIndicatorException()V

    .line 1613
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 1614
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1598
    add-int v0, p1, p2

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1599
    invoke-direct {p0}, Lmiui/widget/ScreenView;->throwRemoveIndicatorException()V

    .line 1601
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1602
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1186
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1187
    .local v0, screen:I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1188
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1189
    :cond_0
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 1190
    const/4 v1, 0x1

    .line 1194
    :goto_0
    return v1

    .line 1192
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1194
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    goto :goto_0
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 1810
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1811
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1812
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1813
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1814
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1815
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1816
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 1817
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1818
    iget v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 1819
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1820
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1821
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 939
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 941
    int-to-float v0, p1

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 942
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 943
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 945
    :cond_0
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 914
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 915
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 917
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->getScreenScrollX(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->scrollTo(II)V

    .line 918
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 1714
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 1715
    return-void
.end method

.method public setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "margin"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 447
    if-eqz p1, :cond_2

    .line 451
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-nez v2, :cond_1

    .line 452
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x13

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 456
    .local v0, leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lmiui/widget/ScreenView$ArrowIndicator;

    iget-object v3, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$ArrowIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 457
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    iget v3, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 458
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2, v0}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 460
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 464
    .local v1, rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lmiui/widget/ScreenView$ArrowIndicator;

    iget-object v3, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$ArrowIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 465
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    iget v3, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 466
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2, v1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 473
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 474
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 482
    .end local v0           #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 469
    :cond_1
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {v2}, Lmiui/widget/ScreenView$ArrowIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 470
    .restart local v0       #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {v2}, Lmiui/widget/ScreenView$ArrowIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .restart local v1       #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 476
    .end local v0           #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 478
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 479
    iput-object v3, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 480
    iput-object v3, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    goto :goto_1
.end method

.method public setArrowIndicatorResource(IIII)V
    .locals 0
    .parameter "leftOn"
    .parameter "leftOff"
    .parameter "rightOn"
    .parameter "rightOff"

    .prologue
    .line 489
    iput p1, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    .line 490
    iput p2, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    .line 491
    iput p3, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    .line 492
    iput p4, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    .line 493
    return-void
.end method

.method public setConfirmHorizontalScrollRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 196
    iput p1, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 197
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3
    .parameter "screenIndex"

    .prologue
    const/4 v2, 0x0

    .line 1534
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 1535
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1536
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 1541
    :goto_0
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 1542
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1543
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->scrollToScreen(I)V

    .line 1544
    return-void

    .line 1538
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method protected setCurrentScreenInner(I)V
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 1547
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->updateSeekPoints(I)V

    .line 1548
    iput p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    .line 1549
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1550
    return-void
.end method

.method public setEnableReverseDrawingMode(Z)V
    .locals 0
    .parameter "isReverse"

    .prologue
    .line 1955
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setChildrenDrawingOrderEnabled(Z)V

    .line 1956
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mEnableReverseDrawingMode:Z

    .line 1957
    return-void
.end method

.method public setIndicatorBarVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    .line 701
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSlideBarVisibility(I)V

    .line 702
    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0
    .parameter "velocity"

    .prologue
    .line 208
    iput p1, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    .line 209
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 1724
    iput-object p1, p0, Lmiui/widget/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1725
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1726
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1727
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1726
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1729
    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 893
    iput p1, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    .line 894
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 895
    return-void
.end method

.method public setOvershootTension(F)V
    .locals 1
    .parameter "tension"

    .prologue
    .line 185
    iput p1, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    .line 186
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    #setter for: Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F
    invoke-static {v0, p1}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->access$102(Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;F)F

    .line 189
    :cond_0
    return-void
.end method

.method public setPreviewModeFooter(Landroid/view/View;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 751
    iput-object p1, p0, Lmiui/widget/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    .line 752
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 753
    return-void
.end method

.method public setPreviewModeHeader(Landroid/view/View;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 746
    iput-object p1, p0, Lmiui/widget/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    .line 747
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 748
    return-void
.end method

.method public setScreenAlignment(I)V
    .locals 0
    .parameter "alignment"

    .prologue
    .line 765
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    .line 766
    return-void
.end method

.method public setScreenLayoutMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 719
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    if-eq v0, p1, :cond_0

    .line 720
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenLayoutMode:I

    .line 721
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 723
    :cond_0
    return-void
.end method

.method public setScreenOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 769
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    .line 770
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    .line 771
    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "padding"

    .prologue
    const/4 v2, 0x0

    .line 756
    if-nez p1, :cond_0

    .line 757
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The padding parameter can not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    .line 760
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    .line 761
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v2, v1, v2}, Lmiui/widget/ScreenView;->setPadding(IIII)V

    .line 762
    return-void
.end method

.method public setScreenSnapDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 200
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    .line 201
    return-void
.end method

.method public setScreenTransitionType(I)V
    .locals 6
    .parameter "type"

    .prologue
    const/16 v5, 0x12c

    const/16 v4, 0x10e

    const/16 v3, 0x14a

    const v2, 0x3fa66666

    const/4 v1, 0x0

    .line 1762
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    if-eq p1, v0, :cond_0

    .line 1763
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    .line 1764
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1800
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1766
    :pswitch_1
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1767
    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1771
    :pswitch_2
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1772
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1775
    :pswitch_3
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1776
    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1779
    :pswitch_4
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1780
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1783
    :pswitch_5
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1784
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1789
    :pswitch_6
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1790
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1793
    :pswitch_7
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1794
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setScrollWholeScreen(Z)V
    .locals 0
    .parameter "wholeScreen"

    .prologue
    .line 212
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    .line 213
    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 508
    if-eqz p1, :cond_2

    .line 509
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_1

    .line 510
    new-instance v0, Lmiui/widget/ScreenView$SeekBarIndicator;

    iget-object v1, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    .line 511
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setGravity(I)V

    .line 512
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setAnimationCacheEnabled(Z)V

    .line 513
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 518
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    goto :goto_0
.end method

.method public setSeekBarVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 705
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_0

    .line 709
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSeekPointResource(I)V
    .locals 0
    .parameter "seekPointResId"

    .prologue
    .line 500
    iput p1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    .line 501
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 644
    const v0, 0x6020092

    const v1, 0x6020093

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/widget/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    .line 645
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V
    .locals 3
    .parameter "params"
    .parameter "slideDrawableId"
    .parameter "backgroundDrawableId"
    .parameter "isAutoHide"

    .prologue
    const/4 v2, 0x0

    .line 652
    iput-boolean p4, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    .line 653
    if-eqz p1, :cond_2

    .line 654
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-nez v0, :cond_1

    .line 655
    new-instance v0, Lmiui/widget/ScreenView$SlideBar;

    iget-object v1, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2, p3}, Lmiui/widget/ScreenView$SlideBar;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;II)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    .line 656
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    new-instance v1, Lmiui/widget/ScreenView$SliderTouchListener;

    invoke-direct {v1, p0, v2}, Lmiui/widget/ScreenView$SliderTouchListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 657
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setAnimationCacheEnabled(Z)V

    .line 658
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SlideBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 663
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 665
    iput-object v2, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    goto :goto_0
.end method

.method public setSlideBarVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 712
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-nez v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTouchSlop(I)V
    .locals 0
    .parameter "slop"

    .prologue
    .line 192
    iput p1, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    .line 193
    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 5
    .parameter "ev"
    .parameter "touchState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1218
    iput p2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 1220
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1221
    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v1, :cond_2

    .line 1222
    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 1223
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 1224
    iget-object v1, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->recycle()V

    .line 1248
    :cond_0
    :goto_1
    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    .line 1249
    return-void

    :cond_1
    move v1, v3

    .line 1220
    goto :goto_0

    .line 1227
    :cond_2
    if-eqz p1, :cond_3

    .line 1228
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 1232
    :cond_3
    iget-boolean v1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    if-eqz v1, :cond_4

    .line 1233
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 1237
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1238
    .local v0, currentScreen:Landroid/view/View;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1241
    .end local v0           #currentScreen:Landroid/view/View;
    :cond_4
    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v1, v2, :cond_0

    .line 1242
    iget v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1243
    iget v1, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v1, v1

    iput v1, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 1244
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28

    div-float/2addr v1, v2

    iput v1, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 1001
    if-nez p1, :cond_0

    .line 1002
    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    .line 1004
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1005
    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 5
    .parameter "velocity"
    .parameter "flingDirection"

    .prologue
    const/4 v3, 0x1

    .line 1429
    if-ne p2, v3, :cond_0

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v2, :cond_0

    .line 1430
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2, p1, v3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1440
    :goto_0
    return-void

    .line 1431
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 1432
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    add-int/2addr v2, v4

    :goto_1
    invoke-virtual {p0, v2, p1, v3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    goto :goto_1

    .line 1433
    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    .line 1434
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v2, p1, v3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1436
    :cond_3
    iget v4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    iget-boolean v2, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    :goto_2
    mul-int v0, v4, v2

    .line 1437
    .local v0, snapUnit:I
    iget v2, p0, Lmiui/widget/ScreenView;->mScrollX:I

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v2, v4

    iget v4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int v1, v2, v4

    .line 1438
    .local v1, whichScreen:I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .end local v0           #snapUnit:I
    .end local v1           #whichScreen:I
    :cond_4
    move v2, v3

    .line 1436
    goto :goto_2
.end method

.method public snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    const/4 v0, 0x0

    .line 1448
    invoke-virtual {p0, p1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1449
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 1
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    .line 1500
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    .line 1501
    return-void
.end method

.method protected snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .locals 8
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"
    .parameter "notification"

    .prologue
    const/4 v2, 0x0

    .line 1456
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_1

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1460
    :cond_1
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_5

    .line 1461
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1462
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1467
    :goto_1
    const/4 v0, 0x1

    iget v1, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1468
    .local v7, screenDelta:I
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1469
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v0, :cond_2

    .line 1470
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-interface {v0, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapCancelled(Lmiui/widget/ScreenView;)V

    .line 1472
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1474
    :cond_3
    iput-object p4, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    .line 1475
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1477
    if-eqz p3, :cond_6

    .line 1478
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0, v7, p2}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->setDistance(II)V

    .line 1483
    :goto_2
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->getScreenScrollX(I)I

    move-result v6

    .line 1484
    .local v6, newX:I
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollX:I

    sub-int v3, v6, v0

    .line 1485
    .local v3, delta:I
    if-eqz v3, :cond_0

    .line 1488
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenSnapMaxDuration()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1489
    .local v5, duration:I
    if-lez p2, :cond_4

    .line 1490
    int-to-float v0, v5

    int-to-float v1, p2

    const v4, 0x451c4000

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    const v1, 0x3ecccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v5, v0

    .line 1494
    :cond_4
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1495
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollX:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1496
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    goto/16 :goto_0

    .line 1464
    .end local v3           #delta:I
    .end local v5           #duration:I
    .end local v6           #newX:I
    .end local v7           #screenDelta:I
    :cond_5
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    goto/16 :goto_1

    .line 1480
    .restart local v7       #screenDelta:I
    :cond_6
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    goto :goto_2
.end method

.method public snapToScreen(ILmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .locals 1
    .parameter "whichScreen"
    .parameter "notification"

    .prologue
    const/4 v0, 0x0

    .line 1452
    invoke-virtual {p0, p1, v0, v0, p2}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    .line 1453
    return-void
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 13
    .parameter "child"

    .prologue
    const/high16 v10, 0x4000

    const v11, 0x3e99999a

    const/high16 v12, 0x3f80

    const/4 v8, 0x0

    .line 1823
    instance-of v9, p1, Lmiui/widget/ScreenView$Indicator;

    if-eqz v9, :cond_0

    .line 1949
    :goto_0
    :pswitch_0
    return-void

    .line 1826
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v1, v9

    .line 1827
    .local v1, childW:F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v0, v9

    .line 1828
    .local v0, childH:F
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v9, v10

    .line 1829
    .local v4, halfScreenW:F
    div-float v3, v1, v10

    .line 1830
    .local v3, halfChildW:F
    div-float v2, v0, v10

    .line 1831
    .local v2, halfChildH:F
    iget v9, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v9, v9

    add-float/2addr v9, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    sub-float/2addr v9, v3

    div-float v5, v9, v1

    .line 1832
    .local v5, interpolation:F
    iget v9, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 1834
    :pswitch_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1837
    :pswitch_2
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1840
    :pswitch_3
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_2

    .line 1841
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1844
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v12, v9

    const v10, 0x3f333333

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1845
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1846
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1847
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1848
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1849
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1850
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1851
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1852
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1853
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1854
    iget v8, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0

    .line 1857
    :pswitch_4
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_4

    .line 1858
    :cond_3
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1861
    :cond_4
    invoke-virtual {p1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1862
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1863
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1864
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1865
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1866
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1867
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1868
    neg-float v9, v5

    const/high16 v10, 0x41f0

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1869
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1870
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1871
    iget v8, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1874
    :pswitch_5
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_6

    .line 1875
    :cond_5
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1878
    :cond_6
    invoke-virtual {p1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1879
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1880
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1881
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1882
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1883
    cmpg-float v9, v5, v8

    if-gez v9, :cond_7

    move v1, v8

    .end local v1           #childW:F
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1884
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1885
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1886
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1887
    const/high16 v8, -0x3d4c

    mul-float/2addr v8, v5

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1888
    iget v8, p0, Lmiui/widget/ScreenView;->DEFAULT_ROTATE_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1891
    .restart local v1       #childW:F
    :pswitch_6
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_9

    .line 1892
    :cond_8
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1895
    :cond_9
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v12, v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1896
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1897
    mul-float v9, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v1

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1898
    mul-float v9, v11, v5

    add-float v6, v12, v9

    .line 1899
    .local v6, scale1:F
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1900
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1901
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1902
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1903
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1904
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1905
    const/high16 v8, 0x4234

    neg-float v9, v5

    mul-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1906
    iget v8, p0, Lmiui/widget/ScreenView;->DEFAULT_ROTATE_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1911
    .end local v6           #scale1:F
    :pswitch_7
    cmpg-float v9, v5, v8

    if-gtz v9, :cond_a

    .line 1912
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1915
    :cond_a
    sub-float v9, v12, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1916
    const v9, 0x3f19999a

    const v10, 0x3ecccccd

    sub-float v11, v12, v5

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 1917
    .local v7, scale2:F
    sub-float v9, v12, v7

    mul-float/2addr v9, v1

    const/high16 v10, 0x4040

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1918
    sub-float v9, v12, v7

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1919
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1920
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1921
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1922
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1923
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1924
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1925
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1926
    iget v8, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1929
    .end local v7           #scale2:F
    :pswitch_8
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_c

    .line 1930
    :cond_b
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1933
    :cond_c
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v12, v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1934
    mul-float v9, v1, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1935
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1936
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1937
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1938
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1939
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1940
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1941
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1942
    const/high16 v8, 0x42b4

    neg-float v9, v5

    mul-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1943
    iget v8, p0, Lmiui/widget/ScreenView;->DEFAULT_ROTATE_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1946
    :pswitch_9
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .locals 0
    .parameter "child"
    .parameter "interpolation"

    .prologue
    .line 1952
    return-void
.end method
