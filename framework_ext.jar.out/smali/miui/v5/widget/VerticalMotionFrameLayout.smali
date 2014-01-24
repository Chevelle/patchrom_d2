.class public Lmiui/v5/widget/VerticalMotionFrameLayout;
.super Landroid/widget/FrameLayout;
.source "VerticalMotionFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;
    }
.end annotation


# instance fields
.field private mInertiaListener:Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;

.field private final mMaximumVelocity:I

.field private mModifiedTime:J

.field private mModifiedX:I

.field private mModifiedY:I

.field private final mMotionDetector:Lmiui/v5/widget/VerticalMotionDetector;

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/v5/widget/VerticalMotionFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/v5/widget/VerticalMotionFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v1, Lmiui/v5/widget/VerticalMotionDetector;

    invoke-direct {v1, p0}, Lmiui/v5/widget/VerticalMotionDetector;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mMotionDetector:Lmiui/v5/widget/VerticalMotionDetector;

    .line 37
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 38
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mTouchSlop:I

    .line 39
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mMaximumVelocity:I

    .line 40
    return-void
.end method

.method private static bound(III)I
    .locals 1
    .parameter "src"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 168
    if-ge p0, p1, :cond_0

    .line 169
    move v0, p1

    .line 176
    .local v0, ret:I
    :goto_0
    return v0

    .line 170
    .end local v0           #ret:I
    :cond_0
    if-le p0, p2, :cond_1

    .line 171
    move v0, p2

    .restart local v0       #ret:I
    goto :goto_0

    .line 173
    .end local v0           #ret:I
    :cond_1
    move v0, p0

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "ev"

    .prologue
    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, handled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 75
    .local v10, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 76
    .local v11, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v1, v12, 0xff

    .line 77
    .local v1, action:I
    packed-switch v1, :pswitch_data_0

    .line 147
    :goto_0
    if-eqz v4, :cond_8

    const/4 v12, 0x1

    :goto_1
    return v12

    .line 79
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lmiui/v5/widget/VerticalMotionFrameLayout;->initVelocityTracker()V

    .line 80
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lmiui/v5/widget/VerticalMotionDetector;->trackMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 85
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mMotionDetector:Lmiui/v5/widget/VerticalMotionDetector;

    invoke-virtual {v12}, Lmiui/v5/widget/VerticalMotionDetector;->isBeingDragged()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mMotionDetector:Lmiui/v5/widget/VerticalMotionDetector;

    invoke-virtual {v12, v10, v11}, Lmiui/v5/widget/VerticalMotionDetector;->isMovable(II)Z

    move-result v12

    if-nez v12, :cond_0

    .line 87
    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 88
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 89
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 90
    move-object/from16 v0, p0

    iput v10, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mModifiedX:I

    .line 91
    move-object/from16 v0, p0

    iput v11, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mModifiedY:I

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mModifiedTime:J

    .line 95
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lmiui/v5/widget/VerticalMotionDetector;->trackMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 98
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mModifiedTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_7

    .line 103
    move-object/from16 v0, p0

    iget v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mModifiedY:I

    sub-int v12, v11, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mTouchSlop:I

    if-lt v12, v13, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mModifiedX:I

    sub-int v12, v10, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mTouchSlop:I

    if-ge v12, v13, :cond_3

    .line 104
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v12, :cond_6

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mModifiedTime:J

    sub-long/2addr v12, v14

    long-to-float v12, v12

    const/high16 v13, 0x447a

    div-float v3, v12, v13

    .line 106
    .local v3, dur:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v13, 0x3e8

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mMaximumVelocity:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 107
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 108
    .local v7, vX:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 110
    .local v8, vY:F
    mul-float v12, v7, v3

    float-to-int v12, v12

    add-int/2addr v12, v10

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mRight:I

    invoke-static {v12, v13, v14}, Lmiui/v5/widget/VerticalMotionFrameLayout;->bound(III)I

    move-result v5

    .line 111
    .local v5, newX:I
    mul-float v12, v8, v3

    float-to-int v12, v12

    add-int/2addr v12, v11

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mBottom:I

    invoke-static {v12, v13, v14}, Lmiui/v5/widget/VerticalMotionFrameLayout;->bound(III)I

    move-result v6

    .line 113
    .local v6, newY:I
    move-object/from16 v0, p0

    iget v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mModifiedY:I

    sub-int v12, v6, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mTouchSlop:I

    if-lt v12, v13, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mModifiedX:I

    sub-int v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mTouchSlop:I

    if-ge v12, v13, :cond_5

    .line 115
    :cond_2
    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 127
    .end local v3           #dur:F
    .end local v5           #newX:I
    .end local v6           #newY:I
    .end local v7           #vX:F
    .end local v8           #vY:F
    :cond_3
    :goto_2
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mModifiedTime:J

    .line 139
    :cond_4
    :goto_3
    invoke-direct/range {p0 .. p0}, Lmiui/v5/widget/VerticalMotionFrameLayout;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 117
    .restart local v3       #dur:F
    .restart local v5       #newX:I
    .restart local v6       #newY:I
    .restart local v7       #vX:F
    .restart local v8       #vY:F
    :cond_5
    const/4 v12, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 118
    int-to-float v12, v5

    int-to-float v13, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 119
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 120
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_2

    .line 123
    .end local v3           #dur:F
    .end local v5           #newX:I
    .end local v6           #newY:I
    .end local v7           #vX:F
    .end local v8           #vY:F
    :cond_6
    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_2

    .line 128
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mInertiaListener:Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mMotionDetector:Lmiui/v5/widget/VerticalMotionDetector;

    invoke-virtual {v12}, Lmiui/v5/widget/VerticalMotionDetector;->isBeingDragged()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v12, :cond_4

    .line 131
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    const/4 v4, 0x1

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v13, 0x3e8

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mMaximumVelocity:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 134
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v12

    float-to-int v9, v12

    .line 135
    .local v9, vy:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mMotionDetector:Lmiui/v5/widget/VerticalMotionDetector;

    invoke-virtual {v12}, Lmiui/v5/widget/VerticalMotionDetector;->getMotionStrategy()Lmiui/v5/widget/MotionDetectListener;

    move-result-object v12

    invoke-interface {v12}, Lmiui/v5/widget/MotionDetectListener;->getLastAnchorPosition()I

    move-result v2

    .line 136
    .local v2, anchor:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mInertiaListener:Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;

    invoke-interface {v12, v9, v2}, Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;->onInertiaMotion(II)V

    goto :goto_3

    .line 142
    .end local v2           #anchor:I
    .end local v9           #vy:I
    :pswitch_3
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mModifiedTime:J

    .line 143
    invoke-direct/range {p0 .. p0}, Lmiui/v5/widget/VerticalMotionFrameLayout;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 147
    :cond_8
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    goto/16 :goto_1

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 62
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mMotionDetector:Lmiui/v5/widget/VerticalMotionDetector;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/VerticalMotionDetector;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mMotionDetector:Lmiui/v5/widget/VerticalMotionDetector;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/VerticalMotionDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setInertiaListener(Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 51
    iput-object p1, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mInertiaListener:Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;

    .line 52
    return-void
.end method

.method public setMotionStrategy(Lmiui/v5/widget/MotionDetectListener;)V
    .locals 1
    .parameter "strategy"

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionFrameLayout;->mMotionDetector:Lmiui/v5/widget/VerticalMotionDetector;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/VerticalMotionDetector;->setMotionStrategy(Lmiui/v5/widget/MotionDetectListener;)V

    .line 58
    return-void
.end method
