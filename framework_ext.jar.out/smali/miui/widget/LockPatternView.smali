.class public Lmiui/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/LockPatternView$1;,
        Lmiui/widget/LockPatternView$SavedState;,
        Lmiui/widget/LockPatternView$OnPatternListener;,
        Lmiui/widget/LockPatternView$DisplayMode;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field static final STATUS_BAR_HEIGHT:I = 0x19

.field private static final TAG:Ljava/lang/String; = "LockPatternView"


# instance fields
.field private mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mAspect:I

.field private mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

.field private mBitmapArrowRedUp:Landroid/graphics/Bitmap;

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnDefaultWithBackground:Landroid/graphics/Bitmap;

.field private mBitmapBtnRed:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mStrokeAlpha:I

.field private mWrongPathPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x3

    const/high16 v4, -0x4080

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 234
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-boolean v3, p0, Lmiui/widget/LockPatternView;->mDrawingProfilingStarted:Z

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 86
    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 93
    iput v4, p0, Lmiui/widget/LockPatternView;->mInProgressX:F

    .line 94
    iput v4, p0, Lmiui/widget/LockPatternView;->mInProgressY:F

    .line 98
    sget-object v0, Lmiui/widget/LockPatternView$DisplayMode;->Correct:Lmiui/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    .line 99
    iput-boolean v2, p0, Lmiui/widget/LockPatternView;->mInputEnabled:Z

    .line 100
    iput-boolean v3, p0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    .line 101
    iput-boolean v2, p0, Lmiui/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 102
    iput-boolean v3, p0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    .line 104
    const v0, 0x3dcccccd

    iput v0, p0, Lmiui/widget/LockPatternView;->mDiameterFactor:F

    .line 105
    const/16 v0, 0x40

    iput v0, p0, Lmiui/widget/LockPatternView;->mStrokeAlpha:I

    .line 106
    const v0, 0x3f19999a

    iput v0, p0, Lmiui/widget/LockPatternView;->mHitFactor:F

    .line 122
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 130
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 236
    invoke-direct {p0, p1, p2}, Lmiui/widget/LockPatternView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 238
    invoke-virtual {p0, v2}, Lmiui/widget/LockPatternView;->setClickable(Z)V

    .line 240
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 241
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 242
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/widget/LockPatternView;->mStrokeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 243
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 245
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 247
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 248
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 249
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/widget/LockPatternView;->mStrokeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 250
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 252
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 253
    return-void
.end method

.method private addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3
    .parameter "newCell"

    .prologue
    .line 526
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 527
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->notifyCellAdded()V

    .line 529
    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 534
    invoke-direct {p0, p2}, Lmiui/widget/LockPatternView;->getRowHit(F)I

    move-result v1

    .line 535
    .local v1, rowHit:I
    if-gez v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-object v2

    .line 538
    :cond_1
    invoke-direct {p0, p1}, Lmiui/widget/LockPatternView;->getColumnHit(F)I

    move-result v0

    .line 539
    .local v0, columnHit:I
    if-ltz v0, :cond_0

    .line 543
    iget-object v3, p0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 546
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 394
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 395
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 396
    iget-object v2, p0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 394
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 485
    invoke-direct {p0, p1, p2}, Lmiui/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 486
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 489
    const/4 v4, 0x0

    .line 490
    .local v4, fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v7, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 491
    .local v7, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 492
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 493
    .local v6, lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    sub-int v2, v8, v11

    .line 494
    .local v2, dRow:I
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v11

    sub-int v1, v8, v11

    .line 496
    .local v1, dColumn:I
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    .line 497
    .local v5, fillInRow:I
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    .line 499
    .local v3, fillInColumn:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 500
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    if-lez v2, :cond_6

    move v8, v9

    :goto_0
    add-int v5, v11, v8

    .line 503
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_2

    .line 504
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    if-lez v1, :cond_1

    move v10, v9

    :cond_1
    add-int v3, v8, v10

    .line 507
    :cond_2
    invoke-static {v5, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .line 510
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v10

    aget-object v8, v8, v10

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    aget-boolean v8, v8, v10

    if-nez v8, :cond_4

    .line 512
    invoke-direct {p0, v4}, Lmiui/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 514
    :cond_4
    invoke-direct {p0, v0}, Lmiui/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 515
    iget-boolean v8, p0, Lmiui/widget/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_5

    .line 516
    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, Lmiui/widget/LockPatternView;->performHapticFeedback(II)Z

    .line 522
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v4           #fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_5
    :goto_1
    return-object v0

    .restart local v0       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v1       #dColumn:I
    .restart local v2       #dRow:I
    .restart local v3       #fillInColumn:I
    .restart local v4       #fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v5       #fillInRow:I
    .restart local v6       #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v7       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_6
    move v8, v10

    .line 500
    goto :goto_0

    .line 522
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v4           #fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 24
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    move-object/from16 v20, v0

    sget-object v21, Lmiui/widget/LockPatternView$DisplayMode;->Wrong:Lmiui/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/4 v9, 0x1

    .line 972
    .local v9, green:Z
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    .line 973
    .local v8, endRow:I
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v13

    .line 974
    .local v13, startRow:I
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v7

    .line 975
    .local v7, endColumn:I
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v12

    .line 978
    .local v12, startColumn:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v10, v20, 0x2

    .line 979
    .local v10, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v11, v20, 0x2

    .line 984
    .local v11, offsetY:I
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 985
    .local v4, arrow:Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    .line 986
    .local v6, cellWidth:I
    move-object/from16 v0, p0

    iget v5, v0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    .line 989
    .local v5, cellHeight:I
    sub-int v20, v8, v13

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-int v22, v7, v12

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v16, v0

    .line 991
    .local v16, theta:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42b4

    add-float v3, v20, v21

    .line 993
    .local v3, angle:F
    sub-int v20, v8, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    .line 994
    .local v18, y:F
    sub-int v20, v7, v12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v17, v0

    .line 995
    .local v17, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-float v22, v17, v17

    mul-float v23, v18, v18

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v19, v20, v21

    .line 998
    .local v19, yTranslate:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f80

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 999
    .local v14, sx:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f80

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 1000
    .local v15, sy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    add-float v21, v21, p2

    int-to-float v0, v11

    move/from16 v22, v0

    add-float v22, v22, p3

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    int-to-float v0, v6

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    int-to-float v0, v5

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    sub-int v21, v6, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1007
    return-void

    .line 970
    .end local v3           #angle:F
    .end local v4           #arrow:Landroid/graphics/Bitmap;
    .end local v5           #cellHeight:I
    .end local v6           #cellWidth:I
    .end local v7           #endColumn:I
    .end local v8           #endRow:I
    .end local v9           #green:Z
    .end local v10           #offsetX:I
    .end local v11           #offsetY:I
    .end local v12           #startColumn:I
    .end local v13           #startRow:I
    .end local v14           #sx:F
    .end local v15           #sy:F
    .end local v16           #theta:F
    .end local v17           #x:F
    .end local v18           #y:F
    .end local v19           #yTranslate:F
    :cond_0
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 984
    .restart local v7       #endColumn:I
    .restart local v8       #endRow:I
    .restart local v9       #green:Z
    .restart local v10       #offsetX:I
    .restart local v11       #offsetY:I
    .restart local v12       #startColumn:I
    .restart local v13       #startRow:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 13
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "partOfPattern"

    .prologue
    .line 1019
    if-eqz p4, :cond_0

    iget-boolean v10, p0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v11, Lmiui/widget/LockPatternView$DisplayMode;->Wrong:Lmiui/widget/LockPatternView$DisplayMode;

    if-eq v10, v11, :cond_3

    .line 1021
    :cond_0
    iget-object v4, p0, Lmiui/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 1022
    .local v4, outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/LockPatternView;->mBitmapBtnDefaultWithBackground:Landroid/graphics/Bitmap;

    .line 1040
    .local v1, innerCircle:Landroid/graphics/Bitmap;
    :goto_0
    iget v9, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    .line 1041
    .local v9, width:I
    iget v0, p0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    .line 1043
    .local v0, height:I
    iget v6, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    .line 1044
    .local v6, squareWidth:F
    iget v5, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    .line 1046
    .local v5, squareHeight:F
    int-to-float v10, v9

    sub-float v10, v6, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    float-to-int v2, v10

    .line 1047
    .local v2, offsetX:I
    int-to-float v10, v0

    sub-float v10, v5, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    float-to-int v3, v10

    .line 1050
    .local v3, offsetY:I
    iget v10, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    iget v11, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1051
    .local v7, sx:F
    iget v10, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    iget v11, p0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1053
    .local v8, sy:F
    iget-object v10, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v11, p2, v2

    int-to-float v11, v11

    add-int v12, p3, v3

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1054
    iget-object v10, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1055
    iget-object v10, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1056
    iget-object v10, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1058
    if-eqz v4, :cond_1

    .line 1059
    iget-object v10, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1061
    :cond_1
    if-eqz v1, :cond_2

    .line 1062
    iget-object v10, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1064
    :cond_2
    return-void

    .line 1023
    .end local v0           #height:I
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v2           #offsetX:I
    .end local v3           #offsetY:I
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    .end local v5           #squareHeight:F
    .end local v6           #squareWidth:F
    .end local v7           #sx:F
    .end local v8           #sy:F
    .end local v9           #width:I
    :cond_3
    iget-boolean v10, p0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v10, :cond_4

    .line 1025
    iget-object v4, p0, Lmiui/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 1026
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1027
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v10, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v11, Lmiui/widget/LockPatternView$DisplayMode;->Wrong:Lmiui/widget/LockPatternView$DisplayMode;

    if-ne v10, v11, :cond_5

    .line 1029
    iget-object v4, p0, Lmiui/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 1030
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 1031
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v10, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v11, Lmiui/widget/LockPatternView$DisplayMode;->Correct:Lmiui/widget/LockPatternView$DisplayMode;

    if-eq v10, v11, :cond_6

    iget-object v10, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v11, Lmiui/widget/LockPatternView$DisplayMode;->Animate:Lmiui/widget/LockPatternView$DisplayMode;

    if-ne v10, v11, :cond_7

    .line 1034
    :cond_6
    iget-object v4, p0, Lmiui/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 1035
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 1037
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_7
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown display mode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resId"

    .prologue
    .line 256
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .parameter "column"

    .prologue
    .line 824
    iget v0, p0, Lmiui/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .parameter "row"

    .prologue
    .line 828
    iget v0, p0, Lmiui/widget/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .parameter "x"

    .prologue
    .line 576
    iget v4, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    .line 577
    .local v4, squareWidth:F
    iget v5, p0, Lmiui/widget/LockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 579
    .local v1, hitSize:F
    iget v5, p0, Lmiui/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 580
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 582
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 583
    .local v0, hitLeft:F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 587
    .end local v0           #hitLeft:F
    .end local v2           #i:I
    :goto_1
    return v2

    .line 580
    .restart local v0       #hitLeft:F
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    .end local v0           #hitLeft:F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getRowHit(F)I
    .locals 8
    .parameter "y"

    .prologue
    .line 556
    iget v4, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    .line 557
    .local v4, squareHeight:F
    iget v5, p0, Lmiui/widget/LockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 559
    .local v0, hitSize:F
    iget v5, p0, Lmiui/widget/LockPatternView;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 560
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 562
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 563
    .local v1, hitTop:F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 567
    .end local v1           #hitTop:F
    .end local v2           #i:I
    :goto_1
    return v2

    .line 560
    .restart local v1       #hitTop:F
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    .end local v1           #hitTop:F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/high16 v8, 0x4000

    .line 791
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->resetPattern()V

    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 793
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 794
    .local v6, y:F
    invoke-direct {p0, v5, v6}, Lmiui/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .line 795
    .local v1, hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v1, :cond_1

    .line 796
    const/4 v7, 0x1

    iput-boolean v7, p0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    .line 797
    sget-object v7, Lmiui/widget/LockPatternView$DisplayMode;->Correct:Lmiui/widget/LockPatternView$DisplayMode;

    iput-object v7, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    .line 798
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->notifyPatternStarted()V

    .line 803
    :goto_0
    if-eqz v1, :cond_0

    .line 804
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v7

    invoke-direct {p0, v7}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 805
    .local v2, startX:F
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    invoke-direct {p0, v7}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 807
    .local v3, startY:F
    iget v7, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .line 808
    .local v4, widthOffset:F
    iget v7, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .line 810
    .local v0, heightOffset:F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lmiui/widget/LockPatternView;->invalidate(IIII)V

    .line 813
    .end local v0           #heightOffset:F
    .end local v2           #startX:F
    .end local v3           #startY:F
    .end local v4           #widthOffset:F
    :cond_0
    iput v5, p0, Lmiui/widget/LockPatternView;->mInProgressX:F

    .line 814
    iput v6, p0, Lmiui/widget/LockPatternView;->mInProgressY:F

    .line 821
    return-void

    .line 800
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    .line 801
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 31
    .parameter "event"

    .prologue
    .line 645
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 646
    .local v8, historySize:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    add-int/lit8 v27, v8, 0x1

    move/from16 v0, v27

    if-ge v10, v0, :cond_d

    .line 647
    if-ge v10, v8, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v25

    .line 648
    .local v25, x:F
    :goto_1
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v26

    .line 649
    .local v26, y:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 650
    .local v18, patternSizePreHitDetect:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lmiui/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v9

    .line 651
    .local v9, hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 652
    .local v17, patternSize:I
    if-eqz v9, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 653
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    .line 654
    invoke-direct/range {p0 .. p0}, Lmiui/widget/LockPatternView;->notifyPatternStarted()V

    .line 657
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mInProgressX:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 658
    .local v5, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mInProgressY:F

    move/from16 v27, v0

    sub-float v27, v26, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 659
    .local v6, dy:F
    add-float v27, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v28, v0

    const v29, 0x3c23d70a

    mul-float v28, v28, v29

    cmpl-float v27, v27, v28

    if-lez v27, :cond_2

    .line 660
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/LockPatternView;->mInProgressX:F

    .line 661
    .local v14, oldX:F
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/widget/LockPatternView;->mInProgressY:F

    .line 663
    .local v15, oldY:F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/LockPatternView;->mInProgressX:F

    .line 664
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/LockPatternView;->mInProgressY:F

    .line 666
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    if-lez v17, :cond_c

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 668
    .local v16, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mDiameterFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x3f00

    mul-float v19, v27, v28

    .line 670
    .local v19, radius:F
    add-int/lit8 v27, v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 672
    .local v12, lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 673
    .local v21, startX:F
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 680
    .local v22, startY:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 682
    .local v11, invalidateRect:Landroid/graphics/Rect;
    cmpg-float v27, v21, v25

    if-gez v27, :cond_5

    .line 683
    move/from16 v13, v21

    .line 684
    .local v13, left:F
    move/from16 v20, v25

    .line 690
    .local v20, right:F
    :goto_3
    cmpg-float v27, v22, v26

    if-gez v27, :cond_6

    .line 691
    move/from16 v23, v22

    .line 692
    .local v23, top:F
    move/from16 v4, v26

    .line 699
    .local v4, bottom:F
    :goto_4
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 702
    cmpg-float v27, v21, v14

    if-gez v27, :cond_7

    .line 703
    move/from16 v13, v21

    .line 704
    move/from16 v20, v14

    .line 710
    :goto_5
    cmpg-float v27, v22, v15

    if-gez v27, :cond_8

    .line 711
    move/from16 v23, v22

    .line 712
    move v4, v15

    .line 719
    :goto_6
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 723
    if-eqz v9, :cond_1

    .line 724
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 725
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 727
    const/16 v27, 0x2

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    .line 729
    add-int/lit8 v27, v17, -0x1

    sub-int v28, v17, v18

    sub-int v27, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 730
    .restart local v9       #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 731
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 733
    cmpg-float v27, v21, v14

    if-gez v27, :cond_9

    .line 734
    move/from16 v13, v21

    .line 735
    move/from16 v20, v14

    .line 741
    :goto_7
    cmpg-float v27, v22, v15

    if-gez v27, :cond_a

    .line 742
    move/from16 v23, v22

    .line 743
    move v4, v15

    .line 753
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v24, v27, v28

    .line 754
    .local v24, widthOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v7, v27, v28

    .line 756
    .local v7, heightOffset:F
    sub-float v27, v13, v24

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v7

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 761
    .end local v7           #heightOffset:F
    .end local v24           #widthOffset:F
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 646
    .end local v4           #bottom:F
    .end local v11           #invalidateRect:Landroid/graphics/Rect;
    .end local v12           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v13           #left:F
    .end local v14           #oldX:F
    .end local v15           #oldY:F
    .end local v16           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v19           #radius:F
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    :cond_2
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 647
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v9           #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v17           #patternSize:I
    .end local v18           #patternSizePreHitDetect:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    goto/16 :goto_1

    .line 648
    .restart local v25       #x:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    goto/16 :goto_2

    .line 686
    .restart local v5       #dx:F
    .restart local v6       #dy:F
    .restart local v9       #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v11       #invalidateRect:Landroid/graphics/Rect;
    .restart local v12       #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v14       #oldX:F
    .restart local v15       #oldY:F
    .restart local v16       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .restart local v17       #patternSize:I
    .restart local v18       #patternSizePreHitDetect:I
    .restart local v19       #radius:F
    .restart local v21       #startX:F
    .restart local v22       #startY:F
    .restart local v26       #y:F
    :cond_5
    move/from16 v13, v25

    .line 687
    .restart local v13       #left:F
    move/from16 v20, v21

    .restart local v20       #right:F
    goto/16 :goto_3

    .line 694
    :cond_6
    move/from16 v23, v26

    .line 695
    .restart local v23       #top:F
    move/from16 v4, v22

    .restart local v4       #bottom:F
    goto/16 :goto_4

    .line 706
    :cond_7
    move v13, v14

    .line 707
    move/from16 v20, v21

    goto/16 :goto_5

    .line 714
    :cond_8
    move/from16 v23, v15

    .line 715
    move/from16 v4, v22

    goto/16 :goto_6

    .line 737
    :cond_9
    move v13, v14

    .line 738
    move/from16 v20, v21

    goto :goto_7

    .line 745
    :cond_a
    move/from16 v23, v15

    .line 746
    move/from16 v4, v22

    goto :goto_8

    .line 749
    :cond_b
    move/from16 v20, v21

    move/from16 v13, v21

    .line 750
    move/from16 v4, v22

    move/from16 v23, v22

    goto :goto_8

    .line 763
    .end local v4           #bottom:F
    .end local v11           #invalidateRect:Landroid/graphics/Rect;
    .end local v12           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v13           #left:F
    .end local v16           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v19           #radius:F
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/LockPatternView;->invalidate()V

    goto :goto_9

    .line 767
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v9           #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14           #oldX:F
    .end local v15           #oldY:F
    .end local v17           #patternSize:I
    .end local v18           #patternSizePreHitDetect:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_d
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 777
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    .line 779
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->notifyPatternDetected()V

    .line 780
    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->invalidate()V

    .line 788
    :cond_0
    return-void
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 186
    sget-object v8, Lmiui/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 188
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, aspect:Ljava/lang/String;
    const-string v8, "square"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 190
    const/4 v8, 0x0

    iput v8, p0, Lmiui/widget/LockPatternView;->mAspect:I

    .line 199
    :goto_0
    iget-object v8, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v9, 0xa

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v8, p0, Lmiui/widget/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    const/16 v9, 0xd

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    const/16 v8, 0x9

    const v9, 0x3dcccccd

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lmiui/widget/LockPatternView;->mDiameterFactor:F

    .line 202
    const/16 v8, 0xb

    const/16 v9, 0x80

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, p0, Lmiui/widget/LockPatternView;->mStrokeAlpha:I

    .line 204
    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-direct {p0, v8}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapBtnDefaultWithBackground:Landroid/graphics/Bitmap;

    .line 205
    const/4 v8, 0x4

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-direct {p0, v8}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 206
    const/4 v8, 0x5

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-direct {p0, v8}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 207
    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-direct {p0, v8}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 208
    const/4 v8, 0x7

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-direct {p0, v8}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 209
    const/16 v8, 0x8

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-direct {p0, v8}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 211
    const/16 v8, 0xc

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 212
    .local v5, btnRedResId:I
    const/4 v8, -0x1

    if-ne v8, v5, :cond_4

    .line 213
    iget-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    iput-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    .line 218
    :goto_1
    const/4 v8, 0x0

    const v9, 0x602007c

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-direct {p0, v8}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 219
    const/4 v8, 0x1

    const v9, 0x602007d

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-direct {p0, v8}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 222
    const/4 v8, 0x5

    new-array v4, v8, [Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    iget-object v9, p0, Lmiui/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v9, v4, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lmiui/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v9, v4, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lmiui/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v9, v4, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lmiui/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v9, v4, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lmiui/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v9, v4, v8

    .line 225
    .local v4, bitmaps:[Landroid/graphics/Bitmap;
    move-object v1, v4

    .local v1, arr$:[Landroid/graphics/Bitmap;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_5

    aget-object v3, v1, v6

    .line 226
    .local v3, bitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 227
    iget v8, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    .line 228
    iget v8, p0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    .line 225
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 191
    .end local v1           #arr$:[Landroid/graphics/Bitmap;
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #bitmaps:[Landroid/graphics/Bitmap;
    .end local v5           #btnRedResId:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_1
    const-string v8, "lock_width"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 192
    const/4 v8, 0x1

    iput v8, p0, Lmiui/widget/LockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 193
    :cond_2
    const-string v8, "lock_height"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 194
    const/4 v8, 0x2

    iput v8, p0, Lmiui/widget/LockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 196
    :cond_3
    const/4 v8, 0x0

    iput v8, p0, Lmiui/widget/LockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 215
    .restart local v5       #btnRedResId:I
    :cond_4
    invoke-direct {p0, v5}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 231
    .restart local v1       #arr$:[Landroid/graphics/Bitmap;
    .restart local v4       #bitmaps:[Landroid/graphics/Bitmap;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_5
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lmiui/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 349
    :cond_0
    const v0, 0x60c0016

    invoke-direct {p0, v0}, Lmiui/widget/LockPatternView;->sendAccessEvent(I)V

    .line 350
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lmiui/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 370
    :cond_0
    const v0, 0x60c0017

    invoke-direct {p0, v0}, Lmiui/widget/LockPatternView;->sendAccessEvent(I)V

    .line 371
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lmiui/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 363
    :cond_0
    const v0, 0x60c0018

    invoke-direct {p0, v0}, Lmiui/widget/LockPatternView;->sendAccessEvent(I)V

    .line 364
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lmiui/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 356
    :cond_0
    const v0, 0x60c0019

    invoke-direct {p0, v0}, Lmiui/widget/LockPatternView;->sendAccessEvent(I)V

    .line 357
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 386
    sget-object v0, Lmiui/widget/LockPatternView$DisplayMode;->Correct:Lmiui/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    .line 387
    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->invalidate()V

    .line 388
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 429
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 438
    move v0, v1

    .line 440
    :goto_0
    return v0

    .line 431
    :sswitch_0
    move v0, p2

    .line 432
    goto :goto_0

    .line 434
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 435
    goto :goto_0

    .line 429
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 770
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 771
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/LockPatternView;->sendAccessibilityEvent(I)V

    .line 772
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 773
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->resetPattern()V

    .line 378
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/LockPatternView;->mInputEnabled:Z

    .line 407
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/LockPatternView;->mInputEnabled:Z

    .line 414
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lmiui/widget/LockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .parameter "canvas"

    .prologue
    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    .line 834
    .local v28, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 835
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 837
    .local v15, drawLookup:[[Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v4, Lmiui/widget/LockPatternView$DisplayMode;->Animate:Lmiui/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_2

    .line 842
    add-int/lit8 v3, v12, 0x1

    mul-int/lit16 v0, v3, 0x2bc

    move/from16 v25, v0

    .line 843
    .local v25, oneCycle:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/widget/LockPatternView;->mAnimatingPeriodStart:J

    move-wide/from16 v34, v0

    sub-long v3, v3, v34

    long-to-int v3, v3

    rem-int v31, v3, v25

    .line 845
    .local v31, spotInCycle:I
    move/from16 v0, v31

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v23, v0

    .line 847
    .local v23, numCircles:I
    invoke-direct/range {p0 .. p0}, Lmiui/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 848
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 849
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 850
    .local v7, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v3, v15, v3

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    const/16 v34, 0x1

    aput-boolean v34, v3, v4

    .line 848
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 855
    .end local v7           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    if-lez v23, :cond_3

    move/from16 v0, v23

    if-ge v0, v12, :cond_3

    const/16 v21, 0x1

    .line 858
    .local v21, needToUpdateInProgressPoint:Z
    :goto_1
    if-eqz v21, :cond_1

    .line 859
    move/from16 v0, v31

    rem-int/lit16 v3, v0, 0x2bc

    int-to-float v3, v3

    const/high16 v4, 0x442f

    div-float v29, v3, v4

    .line 863
    .local v29, percentageOfNextCircle:F
    add-int/lit8 v3, v23, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 864
    .local v13, currentCell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 865
    .local v10, centerX:F
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 867
    .local v11, centerY:F
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 868
    .local v22, nextCell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v3

    sub-float/2addr v3, v10

    mul-float v17, v29, v3

    .line 870
    .local v17, dx:F
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    sub-float/2addr v3, v11

    mul-float v18, v29, v3

    .line 872
    .local v18, dy:F
    add-float v3, v10, v17

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/widget/LockPatternView;->mInProgressX:F

    .line 873
    add-float v3, v11, v18

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/widget/LockPatternView;->mInProgressY:F

    .line 876
    .end local v10           #centerX:F
    .end local v11           #centerY:F
    .end local v13           #currentCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v17           #dx:F
    .end local v18           #dy:F
    .end local v22           #nextCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v29           #percentageOfNextCircle:F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/LockPatternView;->invalidate()V

    .line 879
    .end local v19           #i:I
    .end local v21           #needToUpdateInProgressPoint:Z
    .end local v23           #numCircles:I
    .end local v25           #oneCycle:I
    .end local v31           #spotInCycle:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v33, v0

    .line 880
    .local v33, squareWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    move/from16 v32, v0

    .line 882
    .local v32, squareHeight:F
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/widget/LockPatternView;->mDiameterFactor:F

    mul-float v3, v3, v33

    const/high16 v4, 0x3f00

    mul-float v30, v3, v4

    .line 883
    .local v30, radius:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 884
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 886
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 887
    .local v14, currentPath:Landroid/graphics/Path;
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 890
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mPaddingTop:I

    move/from16 v27, v0

    .line 891
    .local v27, paddingTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mPaddingLeft:I

    move/from16 v26, v0

    .line 893
    .local v26, paddingLeft:I
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_2
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ge v0, v3, :cond_5

    .line 894
    move/from16 v0, v27

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .line 896
    .local v6, topY:F
    const/16 v20, 0x0

    .local v20, j:I
    :goto_3
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    .line 897
    move/from16 v0, v26

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .line 898
    .local v5, leftX:F
    float-to-int v3, v5

    float-to-int v4, v6

    aget-object v34, v15, v19

    aget-boolean v34, v34, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v3, v4, v2}, Lmiui/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    .line 896
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 855
    .end local v5           #leftX:F
    .end local v6           #topY:F
    .end local v14           #currentPath:Landroid/graphics/Path;
    .end local v20           #j:I
    .end local v26           #paddingLeft:I
    .end local v27           #paddingTop:I
    .end local v30           #radius:F
    .end local v32           #squareHeight:F
    .end local v33           #squareWidth:F
    .restart local v23       #numCircles:I
    .restart local v25       #oneCycle:I
    .restart local v31       #spotInCycle:I
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 893
    .end local v23           #numCircles:I
    .end local v25           #oneCycle:I
    .end local v31           #spotInCycle:I
    .restart local v6       #topY:F
    .restart local v14       #currentPath:Landroid/graphics/Path;
    .restart local v20       #j:I
    .restart local v26       #paddingLeft:I
    .restart local v27       #paddingTop:I
    .restart local v30       #radius:F
    .restart local v32       #squareHeight:F
    .restart local v33       #squareWidth:F
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 906
    .end local v6           #topY:F
    .end local v20           #j:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v4, Lmiui/widget/LockPatternView$DisplayMode;->Wrong:Lmiui/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_c

    :cond_6
    const/16 v16, 0x1

    .line 910
    .local v16, drawPath:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    const/16 v24, 0x1

    .line 911
    .local v24, oldFlag:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 912
    if-eqz v16, :cond_7

    .line 913
    const/16 v19, 0x0

    :goto_6
    add-int/lit8 v3, v12, -0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_7

    .line 914
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 915
    .restart local v7       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 920
    .local v8, next:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v3, v15, v3

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    aget-boolean v3, v3, v4

    if-nez v3, :cond_e

    .line 931
    .end local v7           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v8           #next:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_7
    if-eqz v16, :cond_b

    .line 932
    const/4 v9, 0x0

    .line 933
    .local v9, anyCircles:Z
    const/16 v19, 0x0

    :goto_7
    move/from16 v0, v19

    if-ge v0, v12, :cond_8

    .line 934
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 939
    .restart local v7       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v3, v15, v3

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    aget-boolean v3, v3, v4

    if-nez v3, :cond_f

    .line 954
    .end local v7           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v4, Lmiui/widget/LockPatternView$DisplayMode;->Animate:Lmiui/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_a

    :cond_9
    if-eqz v9, :cond_a

    .line 956
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/widget/LockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 958
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v4, Lmiui/widget/LockPatternView$DisplayMode;->Wrong:Lmiui/widget/LockPatternView$DisplayMode;

    if-eq v3, v4, :cond_11

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 966
    .end local v9           #anyCircles:Z
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 967
    return-void

    .line 906
    .end local v16           #drawPath:Z
    .end local v24           #oldFlag:Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 910
    .restart local v16       #drawPath:Z
    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 924
    .restart local v7       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v8       #next:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v24       #oldFlag:Z
    :cond_e
    move/from16 v0, v26

    int-to-float v3, v0

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .line 925
    .restart local v5       #leftX:F
    move/from16 v0, v27

    int-to-float v3, v0

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .restart local v6       #topY:F
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 927
    invoke-direct/range {v3 .. v8}, Lmiui/widget/LockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 913
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    .line 942
    .end local v5           #leftX:F
    .end local v6           #topY:F
    .end local v8           #next:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v9       #anyCircles:Z
    :cond_f
    const/4 v9, 0x1

    .line 944
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 945
    .restart local v10       #centerX:F
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 946
    .restart local v11       #centerY:F
    if-nez v19, :cond_10

    .line 947
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 933
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_7

    .line 949
    :cond_10
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_9

    .line 961
    .end local v7           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v10           #centerX:F
    .end local v11           #centerY:F
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_8
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 592
    iget-object v1, p0, Lmiui/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 594
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 605
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lmiui/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 606
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 608
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 596
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 599
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 602
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 457
    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 458
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 459
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lmiui/widget/LockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 460
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lmiui/widget/LockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 462
    .local v2, viewHeight:I
    iget v4, p0, Lmiui/widget/LockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    .line 474
    :goto_0
    invoke-virtual {p0, v3, v2}, Lmiui/widget/LockPatternView;->setMeasuredDimension(II)V

    .line 475
    return-void

    .line 464
    :pswitch_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    .line 465
    goto :goto_0

    .line 467
    :pswitch_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 468
    goto :goto_0

    .line 470
    :pswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1077
    move-object v0, p1

    check-cast v0, Lmiui/widget/LockPatternView$SavedState;

    .line 1078
    .local v0, ss:Lmiui/widget/LockPatternView$SavedState;
    invoke-virtual {v0}, Lmiui/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1079
    sget-object v1, Lmiui/widget/LockPatternView$DisplayMode;->Correct:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lmiui/widget/LockPatternView;->setPattern(Lmiui/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1082
    invoke-static {}, Lmiui/widget/LockPatternView$DisplayMode;->values()[Lmiui/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lmiui/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    .line 1083
    invoke-virtual {v0}, Lmiui/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/LockPatternView;->mInputEnabled:Z

    .line 1084
    invoke-virtual {v0}, Lmiui/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    .line 1085
    invoke-virtual {v0}, Lmiui/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 1087
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/widget/LockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 1088
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1068
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1069
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lmiui/widget/LockPatternView$SavedState;

    iget-object v2, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lmiui/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lmiui/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lmiui/widget/LockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lmiui/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLmiui/widget/LockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v4, 0x4040

    .line 418
    iget v2, p0, Lmiui/widget/LockPatternView;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lmiui/widget/LockPatternView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 419
    .local v1, width:I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    .line 421
    iget v2, p0, Lmiui/widget/LockPatternView;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lmiui/widget/LockPatternView;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 422
    .local v0, height:I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    .line 423
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 613
    iget-boolean v2, p0, Lmiui/widget/LockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 639
    :goto_0
    return v0

    .line 617
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 639
    goto :goto_0

    .line 619
    :pswitch_0
    invoke-direct {p0, p1}, Lmiui/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 622
    :pswitch_1
    invoke-direct {p0, p1}, Lmiui/widget/LockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 625
    :pswitch_2
    invoke-direct {p0, p1}, Lmiui/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 628
    :pswitch_3
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->resetPattern()V

    .line 629
    iput-boolean v1, p0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    .line 630
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->notifyPatternCleared()V

    goto :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lmiui/widget/LockPatternView$DisplayMode;)V
    .locals 3
    .parameter "displayMode"

    .prologue
    .line 330
    iput-object p1, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    .line 331
    sget-object v1, Lmiui/widget/LockPatternView$DisplayMode;->Animate:Lmiui/widget/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_1

    .line 332
    iget-object v1, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 333
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/widget/LockPatternView;->mAnimatingPeriodStart:J

    .line 337
    iget-object v1, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 338
    .local v0, first:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lmiui/widget/LockPatternView;->mInProgressX:F

    .line 339
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lmiui/widget/LockPatternView;->mInProgressY:F

    .line 340
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 342
    .end local v0           #first:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->invalidate()V

    .line 343
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .parameter "inStealthMode"

    .prologue
    .line 284
    iput-boolean p1, p0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    .line 285
    return-void
.end method

.method public setOnPatternListener(Lmiui/widget/LockPatternView$OnPatternListener;)V
    .locals 0
    .parameter "onPatternListener"

    .prologue
    .line 303
    iput-object p1, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    .line 304
    return-void
.end method

.method public setPattern(Lmiui/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .parameter "displayMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p2, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 314
    iget-object v2, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 315
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 316
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 317
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 320
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/widget/LockPatternView;->setDisplayMode(Lmiui/widget/LockPatternView$DisplayMode;)V

    .line 321
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 294
    iput-boolean p1, p0, Lmiui/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 295
    return-void
.end method
