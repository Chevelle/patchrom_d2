.class public Lmiui/widget/ScreenView$GestureVelocityTracker;
.super Ljava/lang/Object;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureVelocityTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;
    }
.end annotation


# static fields
.field public static final FLING_ALIGN:I = 0x4

.field public static final FLING_CANCEL:I = 0x3

.field public static final FLING_DOWN:I = 0xb

.field public static final FLING_LEFT:I = 0x1

.field public static final FLING_NONE:I = 0x0

.field public static final FLING_RIGHT:I = 0x2

.field public static final FLING_UP:I = 0xa

.field private static final mMinFoldDist:F = 3.0f


# instance fields
.field private final DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

.field private mCounter:I

.field private mPointerId:I

.field private mTx:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

.field private mTy:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalGestureConfirmed:Z

.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 215
    iput-object p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;-><init>(Lmiui/widget/ScreenView$GestureVelocityTracker;)V

    iput-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mTx:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    .line 229
    new-instance v0, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;-><init>(Lmiui/widget/ScreenView$GestureVelocityTracker;)V

    iput-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mTy:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    .line 230
    iput v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 231
    iput v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mCounter:I

    .line 233
    const/high16 v0, 0x42c8

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mTx:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->reset()V

    .line 305
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mTy:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->reset()V

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 307
    iput v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mCounter:I

    .line 308
    iput-boolean v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVerticalGestureConfirmed:Z

    .line 309
    return-void
.end method

.method private trackPoint(FLmiui/widget/ScreenView$GestureVelocityTracker$Tracker;)V
    .locals 3
    .parameter "p"
    .parameter "t"

    .prologue
    const/high16 v2, 0x4040

    const/4 v1, 0x0

    .line 277
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->start:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 278
    iput p1, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->start:F

    .line 302
    :goto_0
    return-void

    .line 281
    :cond_0
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 282
    iput p1, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    goto :goto_0

    .line 285
    :cond_1
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 286
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v1, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->start:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_3

    :cond_2
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v1, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->start:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 287
    :cond_3
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->start:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 288
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iput v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    .line 301
    :cond_4
    :goto_1
    iput p1, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    goto :goto_0

    .line 292
    :cond_5
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    iget v1, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 293
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v1, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_7

    :cond_6
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v1, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 294
    :cond_7
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 295
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    iput v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->start:F

    .line 296
    iget v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iput v0, p2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    goto :goto_1
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, -0x1

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 254
    .local v0, action:I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget v4, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mCounter:I

    .line 258
    iget-object v4, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2

    .line 259
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 261
    :cond_2
    iget-object v4, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 263
    .local v1, curX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 264
    .local v2, curY:F
    iget v4, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPointerId:I

    if-eq v4, v5, :cond_3

    .line 265
    iget v4, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 266
    .local v3, pIndex:I
    if-eq v3, v5, :cond_4

    .line 267
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 268
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 273
    .end local v3           #pIndex:I
    :cond_3
    :goto_1
    iget-object v4, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mTx:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p0, v1, v4}, Lmiui/widget/ScreenView$GestureVelocityTracker;->trackPoint(FLmiui/widget/ScreenView$GestureVelocityTracker$Tracker;)V

    .line 274
    iget-object v4, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mTy:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p0, v2, v4}, Lmiui/widget/ScreenView$GestureVelocityTracker;->trackPoint(FLmiui/widget/ScreenView$GestureVelocityTracker$Tracker;)V

    goto :goto_0

    .line 270
    .restart local v3       #pIndex:I
    :cond_4
    iput v5, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPointerId:I

    goto :goto_1
.end method

.method public getCounter()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mCounter:I

    return v0
.end method

.method public getFlingDirection(Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;F)I
    .locals 5
    .parameter "t"
    .parameter "velocity"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x3

    .line 346
    const/high16 v3, 0x4396

    cmpl-float v3, p2, v3

    if-lez v3, :cond_6

    .line 347
    iget v3, p1, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 348
    iget v2, p1, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v3, p1, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->start:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 348
    goto :goto_0

    .line 350
    :cond_2
    iget v3, p1, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v4, p1, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 351
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->this$0:Lmiui/widget/ScreenView;

    #getter for: Lmiui/widget/ScreenView;->mScrollX:I
    invoke-static {v0}, Lmiui/widget/ScreenView;->access$300(Lmiui/widget/ScreenView;)I

    move-result v0

    iget-object v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v3}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v0, v3, :cond_3

    move v0, v2

    .line 352
    goto :goto_0

    :cond_3
    move v0, v1

    .line 354
    goto :goto_0

    .line 356
    :cond_4
    iget v1, p1, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v3, p1, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 357
    iget-object v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->this$0:Lmiui/widget/ScreenView;

    #getter for: Lmiui/widget/ScreenView;->mScrollX:I
    invoke-static {v1}, Lmiui/widget/ScreenView;->access$400(Lmiui/widget/ScreenView;)I

    move-result v1

    iget-object v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v3}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v1, v3, :cond_0

    move v0, v2

    .line 358
    goto :goto_0

    :cond_5
    move v0, v2

    .line 362
    goto :goto_0

    .line 364
    :cond_6
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getVerticalGesture()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-boolean v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVerticalGestureConfirmed:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getCounter()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v1

    .line 334
    :cond_1
    const/16 v2, 0x3e8

    iget-object v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->this$0:Lmiui/widget/ScreenView;

    #getter for: Lmiui/widget/ScreenView;->mMaximumVelocity:I
    invoke-static {v3}, Lmiui/widget/ScreenView;->access$200(Lmiui/widget/ScreenView;)I

    move-result v3

    invoke-virtual {p0, v2, v3, v1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getYVelocity(III)F

    move-result v0

    .line 335
    .local v0, v:F
    iget-object v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->this$0:Lmiui/widget/ScreenView;

    #getter for: Lmiui/widget/ScreenView;->mMaximumVelocity:I
    invoke-static {v2}, Lmiui/widget/ScreenView;->access$200(Lmiui/widget/ScreenView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mTy:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    iget v2, v2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->start:F

    iget-object v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mTy:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    iget v3, v3, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVerticalGestureConfirmed:Z

    .line 338
    iget-object v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mTy:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    iget v1, v1, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->start:F

    iget-object v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mTy:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    iget v2, v2, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/16 v1, 0xa

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    goto :goto_0
.end method

.method public getXFlingDirection(F)I
    .locals 1
    .parameter "velocity"

    .prologue
    .line 343
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mTx:Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getFlingDirection(Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;F)I

    move-result v0

    return v0
.end method

.method public getXVelocity(III)F
    .locals 2
    .parameter "units"
    .parameter "maxVelocity"
    .parameter "pointerId"

    .prologue
    .line 323
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 324
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public getYVelocity(III)F
    .locals 2
    .parameter "units"
    .parameter "maxVelocity"
    .parameter "pointerId"

    .prologue
    .line 327
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 328
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method public init(I)V
    .locals 1
    .parameter "pointerId"

    .prologue
    .line 311
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 312
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 316
    :goto_0
    invoke-direct {p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->reset()V

    .line 317
    iput p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 318
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 249
    :cond_0
    invoke-direct {p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->reset()V

    .line 250
    return-void
.end method
