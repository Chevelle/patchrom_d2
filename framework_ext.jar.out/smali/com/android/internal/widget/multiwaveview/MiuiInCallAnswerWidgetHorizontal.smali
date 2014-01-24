.class public Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;
.super Lcom/android/internal/widget/multiwaveview/GlowPadView;
.source "MiuiInCallAnswerWidgetHorizontal.java"


# static fields
.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final HIDE_TARGET_LIGHT_DELAY:I = 0x14

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0x12c

.field private static final SHOW_ANIMATION_DELAY:I = 0xc8

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SHOW_HINT_ANIMATION_DELAY:I = 0xc8

.field private static final SHOW_HINT_ANIMATION_DURATION:I = 0x5dc

.field private static final SHOW_HINT_DELAY:I = 0x190

.field private static final SHOW_HINT_DURATION:I = 0x12c

.field private static final SHOW_OUTERRING_DELAY:I = 0xc8

.field private static final SHOW_OUTERRING_DURATION:I = 0x12c

.field private static final SHOW_TARGET_LIGHT_DELAY:I = 0x14

.field private static final STATE_ANSWER:I = 0x7

.field public static final STATE_ANSWER_HANDLE:[I = null

.field private static final STATE_DECLINE:I = 0x6

.field public static final STATE_DECLINE_HANDLE:[I = null

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field public static final STATE_HINT_ANIM:[[I = null

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_TRACKING:I = 0x3


# instance fields
.field private mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mHandleAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mHintAnimation:Landroid/animation/ValueAnimator;

.field private mOuterRingAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mOuterRingListener:Landroid/animation/Animator$AnimatorListener;

.field private mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mShowingOuterRing:Z

.field private mTargetLightAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetLightDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 52
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_DECLINE_HANDLE:[I

    .line 54
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_ANSWER_HANDLE:[I

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_HINT_ANIM:[[I

    return-void

    .line 52
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    .line 54
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    .line 57
    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    :array_3
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0xa2t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    :array_4
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0x5et 0xfft 0xfet 0xfet
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    :array_5
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    :array_6
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0xa2t 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    :array_7
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    :array_8
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0x5et 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-boolean v4, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mShowingOuterRing:Z

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightDrawables:Ljava/util/ArrayList;

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    .line 89
    new-instance v3, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 90
    new-instance v3, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRingAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 92
    new-instance v3, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$1;-><init>(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;)V

    iput-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRingListener:Landroid/animation/Animator$AnimatorListener;

    .line 106
    sget-object v3, Lmiui/R$styleable;->MiuiInCallAnswerWidgetHorizontal:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 109
    .local v1, outValue:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->internalSetTargetLightResources(I)V

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 114
    .local v2, res:Landroid/content/res/Resources;
    new-instance v3, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v3, v2, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getHandleDrawable()Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->setGlowRadius(F)V

    .line 119
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mShowingOuterRing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->showRightHintAnim(I)V

    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 253
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private hideRightHintAnim()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 506
    :cond_0
    return-void
.end method

.method private hideTargetLight()V
    .locals 3

    .prologue
    .line 233
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 234
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 236
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void
.end method

.method private internalSetTargetLightResources(I)V
    .locals 8
    .parameter "resourceId"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 240
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 241
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 242
    .local v1, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    .local v4, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 244
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 245
    .local v5, value:Landroid/util/TypedValue;
    new-instance v7, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    if-eqz v5, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    invoke-direct {v7, v3, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 247
    .end local v5           #value:Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    iput-object v4, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightDrawables:Ljava/util/ArrayList;

    .line 249
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->updateTargetLightPositions()V

    .line 250
    return-void
.end method

.method private moveHandleTo(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getHandleDrawable()Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 544
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getHandleDrawable()Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 545
    return-void
.end method

.method private resetHandleDrawable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getHandleDrawable()Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 549
    invoke-direct {p0, v2, v2}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->moveHandleTo(FF)V

    .line 550
    return-void
.end method

.method private showOuterRing()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/high16 v7, 0x3f80

    .line 412
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getOuterRing()Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v0

    .line 414
    .local v0, outerRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    iput-boolean v8, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mShowingOuterRing:Z

    .line 415
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRingAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 416
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setScaleX(F)V

    .line 417
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setScaleY(F)V

    .line 418
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRingAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    const-wide/16 v2, 0x12c

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "alpha"

    aput-object v6, v4, v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "scaleX"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "scaleY"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;

    invoke-direct {v6, p0, v0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;-><init>(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRingListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRingAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 435
    return-void
.end method

.method private showRightHintAnim(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 495
    sget-object v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_HINT_ANIM:[[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_HINT_ANIM:[[I

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->invalidate()V

    .line 499
    :cond_0
    return-void
.end method

.method private startRightHintAnim()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 509
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 510
    .local v0, showHintAnimationAlpha:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 511
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 512
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 513
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 515
    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    .line 516
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 517
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 518
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 519
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$3;-><init>(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 536
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 537
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 538
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 539
    return-void

    .line 509
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 515
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private stopTargetLightAnimation()V
    .locals 3

    .prologue
    .line 192
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 193
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 195
    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 196
    return-void
.end method

.method private updateRightHintAnimPositions()V
    .locals 4

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getWaveCenterX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getOuterRadius()F

    move-result v2

    const v3, 0x3f266666

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getWaveCenterY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 397
    return-void
.end method

.method private updateTargetLightPositions()V
    .locals 4

    .prologue
    .line 388
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 389
    .local v1, targetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getWaveCenterX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getWaveCenterX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getWaveCenterY()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    goto :goto_0

    .line 392
    .end local v1           #targetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void
.end method


# virtual methods
.method doFinish()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/high16 v10, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getActiveTarget()I

    move-result v0

    .line 440
    .local v0, activeTarget:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v3

    .line 442
    .local v1, targetHit:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 443
    if-eqz v1, :cond_1

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getTargetDrawables()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v5, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 446
    invoke-virtual {p0, v4, v4}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->hideTargets(ZZ)V

    .line 447
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->hideRightHintAnim()V

    .line 450
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->callDispatchTriggerEvent(I)V

    .line 451
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getHandleDrawable()Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "ease"

    aput-object v9, v8, v4

    sget-object v9, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v9, v8, v3

    const-string v3, "delay"

    aput-object v3, v8, v11

    const/16 v3, 0x4b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v12

    const/4 v3, 0x4

    const-string v9, "alpha"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v3, 0x6

    const-string v9, "x"

    aput-object v9, v8, v3

    const/4 v3, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const/16 v3, 0x8

    const-string v9, "y"

    aput-object v9, v8, v3

    const/16 v3, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const/16 v3, 0xa

    const-string v9, "onUpdate"

    aput-object v9, v8, v3

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v9

    aput-object v9, v8, v3

    const/16 v3, 0xc

    const-string v9, "onComplete"

    aput-object v9, v8, v3

    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getResetListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 470
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 472
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->setDragging(Z)V

    .line 473
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->callSetGrabbedState(I)V

    .line 474
    return-void

    .end local v1           #targetHit:Z
    :cond_0
    move v1, v4

    .line 440
    goto/16 :goto_0

    .line 461
    .restart local v1       #targetHit:Z
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getHandleDrawable()Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v6

    const-wide/16 v7, 0x12c

    const/16 v2, 0xe

    new-array v9, v2, [Ljava/lang/Object;

    const-string v2, "ease"

    aput-object v2, v9, v4

    sget-object v2, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v2, v9, v3

    const-string v2, "delay"

    aput-object v2, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v12

    const/4 v2, 0x4

    const-string v3, "alpha"

    aput-object v3, v9, v2

    const/4 v2, 0x5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x6

    const-string v3, "x"

    aput-object v3, v9, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0x8

    const-string v3, "y"

    aput-object v3, v9, v2

    const/16 v2, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0xa

    const-string v3, "onUpdate"

    aput-object v3, v9, v2

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0xc

    const-string v3, "onComplete"

    aput-object v3, v9, v2

    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getDragging()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getResetListenerWithPing()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    :goto_2
    aput-object v2, v9, v3

    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getResetListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    goto :goto_2
.end method

.method handleMove(Landroid/view/MotionEvent;)V
    .locals 40
    .parameter "event"

    .prologue
    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getDragging()Z

    move-result v33

    if-nez v33, :cond_0

    .line 361
    :goto_0
    return-void

    .line 263
    :cond_0
    const/4 v4, -0x1

    .line 264
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    .line 265
    .local v11, historySize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getTargetDrawables()Ljava/util/ArrayList;

    move-result-object v27

    .line 266
    .local v27, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 267
    .local v16, ntargets:I
    const/16 v31, 0x0

    .line 268
    .local v31, x:F
    const/16 v32, 0x0

    .line 269
    .local v32, y:F
    const/4 v13, 0x0

    .local v13, k:I
    :goto_1
    add-int/lit8 v33, v11, 0x1

    move/from16 v0, v33

    if-ge v13, v0, :cond_14

    .line 270
    if-ge v13, v11, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v9

    .line 271
    .local v9, eventX:F
    :goto_2
    if-ge v13, v11, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v10

    .line 273
    .local v10, eventY:F
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getWaveCenterX()F

    move-result v33

    sub-float v29, v9, v33

    .line 274
    .local v29, tx:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getWaveCenterY()F

    move-result v33

    sub-float v30, v10, v33

    .line 275
    .local v30, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->dist2(FF)F

    move-result v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v28, v0

    .line 276
    .local v28, touchRadius:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getOuterRadius()F

    move-result v33

    cmpl-float v33, v28, v33

    if-lez v33, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getOuterRadius()F

    move-result v33

    div-float v17, v33, v28

    .line 277
    .local v17, scale:F
    :goto_4
    mul-float v14, v29, v17

    .line 278
    .local v14, limitX:F
    mul-float v15, v30, v17

    .line 279
    .local v15, limitY:F
    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 281
    .local v6, angleRad:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getTargetDrawables()Ljava/util/ArrayList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    .line 282
    .local v18, singleTarget:Z
    :goto_5
    if-eqz v18, :cond_8

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getOuterRadius()F

    move-result v33

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getSnapMargin()F

    move-result v34

    sub-float v20, v33, v34

    .line 285
    .local v20, snapRadius:F
    cmpl-float v33, v28, v20

    if-lez v33, :cond_1

    .line 286
    const/4 v4, 0x0

    .line 287
    move/from16 v31, v14

    .line 288
    move/from16 v32, v15

    .line 313
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->moveHandleTo(FF)V

    .line 315
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v4, v0, :cond_11

    .line 316
    const/16 v33, 0x2

    move/from16 v0, v33

    if-ne v4, v0, :cond_e

    .line 317
    const/16 v33, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->switchToState(IFF)V

    .line 324
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightDrawables:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 325
    .local v8, currentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v33, v0

    if-nez v33, :cond_10

    .line 326
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 333
    :cond_2
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_3

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->stopTargetLightAnimation()V

    .line 336
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v34, v0

    const-wide/16 v35, 0x14

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const-string v39, "delay"

    aput-object v39, v37, v38

    const/16 v38, 0x1

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x2

    const-string v39, "alpha"

    aput-object v39, v37, v38

    const/16 v38, 0x3

    const/high16 v39, 0x3f80

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v34 .. v37}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v8           #currentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 270
    .end local v6           #angleRad:D
    .end local v9           #eventX:F
    .end local v10           #eventY:F
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v17           #scale:F
    .end local v18           #singleTarget:Z
    .end local v20           #snapRadius:F
    .end local v28           #touchRadius:F
    .end local v29           #tx:F
    .end local v30           #ty:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto/16 :goto_2

    .line 271
    .restart local v9       #eventX:F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    goto/16 :goto_3

    .line 276
    .restart local v10       #eventY:F
    .restart local v28       #touchRadius:F
    .restart local v29       #tx:F
    .restart local v30       #ty:F
    :cond_6
    const/high16 v17, 0x3f80

    goto/16 :goto_4

    .line 281
    .restart local v6       #angleRad:D
    .restart local v14       #limitX:F
    .restart local v15       #limitY:F
    .restart local v17       #scale:F
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 292
    .restart local v18       #singleTarget:Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getOuterRadius()F

    move-result v33

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getSnapMargin()F

    move-result v34

    sub-float v20, v33, v34

    .line 293
    .restart local v20       #snapRadius:F
    mul-float v19, v20, v20

    .line 295
    .local v19, snapDistance2:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_a
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 296
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 298
    .local v21, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    int-to-double v0, v12

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3fe0

    sub-double v33, v33, v35

    const-wide/high16 v35, 0x4000

    mul-double v33, v33, v35

    const-wide v35, 0x400921fb54442d18L

    mul-double v33, v33, v35

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v25, v33, v35

    .line 299
    .local v25, targetMinRad:D
    int-to-double v0, v12

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3fe0

    add-double v33, v33, v35

    const-wide/high16 v35, 0x4000

    mul-double v33, v33, v35

    const-wide v35, 0x400921fb54442d18L

    mul-double v33, v33, v35

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v23, v33, v35

    .line 300
    .local v23, targetMaxRad:D
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_b

    .line 301
    cmpl-double v33, v6, v25

    if-lez v33, :cond_9

    cmpg-double v33, v6, v23

    if-lez v33, :cond_a

    :cond_9
    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v6

    cmpl-double v33, v33, v25

    if-lez v33, :cond_c

    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v6

    cmpg-double v33, v33, v23

    if-gtz v33, :cond_c

    :cond_a
    const/4 v5, 0x1

    .line 305
    .local v5, angleMatches:Z
    :goto_b
    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->dist2(FF)F

    move-result v33

    cmpl-float v33, v33, v19

    if-lez v33, :cond_b

    .line 306
    move v4, v12

    .line 295
    .end local v5           #angleMatches:Z
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 301
    :cond_c
    const/4 v5, 0x0

    goto :goto_b

    .line 310
    .end local v21           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v23           #targetMaxRad:D
    .end local v25           #targetMinRad:D
    :cond_d
    move/from16 v31, v14

    .line 311
    move/from16 v32, v15

    goto/16 :goto_6

    .line 318
    .end local v12           #i:I
    .end local v19           #snapDistance2:F
    :cond_e
    if-nez v4, :cond_f

    .line 319
    const/16 v33, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->switchToState(IFF)V

    goto/16 :goto_7

    .line 321
    :cond_f
    const/16 v33, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->switchToState(IFF)V

    goto/16 :goto_7

    .line 327
    .restart local v8       #currentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    if-eq v0, v8, :cond_2

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v34, v0

    const-wide/16 v35, 0x14

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const-string v39, "delay"

    aput-object v39, v37, v38

    const/16 v38, 0x1

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x2

    const-string v39, "alpha"

    aput-object v39, v37, v38

    const/16 v38, 0x3

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v34 .. v37}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    goto/16 :goto_8

    .line 340
    .end local v8           #currentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_12

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->stopTargetLightAnimation()V

    .line 343
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_13

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v34, v0

    const-wide/16 v35, 0x14

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const-string v39, "delay"

    aput-object v39, v37, v38

    const/16 v38, 0x1

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x2

    const-string v39, "alpha"

    aput-object v39, v37, v38

    const/16 v38, 0x3

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v34 .. v37}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_13
    const/16 v33, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->switchToState(IFF)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getHandleDrawable()Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v33

    const/high16 v34, 0x3f80

    invoke-virtual/range {v33 .. v34}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto/16 :goto_9

    .line 353
    .end local v6           #angleRad:D
    .end local v9           #eventX:F
    .end local v10           #eventY:F
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v17           #scale:F
    .end local v18           #singleTarget:Z
    .end local v20           #snapRadius:F
    .end local v28           #touchRadius:F
    .end local v29           #tx:F
    .end local v30           #ty:F
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getActiveTarget()I

    move-result v33

    move/from16 v0, v33

    if-eq v0, v4, :cond_15

    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v4, v0, :cond_15

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->callVibrate()V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_15

    .line 356
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->callGetTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 357
    .local v22, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 360
    .end local v22           #targetContentDescription:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->setActiveTarget(I)V

    goto/16 :goto_0
.end method

.method hideTargets(ZZ)V
    .locals 13
    .parameter "animate"
    .parameter "expanded"

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getTargetAnimations()Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    move-result-object v6

    .line 201
    .local v6, targetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getTargetDrawables()Ljava/util/ArrayList;

    move-result-object v7

    .line 203
    .local v7, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->setAnimatingTargets(Z)V

    .line 207
    if-eqz p1, :cond_0

    const/16 v1, 0xc8

    .line 208
    .local v1, duration:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    .line 210
    .local v0, delay:I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 211
    .local v4, length:I
    sget-object v3, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 212
    .local v3, interpolator:Landroid/animation/TimeInterpolator;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 213
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 214
    .local v5, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v8, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 215
    int-to-long v8, v1

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ease"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    const/4 v11, 0x2

    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "delay"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "onUpdate"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v5, v8, v9, v10}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 207
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #interpolator:Landroid/animation/TimeInterpolator;
    .end local v4           #length:I
    .end local v5           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 208
    .restart local v1       #duration:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 221
    .restart local v0       #delay:I
    .restart local v2       #i:I
    .restart local v3       #interpolator:Landroid/animation/TimeInterpolator;
    .restart local v4       #length:I
    :cond_2
    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getOuterRing()Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 226
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 227
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->stopTargetLightAnimation()V

    .line 229
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->hideTargetLight()V

    .line 230
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getOuterRing()Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 373
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 374
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 378
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getTargetDrawables()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 379
    .restart local v1       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 383
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getHandleDrawable()Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 385
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 365
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->onLayout(ZIIII)V

    .line 366
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->updateTargetLightPositions()V

    .line 367
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->updateRightHintAnimPositions()V

    .line 368
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 479
    iget-boolean v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mShowingOuterRing:Z

    if-eqz v1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 484
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->setActiveTarget(I)V

    .line 486
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->switchToState(IFF)V

    goto :goto_0

    .line 491
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 401
    invoke-super {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 402
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->hideRightHintAnim()V

    .line 403
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->resetHandleDrawable()V

    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getTargetAnimations()Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 407
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->showOuterRing()V

    .line 408
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->startRightHintAnim()V

    .line 409
    return-void
.end method

.method showTargets(Z)V
    .locals 14
    .parameter "animate"

    .prologue
    const/16 v1, 0xc8

    const/4 v7, 0x0

    const/high16 v13, 0x3f80

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getTargetAnimations()Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    move-result-object v5

    .line 166
    .local v5, targetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getTargetDrawables()Ljava/util/ArrayList;

    move-result-object v6

    .line 168
    .local v6, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 169
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->stopTargetLightAnimation()V

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->setAnimatingTargets(Z)V

    .line 173
    if-eqz p1, :cond_1

    move v0, v1

    .line 174
    .local v0, delay:I
    :goto_0
    if-eqz p1, :cond_2

    .line 175
    .local v1, duration:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 176
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 177
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 178
    .local v4, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v8, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 179
    int-to-long v8, v1

    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "ease"

    aput-object v11, v10, v7

    const/4 v11, 0x1

    sget-object v12, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "scaleX"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "scaleY"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "delay"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "onUpdate"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v4, v8, v9, v10}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    move v0, v7

    .line 173
    goto :goto_0

    .restart local v0       #delay:I
    :cond_2
    move v1, v7

    .line 174
    goto :goto_1

    .line 187
    .restart local v1       #duration:I
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 188
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->hideTargetLight()V

    .line 189
    return-void
.end method

.method switchToState(IFF)V
    .locals 2
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getHandleDrawable()Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v0

    .line 124
    .local v0, handleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    packed-switch p1, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 126
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->callDeactivateTargets()V

    .line 127
    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 128
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->callDeactivateTargets()V

    .line 134
    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 135
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->callSetGrabbedState(I)V

    .line 136
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->callAnnounceTargets()V

    goto :goto_0

    .line 142
    :pswitch_3
    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 146
    :pswitch_4
    sget-object v1, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_DECLINE_HANDLE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 150
    :pswitch_5
    sget-object v1, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_ANSWER_HANDLE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 154
    :pswitch_6
    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 158
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->doFinish()V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method updateTargetPosition(IFFF)V
    .locals 5
    .parameter "i"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "angle"

    .prologue
    .line 554
    if-ltz p1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getTargetDrawables()Ljava/util/ArrayList;

    move-result-object v1

    .line 556
    .local v1, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 557
    .local v0, targetIcon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 558
    invoke-virtual {v0, p3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getOuterRadius()F

    move-result v2

    float-to-double v3, p4

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 560
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getOuterRadius()F

    move-result v2

    float-to-double v3, p4

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 562
    .end local v0           #targetIcon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v1           #targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    :cond_0
    return-void
.end method
