.class public Lmiui/v5/widget/CircleProgressView;
.super Landroid/view/View;
.source "CircleProgressView.java"


# static fields
.field private static MAX_PROGRESS:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAngle:I

.field private mArcRect:Landroid/graphics/RectF;

.field private mCurProgress:I

.field private mFgBitmap:Landroid/graphics/Bitmap;

.field private mForeground:Landroid/graphics/drawable/BitmapDrawable;

.field private mHeight:I

.field private mMaxProgress:I

.field private mMemBitmap:Landroid/graphics/Bitmap;

.field private mMemCanvas:Landroid/graphics/Canvas;

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "CircleProgressView"

    sput-object v0, Lmiui/v5/widget/CircleProgressView;->TAG:Ljava/lang/String;

    .line 23
    const/16 v0, 0x64

    sput v0, Lmiui/v5/widget/CircleProgressView;->MAX_PROGRESS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    sget v0, Lmiui/v5/widget/CircleProgressView;->MAX_PROGRESS:I

    iput v0, p0, Lmiui/v5/widget/CircleProgressView;->mMaxProgress:I

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/v5/widget/CircleProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget v0, Lmiui/v5/widget/CircleProgressView;->MAX_PROGRESS:I

    iput v0, p0, Lmiui/v5/widget/CircleProgressView;->mMaxProgress:I

    .line 46
    invoke-direct {p0, p1, p2}, Lmiui/v5/widget/CircleProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget v0, Lmiui/v5/widget/CircleProgressView;->MAX_PROGRESS:I

    iput v0, p0, Lmiui/v5/widget/CircleProgressView;->mMaxProgress:I

    .line 51
    invoke-direct {p0, p1, p2}, Lmiui/v5/widget/CircleProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 55
    if-eqz p2, :cond_1

    .line 56
    sget-object v2, Lmiui/R$styleable;->CircleProgressView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mForeground:Landroid/graphics/drawable/BitmapDrawable;

    .line 60
    iget-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mForeground:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_0

    .line 61
    const v2, 0x602013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mForeground:Landroid/graphics/drawable/BitmapDrawable;

    .line 64
    :cond_0
    iget-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mForeground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mFgBitmap:Landroid/graphics/Bitmap;

    .line 65
    iget-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mFgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lmiui/v5/widget/CircleProgressView;->mWidth:I

    .line 66
    iget-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mFgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lmiui/v5/widget/CircleProgressView;->mHeight:I

    .line 68
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    iget v2, p0, Lmiui/v5/widget/CircleProgressView;->mWidth:I

    iget v3, p0, Lmiui/v5/widget/CircleProgressView;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mMemBitmap:Landroid/graphics/Bitmap;

    .line 75
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiui/v5/widget/CircleProgressView;->mMemBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mMemCanvas:Landroid/graphics/Canvas;

    .line 77
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lmiui/v5/widget/CircleProgressView;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/v5/widget/CircleProgressView;->mHeight:I

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lmiui/v5/widget/CircleProgressView;->mArcRect:Landroid/graphics/RectF;

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_1
    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lmiui/v5/widget/CircleProgressView;->mMaxProgress:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lmiui/v5/widget/CircleProgressView;->mCurProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 119
    iget-object v0, p0, Lmiui/v5/widget/CircleProgressView;->mForeground:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lmiui/v5/widget/CircleProgressView;->mMemBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 121
    iget-object v0, p0, Lmiui/v5/widget/CircleProgressView;->mMemCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiui/v5/widget/CircleProgressView;->mFgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    iget-object v0, p0, Lmiui/v5/widget/CircleProgressView;->mMemCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiui/v5/widget/CircleProgressView;->mArcRect:Landroid/graphics/RectF;

    iget v2, p0, Lmiui/v5/widget/CircleProgressView;->mAngle:I

    rsub-int v2, v2, 0x10e

    int-to-float v2, v2

    iget v3, p0, Lmiui/v5/widget/CircleProgressView;->mAngle:I

    int-to-float v3, v3

    const/4 v4, 0x1

    iget-object v5, p0, Lmiui/v5/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 123
    iget-object v0, p0, Lmiui/v5/widget/CircleProgressView;->mMemBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 129
    iget v0, p0, Lmiui/v5/widget/CircleProgressView;->mWidth:I

    iget v1, p0, Lmiui/v5/widget/CircleProgressView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lmiui/v5/widget/CircleProgressView;->setMeasuredDimension(II)V

    .line 130
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1
    .parameter "maxProgress"

    .prologue
    .line 84
    if-lez p1, :cond_0

    .line 85
    iget v0, p0, Lmiui/v5/widget/CircleProgressView;->mMaxProgress:I

    if-eq v0, p1, :cond_0

    .line 86
    iput p1, p0, Lmiui/v5/widget/CircleProgressView;->mMaxProgress:I

    .line 87
    iget v0, p0, Lmiui/v5/widget/CircleProgressView;->mCurProgress:I

    invoke-virtual {p0, v0}, Lmiui/v5/widget/CircleProgressView;->setProgress(I)V

    .line 90
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 101
    iput p1, p0, Lmiui/v5/widget/CircleProgressView;->mCurProgress:I

    .line 102
    iget v1, p0, Lmiui/v5/widget/CircleProgressView;->mCurProgress:I

    iget v2, p0, Lmiui/v5/widget/CircleProgressView;->mMaxProgress:I

    if-le v1, v2, :cond_2

    .line 103
    iget v1, p0, Lmiui/v5/widget/CircleProgressView;->mMaxProgress:I

    iput v1, p0, Lmiui/v5/widget/CircleProgressView;->mCurProgress:I

    .line 108
    :cond_0
    :goto_0
    iget v1, p0, Lmiui/v5/widget/CircleProgressView;->mMaxProgress:I

    iget v2, p0, Lmiui/v5/widget/CircleProgressView;->mCurProgress:I

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/v5/widget/CircleProgressView;->mCurProgress:I

    .line 109
    iget v1, p0, Lmiui/v5/widget/CircleProgressView;->mCurProgress:I

    mul-int/lit16 v1, v1, 0x168

    iget v2, p0, Lmiui/v5/widget/CircleProgressView;->mMaxProgress:I

    div-int v0, v1, v2

    .line 110
    .local v0, angle:I
    iget v1, p0, Lmiui/v5/widget/CircleProgressView;->mAngle:I

    if-eq v0, v1, :cond_1

    .line 111
    sget-object v1, Lmiui/v5/widget/CircleProgressView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/v5/widget/CircleProgressView;->mCurProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput v0, p0, Lmiui/v5/widget/CircleProgressView;->mAngle:I

    .line 113
    invoke-virtual {p0}, Lmiui/v5/widget/CircleProgressView;->invalidate()V

    .line 115
    :cond_1
    return-void

    .line 104
    .end local v0           #angle:I
    :cond_2
    iget v1, p0, Lmiui/v5/widget/CircleProgressView;->mCurProgress:I

    if-gez v1, :cond_0

    .line 105
    const/4 v1, 0x0

    iput v1, p0, Lmiui/v5/widget/CircleProgressView;->mCurProgress:I

    goto :goto_0
.end method
