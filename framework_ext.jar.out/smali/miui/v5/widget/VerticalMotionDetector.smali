.class public Lmiui/v5/widget/VerticalMotionDetector;
.super Ljava/lang/Object;
.source "VerticalMotionDetector.java"


# static fields
.field static final INVALID_POINTER:I = -0x1

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mActivePointerId:I

.field private mIsBeingDragged:Z

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mStartMotionX:I

.field private mStartMotionY:I

.field private mStrategy:Lmiui/v5/widget/MotionDetectListener;

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lmiui/v5/widget/VerticalMotionDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/v5/widget/VerticalMotionDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v1, -0x1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    .line 21
    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    .line 22
    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    .line 23
    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    .line 24
    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    .line 26
    iput-boolean v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    .line 416
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    .line 32
    iput-object p1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    .line 33
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 34
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 35
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 36
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 37
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mTouchSlop:I

    .line 38
    return-void
.end method

.method private cancelDragging(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 390
    iget-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    .line 395
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p1, p2}, Lmiui/v5/widget/MotionDetectListener;->onMoveCancel(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private clearVelocityTracker()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 326
    :cond_0
    return-void
.end method

.method private finishDragging(IIZ)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "hasTracker"

    .prologue
    .line 403
    iget-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    .line 408
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    iget v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    iget v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    if-eqz p3, :cond_2

    iget-object v6, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_1
    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v6}, Lmiui/v5/widget/MotionDetectListener;->onMoveFinish(Landroid/view/View;IIIILandroid/view/VelocityTracker;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 313
    :cond_0
    return-void
.end method

.method private onSecondaryPointerDown(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 361
    .local v1, index:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 362
    .local v0, id:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    .line 363
    .local v3, y:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 365
    .local v2, x:I
    iput v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    .line 366
    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    .line 367
    iput v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    .line 368
    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    .line 369
    iput v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    .line 370
    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->clearVelocityTracker()V

    .line 371
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v2, v5, 0x8

    .line 341
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 342
    .local v1, pointerId:I
    iget v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    if-ne v1, v5, :cond_0

    .line 346
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 347
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 348
    .local v4, y:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v3, v5

    .line 350
    .local v3, x:I
    iput v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    .line 351
    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    .line 352
    iput v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    .line 353
    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    .line 356
    .end local v0           #newPointerIndex:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_0
    return-void

    .line 346
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 320
    :cond_0
    return-void
.end method

.method private startDragging(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 374
    iput p2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    .line 375
    iput p1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    .line 377
    iget-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    .line 382
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p1, p2}, Lmiui/v5/widget/MotionDetectListener;->onMoveStart(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public static trackMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "tracker"
    .parameter "event"

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 332
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 333
    .local v1, deltaY:F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 334
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 335
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 336
    return-void
.end method


# virtual methods
.method public getMotionStrategy()Lmiui/v5/widget/MotionDetectListener;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    return-object v0
.end method

.method public isBeingDragged()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    return v0
.end method

.method public isMovable(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 427
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    iget v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    iget v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lmiui/v5/widget/MotionDetectListener;->isMovable(Landroid/view/View;IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v5, -0x1

    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    .line 42
    .local v0, strategy:Lmiui/v5/widget/MotionDetectListener;
    if-nez v0, :cond_0

    .line 172
    :goto_0
    return v1

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 57
    .local v6, action:I
    const/4 v4, 0x2

    if-ne v6, v4, :cond_1

    iget-boolean v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    move v1, v12

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    and-int/lit16 v4, v6, 0xff

    packed-switch v4, :pswitch_data_0

    .line 172
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    goto :goto_0

    .line 72
    :pswitch_1
    iget v7, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    .line 73
    .local v7, activePointerId:I
    if-eq v7, v5, :cond_2

    .line 78
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 79
    .local v9, pointerIndex:I
    if-gez v9, :cond_3

    .line 80
    sget-object v1, Lmiui/v5/widget/VerticalMotionDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in onInterceptTouchEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v3, v1

    .line 86
    .local v3, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v2, v1

    .line 87
    .local v2, x:I
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    iget v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    iget v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    invoke-interface/range {v0 .. v5}, Lmiui/v5/widget/MotionDetectListener;->isMovable(Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 88
    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->clearVelocityTracker()V

    goto :goto_1

    .line 92
    :cond_4
    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 93
    .local v11, yDiff:I
    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    sub-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 94
    .local v10, xDiff:I
    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mTouchSlop:I

    if-le v11, v1, :cond_2

    if-ge v10, v11, :cond_2

    .line 95
    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->initVelocityTrackerIfNotExists()V

    .line 96
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v1, p1}, Lmiui/v5/widget/VerticalMotionDetector;->trackMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 97
    invoke-direct {p0, v2, v3}, Lmiui/v5/widget/VerticalMotionDetector;->startDragging(II)V

    .line 98
    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    .line 99
    iput v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    .line 100
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .line 101
    .local v8, parent:Landroid/view/ViewParent;
    if-eqz v8, :cond_2

    .line 102
    invoke-interface {v8, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 109
    .end local v2           #x:I
    .end local v3           #y:I
    .end local v7           #activePointerId:I
    .end local v8           #parent:Landroid/view/ViewParent;
    .end local v9           #pointerIndex:I
    .end local v10           #xDiff:I
    .end local v11           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 110
    .restart local v3       #y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 116
    .restart local v2       #x:I
    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    .line 117
    iput v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    .line 118
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    .line 120
    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->initOrResetVelocityTracker()V

    .line 121
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v1, p1}, Lmiui/v5/widget/VerticalMotionDetector;->trackMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 127
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, v2, v3}, Lmiui/v5/widget/MotionDetectListener;->moveImmediately(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    invoke-direct {p0, v2, v3}, Lmiui/v5/widget/VerticalMotionDetector;->startDragging(II)V

    goto/16 :goto_1

    .line 130
    :cond_5
    invoke-direct {p0, v2, v3}, Lmiui/v5/widget/VerticalMotionDetector;->cancelDragging(II)V

    goto/16 :goto_1

    .line 141
    .end local v2           #x:I
    .end local v3           #y:I
    :pswitch_3
    iget v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 142
    .restart local v9       #pointerIndex:I
    if-gez v9, :cond_6

    .line 143
    iget v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    .line 144
    .restart local v2       #x:I
    iget v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    .line 149
    .restart local v3       #y:I
    :goto_2
    if-ne v6, v12, :cond_7

    .line 150
    invoke-direct {p0, v2, v3, v1}, Lmiui/v5/widget/VerticalMotionDetector;->finishDragging(IIZ)V

    .line 154
    :goto_3
    iput v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    .line 155
    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 146
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_6
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 147
    .restart local v2       #x:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    .restart local v3       #y:I
    goto :goto_2

    .line 152
    :cond_7
    invoke-direct {p0, v2, v3}, Lmiui/v5/widget/VerticalMotionDetector;->cancelDragging(II)V

    goto :goto_3

    .line 160
    .end local v2           #x:I
    .end local v3           #y:I
    .end local v9           #pointerIndex:I
    :pswitch_4
    invoke-direct {p0, p1}, Lmiui/v5/widget/VerticalMotionDetector;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 161
    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 162
    .restart local v9       #pointerIndex:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    .line 163
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    goto/16 :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 176
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    .line 177
    .local v0, strategy:Lmiui/v5/widget/MotionDetectListener;
    if-nez v0, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 298
    :goto_0
    return v1

    .line 181
    :cond_0
    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->initVelocityTrackerIfNotExists()V

    .line 182
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v1, p1}, Lmiui/v5/widget/VerticalMotionDetector;->trackMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 185
    .local v6, action:I
    and-int/lit16 v1, v6, 0xff

    packed-switch v1, :pswitch_data_0

    .line 298
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v13, v1

    .line 191
    .local v13, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v2, v1

    .line 194
    .local v2, x:I
    iput v13, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    .line 195
    iput v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    .line 196
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    .line 198
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, v2, v13}, Lmiui/v5/widget/MotionDetectListener;->moveImmediately(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-direct {p0, v2, v13}, Lmiui/v5/widget/VerticalMotionDetector;->startDragging(II)V

    .line 200
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 201
    .local v11, parent:Landroid/view/ViewParent;
    if-eqz v11, :cond_1

    .line 202
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 205
    .end local v11           #parent:Landroid/view/ViewParent;
    :cond_2
    invoke-direct {p0, v2, v13}, Lmiui/v5/widget/VerticalMotionDetector;->cancelDragging(II)V

    goto :goto_1

    .line 211
    .end local v2           #x:I
    .end local v13           #y:I
    :pswitch_2
    iget v7, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    .line 212
    .local v7, activePointerId:I
    const/4 v1, -0x1

    if-eq v7, v1, :cond_1

    .line 217
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 218
    .local v8, activePointerIndex:I
    if-gez v8, :cond_3

    .line 219
    sget-object v1, Lmiui/v5/widget/VerticalMotionDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onInterceptTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 224
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v13, v1

    .line 225
    .restart local v13       #y:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v2, v1

    .line 227
    .restart local v2       #x:I
    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    sub-int v10, v1, v13

    .line 228
    .local v10, deltaY:I
    const/4 v9, 0x0

    .line 229
    .local v9, adjust:I
    iget-boolean v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-nez v1, :cond_5

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mTouchSlop:I

    if-le v1, v3, :cond_5

    .line 230
    invoke-direct {p0, v2, v13}, Lmiui/v5/widget/VerticalMotionDetector;->startDragging(II)V

    .line 232
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 233
    .restart local v11       #parent:Landroid/view/ViewParent;
    if-eqz v11, :cond_4

    .line 234
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 236
    :cond_4
    if-lez v10, :cond_7

    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mTouchSlop:I

    neg-int v9, v1

    .line 239
    .end local v11           #parent:Landroid/view/ViewParent;
    :cond_5
    :goto_2
    iget-boolean v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    add-int v3, v13, v9

    iget v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    iget v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    invoke-interface/range {v0 .. v5}, Lmiui/v5/widget/MotionDetectListener;->onMove(Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_6

    .line 242
    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->clearVelocityTracker()V

    .line 245
    :cond_6
    iput v13, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    .line 246
    iput v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    goto/16 :goto_1

    .line 236
    .restart local v11       #parent:Landroid/view/ViewParent;
    :cond_7
    iget v9, p0, Lmiui/v5/widget/VerticalMotionDetector;->mTouchSlop:I

    goto :goto_2

    .line 251
    .end local v2           #x:I
    .end local v7           #activePointerId:I
    .end local v8           #activePointerIndex:I
    .end local v9           #adjust:I
    .end local v10           #deltaY:I
    .end local v11           #parent:Landroid/view/ViewParent;
    .end local v13           #y:I
    :pswitch_3
    iget-boolean v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 254
    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 255
    .local v12, pointerIndex:I
    if-gez v12, :cond_8

    .line 256
    iget v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    .line 257
    .restart local v2       #x:I
    iget v13, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    .line 262
    .restart local v13       #y:I
    :goto_3
    const/4 v1, 0x1

    invoke-direct {p0, v2, v13, v1}, Lmiui/v5/widget/VerticalMotionDetector;->finishDragging(IIZ)V

    .line 264
    const/4 v1, -0x1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    .line 265
    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 259
    .end local v2           #x:I
    .end local v13           #y:I
    :cond_8
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v2, v1

    .line 260
    .restart local v2       #x:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v13, v1

    .restart local v13       #y:I
    goto :goto_3

    .line 270
    .end local v2           #x:I
    .end local v12           #pointerIndex:I
    .end local v13           #y:I
    :pswitch_4
    iget-boolean v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 273
    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 274
    .restart local v12       #pointerIndex:I
    if-gez v12, :cond_9

    .line 275
    iget v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    .line 276
    .restart local v2       #x:I
    iget v13, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    .line 281
    .restart local v13       #y:I
    :goto_4
    invoke-direct {p0, v2, v13}, Lmiui/v5/widget/VerticalMotionDetector;->cancelDragging(II)V

    .line 283
    const/4 v1, -0x1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    .line 284
    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 278
    .end local v2           #x:I
    .end local v13           #y:I
    :cond_9
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v2, v1

    .line 279
    .restart local v2       #x:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v13, v1

    .restart local v13       #y:I
    goto :goto_4

    .line 289
    .end local v2           #x:I
    .end local v12           #pointerIndex:I
    .end local v13           #y:I
    :pswitch_5
    invoke-direct {p0, p1}, Lmiui/v5/widget/VerticalMotionDetector;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 293
    :pswitch_6
    invoke-direct {p0, p1}, Lmiui/v5/widget/VerticalMotionDetector;->onSecondaryPointerDown(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public setMotionStrategy(Lmiui/v5/widget/MotionDetectListener;)V
    .locals 0
    .parameter "strategy"

    .prologue
    .line 419
    iput-object p1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    .line 420
    return-void
.end method
