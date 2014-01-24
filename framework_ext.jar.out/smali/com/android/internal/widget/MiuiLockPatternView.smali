.class public Lcom/android/internal/widget/MiuiLockPatternView;
.super Landroid/view/View;
.source "MiuiLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MiuiLockPatternView$1;,
        Lcom/android/internal/widget/MiuiLockPatternView$SavedState;
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

.field private mBitmapBtnError:Landroid/graphics/Bitmap;

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

.field private mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPathPaintColor:I

.field private mPathPaintErrorColor:I

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

.field private mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private final mStrokeAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MiuiLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mDrawingProfilingStarted:Z

    .line 52
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 77
    const/4 v7, 0x3

    const/4 v8, 0x3

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 84
    const/high16 v7, -0x4080

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    .line 85
    const/high16 v7, -0x4080

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    .line 89
    sget-object v7, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 90
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 91
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 92
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mEnableHapticFeedback:Z

    .line 93
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 95
    const v7, 0x3dcccccd

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mDiameterFactor:F

    .line 96
    const/16 v7, 0x80

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mStrokeAlpha:I

    .line 97
    const v7, 0x3f19999a

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mHitFactor:F

    .line 111
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 112
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 118
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 119
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 128
    sget-object v7, Lcom/miui/internal/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, aspect:Ljava/lang/String;
    const-string v7, "square"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 133
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    .line 142
    :goto_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/MiuiLockPatternView;->setClickable(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x6070065

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaintColor:I

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x6070066

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaintErrorColor:I

    .line 146
    iget-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    iget-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 148
    iget-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    iget-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 151
    iget-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 154
    const v7, 0x602026a

    invoke-direct {p0, v7}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnError:Landroid/graphics/Bitmap;

    .line 155
    const v7, 0x602003e

    invoke-direct {p0, v7}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 156
    const v7, 0x602007e

    invoke-direct {p0, v7}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 157
    const v7, 0x602007f

    invoke-direct {p0, v7}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 158
    const v7, 0x6020080

    invoke-direct {p0, v7}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 160
    const v7, 0x602007c

    invoke-direct {p0, v7}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 161
    const v7, 0x602007d

    invoke-direct {p0, v7}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 164
    const/4 v7, 0x5

    new-array v4, v7, [Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnError:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    .line 167
    .local v4, bitmaps:[Landroid/graphics/Bitmap;
    move-object v1, v4

    .local v1, arr$:[Landroid/graphics/Bitmap;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v3, v1, v5

    .line 168
    .local v3, bitmap:Landroid/graphics/Bitmap;
    iget v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    .line 169
    iget v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    .line 167
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 134
    .end local v1           #arr$:[Landroid/graphics/Bitmap;
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #bitmaps:[Landroid/graphics/Bitmap;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_0
    const-string v7, "lock_width"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 135
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 136
    :cond_1
    const-string v7, "lock_height"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 137
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 139
    :cond_2
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 172
    .restart local v1       #arr$:[Landroid/graphics/Bitmap;
    .restart local v4       #bitmaps:[Landroid/graphics/Bitmap;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_3
    return-void
.end method

.method private addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3
    .parameter "newCell"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyCellAdded()V

    .line 444
    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 449
    invoke-direct {p0, p2}, Lcom/android/internal/widget/MiuiLockPatternView;->getRowHit(F)I

    move-result v1

    .line 450
    .local v1, rowHit:I
    if-gez v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-object v2

    .line 453
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->getColumnHit(F)I

    move-result v0

    .line 454
    .local v0, columnHit:I
    if-ltz v0, :cond_0

    .line 458
    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 461
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 309
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 310
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 311
    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
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

    .line 400
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/MiuiLockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 401
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 404
    const/4 v4, 0x0

    .line 405
    .local v4, fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 406
    .local v7, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 407
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 408
    .local v6, lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int v2, v8, v11

    .line 409
    .local v2, dRow:I
    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int v1, v8, v11

    .line 411
    .local v1, dColumn:I
    iget v5, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 412
    .local v5, fillInRow:I
    iget v3, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 414
    .local v3, fillInColumn:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 415
    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-lez v2, :cond_6

    move v8, v9

    :goto_0
    add-int v5, v11, v8

    .line 418
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_2

    .line 419
    iget v8, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-lez v1, :cond_1

    move v10, v9

    :cond_1
    add-int v3, v8, v10

    .line 422
    :cond_2
    invoke-static {v5, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .line 425
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    iget v10, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v8, v8, v10

    iget v10, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v8, v8, v10

    if-nez v8, :cond_4

    .line 427
    invoke-direct {p0, v4}, Lcom/android/internal/widget/MiuiLockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 429
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 430
    iget-boolean v8, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_5

    .line 431
    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, Lcom/android/internal/widget/MiuiLockPatternView;->performHapticFeedback(II)Z

    .line 437
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

    .line 415
    goto :goto_0

    .line 437
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
    .locals 21
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/4 v9, 0x1

    .line 882
    .local v9, green:Z
    :goto_0
    move-object/from16 v0, p5

    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 883
    .local v8, endRow:I
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 884
    .local v13, startRow:I
    move-object/from16 v0, p5

    iget v7, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 885
    .local v7, endColumn:I
    move-object/from16 v0, p4

    iget v12, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 888
    .local v12, startColumn:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v10, v17, 0x2

    .line 889
    .local v10, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v11, v17, 0x2

    .line 894
    .local v11, offsetY:I
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 895
    .local v4, arrow:Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    .line 896
    .local v6, cellWidth:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    .line 899
    .local v5, cellHeight:I
    sub-int v17, v8, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-int v19, v7, v12

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v16, v0

    .line 901
    .local v16, theta:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42b4

    add-float v3, v17, v18

    .line 904
    .local v3, angle:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 905
    .local v14, sx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 906
    .local v15, sy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    add-float v18, v18, p2

    int-to-float v0, v11

    move/from16 v19, v0

    add-float v19, v19, p3

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    int-to-float v0, v5

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    sub-int v18, v6, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 913
    return-void

    .line 880
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
    :cond_0
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 894
    .restart local v7       #endColumn:I
    .restart local v8       #endRow:I
    .restart local v9       #green:Z
    .restart local v10       #offsetX:I
    .restart local v11       #offsetY:I
    .restart local v12       #startColumn:I
    .restart local v13       #startRow:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 13
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "partOfPattern"

    .prologue
    .line 925
    if-eqz p4, :cond_0

    iget-boolean v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v11, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v10, v11, :cond_2

    .line 927
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 928
    .local v4, outerCircle:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 946
    .local v1, innerCircle:Landroid/graphics/Bitmap;
    :goto_0
    iget v9, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    .line 947
    .local v9, width:I
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    .line 949
    .local v0, height:I
    iget v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 950
    .local v6, squareWidth:F
    iget v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 952
    .local v5, squareHeight:F
    int-to-float v10, v9

    sub-float v10, v6, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    float-to-int v2, v10

    .line 953
    .local v2, offsetX:I
    int-to-float v10, v0

    sub-float v10, v5, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    float-to-int v3, v10

    .line 956
    .local v3, offsetY:I
    iget v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    iget v11, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 957
    .local v7, sx:F
    iget v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    iget v11, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 959
    .local v8, sy:F
    iget-object v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v11, p2, v2

    int-to-float v11, v11

    add-int v12, p3, v3

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 960
    iget-object v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 961
    iget-object v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 962
    iget-object v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 964
    iget-object v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 965
    if-eqz v1, :cond_1

    .line 966
    iget-object v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 968
    :cond_1
    return-void

    .line 929
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
    :cond_2
    iget-boolean v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    if-eqz v10, :cond_3

    .line 931
    iget-object v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 932
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 933
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v11, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v10, v11, :cond_4

    .line 935
    iget-object v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 936
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnError:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 937
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v11, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v11, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v10, v11, :cond_6

    .line 940
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 941
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 943
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_6
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown display mode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

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
    .line 175
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .parameter "column"

    .prologue
    .line 739
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .parameter "row"

    .prologue
    .line 743
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .parameter "x"

    .prologue
    .line 491
    iget v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 492
    .local v4, squareWidth:F
    iget v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 494
    .local v1, hitSize:F
    iget v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 495
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 497
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 498
    .local v0, hitLeft:F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 502
    .end local v0           #hitLeft:F
    .end local v2           #i:I
    :goto_1
    return v2

    .line 495
    .restart local v0       #hitLeft:F
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    .end local v0           #hitLeft:F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getRowHit(F)I
    .locals 8
    .parameter "y"

    .prologue
    .line 471
    iget v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 472
    .local v4, squareHeight:F
    iget v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 474
    .local v0, hitSize:F
    iget v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 475
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 477
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 478
    .local v1, hitTop:F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 482
    .end local v1           #hitTop:F
    .end local v2           #i:I
    :goto_1
    return v2

    .line 475
    .restart local v1       #hitTop:F
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
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

    .line 706
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->resetPattern()V

    .line 707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 708
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 709
    .local v6, y:F
    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/MiuiLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .line 710
    .local v1, hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v1, :cond_1

    .line 711
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 712
    sget-object v7, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 713
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternStarted()V

    .line 718
    :goto_0
    if-eqz v1, :cond_0

    .line 719
    iget v7, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v7}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 720
    .local v2, startX:F
    iget v7, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v7}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 722
    .local v3, startY:F
    iget v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .line 723
    .local v4, widthOffset:F
    iget v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .line 725
    .local v0, heightOffset:F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate(IIII)V

    .line 728
    .end local v0           #heightOffset:F
    .end local v2           #startX:F
    .end local v3           #startY:F
    .end local v4           #widthOffset:F
    :cond_0
    iput v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    .line 729
    iput v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    .line 736
    return-void

    .line 715
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 716
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 31
    .parameter "event"

    .prologue
    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 561
    .local v8, historySize:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    add-int/lit8 v27, v8, 0x1

    move/from16 v0, v27

    if-ge v10, v0, :cond_d

    .line 562
    if-ge v10, v8, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v25

    .line 563
    .local v25, x:F
    :goto_1
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v26

    .line 564
    .local v26, y:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 565
    .local v18, patternSizePreHitDetect:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v9

    .line 566
    .local v9, hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 567
    .local v17, patternSize:I
    if-eqz v9, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 568
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 569
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternStarted()V

    .line 572
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 573
    .local v5, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    move/from16 v27, v0

    sub-float v27, v26, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 574
    .local v6, dy:F
    add-float v27, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    move/from16 v28, v0

    const v29, 0x3c23d70a

    mul-float v28, v28, v29

    cmpl-float v27, v27, v28

    if-lez v27, :cond_2

    .line 575
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    .line 576
    .local v14, oldX:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    .line 578
    .local v15, oldY:F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    .line 579
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    .line 581
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    if-lez v17, :cond_c

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 583
    .local v16, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mDiameterFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x3f00

    mul-float v19, v27, v28

    .line 585
    .local v19, radius:F
    add-int/lit8 v27, v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 587
    .local v12, lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v0, v12, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 588
    .local v21, startX:F
    iget v0, v12, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 595
    .local v22, startY:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 597
    .local v11, invalidateRect:Landroid/graphics/Rect;
    cmpg-float v27, v21, v25

    if-gez v27, :cond_5

    .line 598
    move/from16 v13, v21

    .line 599
    .local v13, left:F
    move/from16 v20, v25

    .line 605
    .local v20, right:F
    :goto_3
    cmpg-float v27, v22, v26

    if-gez v27, :cond_6

    .line 606
    move/from16 v23, v22

    .line 607
    .local v23, top:F
    move/from16 v4, v26

    .line 614
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

    .line 617
    cmpg-float v27, v21, v14

    if-gez v27, :cond_7

    .line 618
    move/from16 v13, v21

    .line 619
    move/from16 v20, v14

    .line 625
    :goto_5
    cmpg-float v27, v22, v15

    if-gez v27, :cond_8

    .line 626
    move/from16 v23, v22

    .line 627
    move v4, v15

    .line 634
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

    .line 638
    if-eqz v9, :cond_1

    .line 639
    iget v0, v9, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 640
    iget v0, v9, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 642
    const/16 v27, 0x2

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    .line 644
    add-int/lit8 v27, v17, -0x1

    sub-int v28, v17, v18

    sub-int v27, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 645
    .restart local v9       #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v0, v9, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 646
    iget v0, v9, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 648
    cmpg-float v27, v21, v14

    if-gez v27, :cond_9

    .line 649
    move/from16 v13, v21

    .line 650
    move/from16 v20, v14

    .line 656
    :goto_7
    cmpg-float v27, v22, v15

    if-gez v27, :cond_a

    .line 657
    move/from16 v23, v22

    .line 658
    move v4, v15

    .line 668
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v24, v27, v28

    .line 669
    .local v24, widthOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v7, v27, v28

    .line 671
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

    .line 676
    .end local v7           #heightOffset:F
    .end local v24           #widthOffset:F
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 561
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

    .line 562
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

    .line 563
    .restart local v25       #x:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    goto/16 :goto_2

    .line 601
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

    .line 602
    .restart local v13       #left:F
    move/from16 v20, v21

    .restart local v20       #right:F
    goto/16 :goto_3

    .line 609
    :cond_6
    move/from16 v23, v26

    .line 610
    .restart local v23       #top:F
    move/from16 v4, v22

    .restart local v4       #bottom:F
    goto/16 :goto_4

    .line 621
    :cond_7
    move v13, v14

    .line 622
    move/from16 v20, v21

    goto/16 :goto_5

    .line 629
    :cond_8
    move/from16 v23, v15

    .line 630
    move/from16 v4, v22

    goto/16 :goto_6

    .line 652
    :cond_9
    move v13, v14

    .line 653
    move/from16 v20, v21

    goto :goto_7

    .line 660
    :cond_a
    move/from16 v23, v15

    .line 661
    move/from16 v4, v22

    goto :goto_8

    .line 664
    :cond_b
    move/from16 v20, v21

    move/from16 v13, v21

    .line 665
    move/from16 v4, v22

    move/from16 v23, v22

    goto :goto_8

    .line 678
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
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    goto :goto_9

    .line 682
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
    .line 692
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 694
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternDetected()V

    .line 695
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    .line 703
    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 264
    :cond_0
    const v0, 0x60c0214

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessEvent(I)V

    .line 265
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 285
    :cond_0
    const v0, 0x60c0212

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessEvent(I)V

    .line 286
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 278
    :cond_0
    const v0, 0x60c0215

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessEvent(I)V

    .line 279
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 271
    :cond_0
    const v0, 0x60c0213

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessEvent(I)V

    .line 272
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    .line 301
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    .line 303
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 344
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 353
    move v0, v1

    .line 355
    :goto_0
    return v0

    .line 346
    :sswitch_0
    move v0, p2

    .line 347
    goto :goto_0

    .line 349
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 350
    goto :goto_0

    .line 344
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
    .line 685
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 686
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessibilityEvent(I)V

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 688
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->resetPattern()V

    .line 293
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 322
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 329
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .parameter "canvas"

    .prologue
    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    .line 749
    .local v28, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 750
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 752
    .local v15, drawLookup:[[Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_2

    .line 757
    add-int/lit8 v3, v12, 0x1

    mul-int/lit16 v0, v3, 0x2bc

    move/from16 v25, v0

    .line 758
    .local v25, oneCycle:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mAnimatingPeriodStart:J

    move-wide/from16 v34, v0

    sub-long v3, v3, v34

    long-to-int v3, v3

    rem-int v31, v3, v25

    .line 760
    .local v31, spotInCycle:I
    move/from16 v0, v31

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v23, v0

    .line 762
    .local v23, numCircles:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    .line 763
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 764
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 765
    .local v7, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v3, v15, v3

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    const/16 v34, 0x1

    aput-boolean v34, v3, v4

    .line 763
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 770
    .end local v7           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    if-lez v23, :cond_3

    move/from16 v0, v23

    if-ge v0, v12, :cond_3

    const/16 v21, 0x1

    .line 773
    .local v21, needToUpdateInProgressPoint:Z
    :goto_1
    if-eqz v21, :cond_1

    .line 774
    move/from16 v0, v31

    rem-int/lit16 v3, v0, 0x2bc

    int-to-float v3, v3

    const/high16 v4, 0x442f

    div-float v29, v3, v4

    .line 778
    .local v29, percentageOfNextCircle:F
    add-int/lit8 v3, v23, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 779
    .local v13, currentCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v3, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 780
    .local v10, centerX:F
    iget v3, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 782
    .local v11, centerY:F
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 783
    .local v22, nextCell:Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v3

    sub-float/2addr v3, v10

    mul-float v17, v29, v3

    .line 785
    .local v17, dx:F
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v3

    sub-float/2addr v3, v11

    mul-float v18, v29, v3

    .line 787
    .local v18, dy:F
    add-float v3, v10, v17

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    .line 788
    add-float v3, v11, v18

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    .line 791
    .end local v10           #centerX:F
    .end local v11           #centerY:F
    .end local v13           #currentCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v17           #dx:F
    .end local v18           #dy:F
    .end local v22           #nextCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v29           #percentageOfNextCircle:F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    .line 794
    .end local v19           #i:I
    .end local v21           #needToUpdateInProgressPoint:Z
    .end local v23           #numCircles:I
    .end local v25           #oneCycle:I
    .end local v31           #spotInCycle:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    move/from16 v33, v0

    .line 795
    .local v33, squareWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    move/from16 v32, v0

    .line 797
    .local v32, squareHeight:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mDiameterFactor:F

    mul-float v30, v33, v3

    .line 798
    .local v30, radius:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 801
    .local v14, currentPath:Landroid/graphics/Path;
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 804
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingTop:I

    move/from16 v27, v0

    .line 805
    .local v27, paddingTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingLeft:I

    move/from16 v26, v0

    .line 807
    .local v26, paddingLeft:I
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_2
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ge v0, v3, :cond_5

    .line 808
    move/from16 v0, v27

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .line 810
    .local v6, topY:F
    const/16 v20, 0x0

    .local v20, j:I
    :goto_3
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    .line 811
    move/from16 v0, v26

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .line 812
    .local v5, leftX:F
    float-to-int v3, v5

    float-to-int v4, v6

    aget-object v34, v15, v19

    aget-boolean v34, v34, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    .line 810
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 770
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

    .line 807
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

    .line 820
    .end local v6           #topY:F
    .end local v20           #j:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_c

    :cond_6
    const/16 v16, 0x1

    .line 824
    .local v16, drawPath:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    const/16 v24, 0x1

    .line 825
    .local v24, oldFlag:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 826
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v34, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v34

    if-ne v3, v0, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaintErrorColor:I

    :goto_6
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 827
    if-eqz v16, :cond_7

    .line 828
    const/16 v19, 0x0

    :goto_7
    add-int/lit8 v3, v12, -0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_7

    .line 829
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 830
    .restart local v7       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 835
    .local v8, next:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v3, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v3, v15, v3

    iget v4, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_f

    .line 846
    .end local v7           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v8           #next:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_7
    if-eqz v16, :cond_b

    .line 847
    const/4 v9, 0x0

    .line 848
    .local v9, anyCircles:Z
    const/16 v19, 0x0

    :goto_8
    move/from16 v0, v19

    if-ge v0, v12, :cond_8

    .line 849
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 854
    .restart local v7       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v3, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v3, v15, v3

    iget v4, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_10

    .line 869
    .end local v7           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_a

    :cond_9
    if-eqz v9, :cond_a

    .line 871
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 873
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 876
    .end local v9           #anyCircles:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 877
    return-void

    .line 820
    .end local v16           #drawPath:Z
    .end local v24           #oldFlag:Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 824
    .restart local v16       #drawPath:Z
    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 826
    .restart local v24       #oldFlag:Z
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaintColor:I

    goto/16 :goto_6

    .line 839
    .restart local v7       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v8       #next:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_f
    move/from16 v0, v26

    int-to-float v3, v0

    iget v4, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    int-to-float v4, v4

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .line 840
    .restart local v5       #leftX:F
    move/from16 v0, v27

    int-to-float v3, v0

    iget v4, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    int-to-float v4, v4

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .restart local v6       #topY:F
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 842
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/MiuiLockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 828
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_7

    .line 857
    .end local v5           #leftX:F
    .end local v6           #topY:F
    .end local v8           #next:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v9       #anyCircles:Z
    :cond_10
    const/4 v9, 0x1

    .line 859
    iget v3, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 860
    .restart local v10       #centerX:F
    iget v3, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 861
    .restart local v11       #centerY:F
    if-nez v19, :cond_11

    .line 862
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 848
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 864
    :cond_11
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_9
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 509
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 520
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 521
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 523
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 511
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 514
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 517
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 509
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
    .line 372
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 373
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 374
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 375
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 377
    .local v2, viewHeight:I
    iget v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    .line 389
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->setMeasuredDimension(II)V

    .line 390
    return-void

    .line 379
    :pswitch_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    .line 380
    goto :goto_0

    .line 382
    :pswitch_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 383
    goto :goto_0

    .line 385
    :pswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 377
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
    .line 981
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;

    .line 982
    .local v0, ss:Lcom/android/internal/widget/MiuiLockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 983
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 986
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 987
    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 988
    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 989
    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mEnableHapticFeedback:Z

    .line 990
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 972
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 973
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/internal/widget/MiuiLockPatternView$1;)V

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

    .line 333
    iget v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 334
    .local v1, width:I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 336
    iget v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 337
    .local v0, height:I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 338
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 528
    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 554
    :goto_0
    return v0

    .line 532
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 554
    goto :goto_0

    .line 534
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 537
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 540
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 543
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->resetPattern()V

    .line 544
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 545
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternCleared()V

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .locals 3
    .parameter "displayMode"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 246
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 248
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAnimatingPeriodStart:J

    .line 252
    iget-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 253
    .local v0, first:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    .line 254
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    .line 255
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    .line 257
    .end local v0           #first:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    .line 258
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .parameter "inStealthMode"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 200
    return-void
.end method

.method public setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .locals 0
    .parameter "onPatternListener"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 219
    return-void
.end method

.method public setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .parameter "displayMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p2, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 229
    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    .line 231
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

    .line 232
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 235
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 236
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mEnableHapticFeedback:Z

    .line 210
    return-void
.end method
