.class public Lmiui/widget/PhotoFrameView;
.super Landroid/view/View;
.source "PhotoFrameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/PhotoFrameView$OnSizeChangedListener;,
        Lmiui/widget/PhotoFrameView$InsideBoundStrategy;,
        Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;,
        Lmiui/widget/PhotoFrameView$BoundStrategy;,
        Lmiui/widget/PhotoFrameView$JustifyAnimation;
    }
.end annotation


# static fields
.field private static final ALPHA_DEGREE:I = 0x50

.field private static final CONTACT_LARGE_PHOTO_MIN_LENTH:I = 0x190

.field private static final CONTACT_THUMBNAIL_BIT:I = 0x60

.field private static final DISTANCE_OF_FINGERS:F = 20.0f

.field private static final DOUBLE_CLICK_INTERVAL:J = 0x1f4L

.field private static final DRAG:I = 0x1

.field public static final INSIDE_BOUND_TYPE:I = 0x1

.field public static final MATRIX_VALUES_SIZE:I = 0x9

.field private static final MIN_BITMAP_SIZE:F = 20.0f

.field private static final NONE:I = 0x0

.field public static final OUTSIDE_BOUND_TYPE:I = 0x0

.field private static final SINGLE_CLICK_INTERVAL:J = 0x64L

.field private static final ZOOM:I = 0x2


# instance fields
.field private mAutoAdjustMinZoom:Z

.field private mBitmapDisplayed:Landroid/graphics/Bitmap;

.field private mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

.field private mCurrentDownTime:J

.field final mDisplayMatrix:Landroid/graphics/Matrix;

.field private final mDown:Landroid/graphics/PointF;

.field private mFilterBitmap:Landroid/graphics/Bitmap;

.field private mFilterPaint:Landroid/graphics/Paint;

.field private mFrameBitmap:Landroid/graphics/Bitmap;

.field private mInteractive:Z

.field private final mLastDown:Landroid/graphics/PointF;

.field private mLastDownTime:J

.field private final mLastMove:Landroid/graphics/PointF;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private final mMatrixTemp:Landroid/graphics/Matrix;

.field private final mMatrixValuesTemp:[F

.field private final mMidPoint:Landroid/graphics/PointF;

.field private mMinZoom:F

.field private mMode:I

.field private mOldDist:F

.field private mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPrepareValues:[F

.field private mRotation:I

.field private mSizeChangedListener:Lmiui/widget/PhotoFrameView$OnSizeChangedListener;

.field private mTempBitmap:Landroid/graphics/Bitmap;

.field private mTransformedFilterBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/PhotoFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/PhotoFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lmiui/widget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    .line 231
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lmiui/widget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    .line 232
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lmiui/widget/PhotoFrameView;->mMidPoint:Landroid/graphics/PointF;

    .line 233
    iput v5, p0, Lmiui/widget/PhotoFrameView;->mMode:I

    .line 234
    const/high16 v3, 0x41a0

    iput v3, p0, Lmiui/widget/PhotoFrameView;->mOldDist:F

    .line 236
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lmiui/widget/PhotoFrameView;->mLastDown:Landroid/graphics/PointF;

    .line 237
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lmiui/widget/PhotoFrameView;->mCurrentDownTime:J

    .line 238
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lmiui/widget/PhotoFrameView;->mLastDownTime:J

    .line 239
    iput-boolean v7, p0, Lmiui/widget/PhotoFrameView;->mAutoAdjustMinZoom:Z

    .line 241
    iput-boolean v7, p0, Lmiui/widget/PhotoFrameView;->mInteractive:Z

    .line 671
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 674
    iput v5, p0, Lmiui/widget/PhotoFrameView;->mRotation:I

    .line 679
    iput-object v6, p0, Lmiui/widget/PhotoFrameView;->mPrepareValues:[F

    .line 682
    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lmiui/widget/PhotoFrameView;->mMatrixValuesTemp:[F

    .line 684
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lmiui/widget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    .line 687
    iput-object v6, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 690
    iput-object v6, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 693
    iput-object v6, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    .line 695
    iput-object v6, p0, Lmiui/widget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 697
    const v3, 0x3dcccccd

    iput v3, p0, Lmiui/widget/PhotoFrameView;->mMinZoom:F

    .line 698
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lmiui/widget/PhotoFrameView;->mFilterPaint:Landroid/graphics/Paint;

    .line 699
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lmiui/widget/PhotoFrameView;->mMaskPaint:Landroid/graphics/Paint;

    .line 700
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x7

    invoke-direct {v3, v5, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v3, p0, Lmiui/widget/PhotoFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    .line 727
    iput-object v6, p0, Lmiui/widget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 44
    sget-object v3, Lmiui/R$styleable;->PhotoFrameView:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 47
    .local v1, boundType:I
    if-nez v1, :cond_0

    .line 48
    new-instance v3, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;

    invoke-direct {v3, p0}, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;-><init>(Lmiui/widget/PhotoFrameView;)V

    invoke-virtual {p0, v3}, Lmiui/widget/PhotoFrameView;->setBoundStrategy(Lmiui/widget/PhotoFrameView$BoundStrategy;)V

    .line 57
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    iget-object v3, p0, Lmiui/widget/PhotoFrameView;->mFilterPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 60
    iget-object v3, p0, Lmiui/widget/PhotoFrameView;->mMaskPaint:Landroid/graphics/Paint;

    const/16 v4, 0xaf

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    iget-object v3, p0, Lmiui/widget/PhotoFrameView;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 62
    return-void

    .line 49
    :cond_0
    if-ne v1, v7, :cond_1

    .line 50
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 52
    .local v2, top:I
    new-instance v3, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;

    invoke-direct {v3, p0, v2}, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;-><init>(Lmiui/widget/PhotoFrameView;I)V

    invoke-virtual {p0, v3}, Lmiui/widget/PhotoFrameView;->setBoundStrategy(Lmiui/widget/PhotoFrameView$BoundStrategy;)V

    goto :goto_0

    .line 54
    .end local v2           #top:I
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$000(Lmiui/widget/PhotoFrameView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/PhotoFrameView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lmiui/widget/PhotoFrameView;->mRotation:I

    return v0
.end method

.method static synthetic access$200(Lmiui/widget/PhotoFrameView;[FZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lmiui/widget/PhotoFrameView;->convertMatrixReference([FZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lmiui/widget/PhotoFrameView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lmiui/widget/PhotoFrameView;->isVertical()Z

    move-result v0

    return v0
.end method

.method private center(ZZ)V
    .locals 12
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 826
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 827
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 828
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->invalidate()V

    .line 863
    :goto_0
    return-void

    .line 832
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 833
    .local v4, rect:Landroid/graphics/RectF;
    iget-object v8, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 835
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 836
    .local v3, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 838
    .local v7, width:F
    const/4 v1, 0x0

    .local v1, deltaX:F
    const/4 v2, 0x0

    .line 840
    .local v2, deltaY:F
    if-eqz p2, :cond_1

    .line 841
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v5

    .line 842
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v3, v8

    if-gez v8, :cond_3

    .line 843
    int-to-float v8, v5

    sub-float/2addr v8, v3

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v2, v8, v9

    .line 851
    .end local v5           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 852
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v6

    .line 853
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 854
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v1, v8, v9

    .line 861
    .end local v6           #viewWidth:I
    :cond_2
    :goto_2
    iget-object v8, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 862
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->invalidate()V

    goto :goto_0

    .line 844
    .restart local v5       #viewHeight:I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 845
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v2, v8

    goto :goto_1

    .line 846
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 847
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v8, v9

    goto :goto_1

    .line 855
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 856
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v1, v8

    goto :goto_2

    .line 857
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 858
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v1, v8, v9

    goto :goto_2
.end method

.method private convertMatrixReference([FZ)Z
    .locals 6
    .parameter "values"
    .parameter "toRaw"

    .prologue
    const/4 v3, 0x1

    .line 866
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v4

    if-nez v4, :cond_1

    .line 867
    const/4 v3, 0x0

    .line 885
    :cond_0
    :goto_0
    return v3

    .line 870
    :cond_1
    iget-object v4, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 874
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 875
    .local v2, m:Landroid/graphics/Matrix;
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 877
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 878
    .local v0, dx:I
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 879
    .local v1, dy:I
    if-nez p2, :cond_2

    .line 880
    neg-int v0, v0

    .line 881
    neg-int v1, v1

    .line 883
    :cond_2
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 884
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->getValues([F)V

    goto :goto_0
.end method

.method public static generatePhoto(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "frame"
    .parameter "filter"
    .parameter "image"
    .parameter "matrix"
    .parameter "dftHeight"
    .parameter "dftWidth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 972
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 973
    .local v1, frameHeight:I
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 975
    .local v2, frameWidth:I
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 977
    .local v4, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 978
    .local v0, dest:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 981
    if-eqz p2, :cond_0

    .line 982
    if-eqz p3, :cond_5

    .line 983
    invoke-virtual {v0, p2, p3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 990
    :cond_0
    :goto_2
    if-eqz p1, :cond_1

    .line 991
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 992
    .local v3, maskPaint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 993
    invoke-virtual {v0, p1, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 997
    .end local v3           #maskPaint:Landroid/graphics/Paint;
    :cond_1
    if-eqz p0, :cond_2

    .line 998
    invoke-virtual {v0, p0, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1001
    :cond_2
    return-object v4

    .end local v0           #dest:Landroid/graphics/Canvas;
    .end local v1           #frameHeight:I
    .end local v2           #frameWidth:I
    .end local v4           #result:Landroid/graphics/Bitmap;
    :cond_3
    move v1, p4

    .line 972
    goto :goto_0

    .restart local v1       #frameHeight:I
    :cond_4
    move v2, p5

    .line 973
    goto :goto_1

    .line 985
    .restart local v0       #dest:Landroid/graphics/Canvas;
    .restart local v2       #frameWidth:I
    .restart local v4       #result:Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v0, p2, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method private isDoubleClick(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/high16 v4, 0x41a0

    .line 631
    iget-wide v0, p0, Lmiui/widget/PhotoFrameView;->mLastDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/widget/PhotoFrameView;->mLastDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mLastDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mLastDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSingleClick(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/high16 v4, 0x41a0

    .line 624
    iget-wide v0, p0, Lmiui/widget/PhotoFrameView;->mCurrentDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/widget/PhotoFrameView;->mCurrentDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVertical()Z
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lmiui/widget/PhotoFrameView;->mRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "point"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 651
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 652
    .local v0, x:F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 653
    .local v1, y:F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 654
    return-void
.end method

.method private panBy(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 638
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 639
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->invalidate()V

    .line 640
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/4 v0, 0x0

    .line 741
    if-eqz p1, :cond_0

    .line 742
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lmiui/widget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;III)V

    .line 746
    :goto_0
    return-void

    .line 744
    :cond_0
    invoke-direct {p0, p1, v0, v0, p2}, Lmiui/widget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;III)V

    goto :goto_0
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;III)V
    .locals 1
    .parameter "bitmap"
    .parameter "imageRawWidth"
    .parameter "imageRawHeight"
    .parameter "orientation"

    .prologue
    .line 750
    iput-object p1, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 751
    iget-boolean v0, p0, Lmiui/widget/PhotoFrameView;->mAutoAdjustMinZoom:Z

    if-eqz v0, :cond_0

    .line 752
    invoke-direct {p0}, Lmiui/widget/PhotoFrameView;->updateMinZoom()V

    .line 754
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->invalidate()V

    .line 755
    return-void
.end method

.method private static spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 644
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 645
    .local v0, x:F
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 646
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method private updateMinZoom()V
    .locals 6

    .prologue
    const/high16 v5, 0x41a0

    .line 798
    const/high16 v2, 0x3f80

    .line 799
    .local v2, minZoom:F
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 800
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 802
    .local v1, min:I
    :goto_0
    int-to-float v3, v1

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    .line 803
    int-to-float v3, v1

    div-float v2, v5, v3

    .line 809
    .end local v1           #min:I
    :cond_0
    :goto_1
    iput v2, p0, Lmiui/widget/PhotoFrameView;->mMinZoom:F

    .line 810
    return-void

    .line 801
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    .line 805
    .restart local v1       #min:I
    :cond_2
    const/high16 v2, 0x3f80

    goto :goto_1
.end method

.method private updateTempBitmap()V
    .locals 15

    .prologue
    .line 889
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v9

    .line 890
    .local v9, height:I
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v14

    .line 891
    .local v14, width:I
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v9, :cond_0

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, v14, :cond_2

    .line 893
    :cond_0
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 894
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 896
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 900
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 901
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 902
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 903
    iget-object v6, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 904
    .local v6, bm:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    .line 905
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 906
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_3

    .line 907
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 909
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 910
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 913
    :cond_4
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v13

    .line 914
    .local v13, viewWidth:I
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v12

    .line 915
    .local v12, viewHeight:I
    const/4 v10, 0x0

    .line 916
    .local v10, offsetX:I
    const/4 v11, 0x0

    .line 917
    .local v11, offsetY:I
    const/4 v7, 0x0

    .line 918
    .local v7, bmHeight:I
    const/4 v8, 0x0

    .line 919
    .local v8, bmWidth:I
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 920
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v10, v1, 0x2

    .line 921
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v1, v12, v1

    div-int/lit8 v11, v1, 0x2

    .line 922
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v10

    int-to-float v3, v11

    iget-object v4, p0, Lmiui/widget/PhotoFrameView;->mFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 923
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 924
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 927
    :cond_5
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 928
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v10, v1, 0x2

    .line 929
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v1, v12, v1

    div-int/lit8 v11, v1, 0x2

    .line 930
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v10

    int-to-float v3, v11

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 931
    if-gtz v7, :cond_6

    .line 932
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 933
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 937
    :cond_6
    if-lez v10, :cond_7

    if-lez v11, :cond_7

    add-int v1, v10, v8

    if-ge v1, v13, :cond_7

    add-int v1, v11, v7

    if-ge v1, v12, :cond_7

    .line 939
    int-to-float v1, v10

    int-to-float v2, v11

    add-int v3, v10, v8

    int-to-float v3, v3

    add-int v4, v11, v7

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 941
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v13

    int-to-float v4, v12

    iget-object v5, p0, Lmiui/widget/PhotoFrameView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 943
    :cond_7
    return-void
.end method

.method private zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x0

    .line 813
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getScale()F

    move-result v1

    .line 814
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 815
    .local v0, deltaScale:F
    iget-object v2, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 817
    invoke-direct {p0, v3, v3}, Lmiui/widget/PhotoFrameView;->center(ZZ)V

    .line 818
    return-void
.end method


# virtual methods
.method fitCenter(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 784
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmiui/widget/PhotoFrameView;->fitCenter(Landroid/graphics/Matrix;Z)V

    .line 785
    return-void
.end method

.method fitCenter(Landroid/graphics/Matrix;Z)V
    .locals 1
    .parameter "matrix"
    .parameter "resetScale"

    .prologue
    .line 788
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

    invoke-interface {v0, p1, p2}, Lmiui/widget/PhotoFrameView$BoundStrategy;->adjustCropArea(Landroid/graphics/Matrix;Z)V

    goto :goto_0
.end method

.method public generateCropedPhoto()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 962
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

    if-eqz v1, :cond_0

    .line 963
    iget-object v2, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

    invoke-interface {v1}, Lmiui/widget/PhotoFrameView$BoundStrategy;->getCropedMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

    invoke-interface {v1}, Lmiui/widget/PhotoFrameView$BoundStrategy;->getCropedPhotoHeight()I

    move-result v4

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

    invoke-interface {v1}, Lmiui/widget/PhotoFrameView$BoundStrategy;->getCropedPhotoWidth()I

    move-result v5

    move-object v1, v0

    invoke-static/range {v0 .. v5}, Lmiui/widget/PhotoFrameView;->generatePhoto(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 966
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->generatePhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public generatePhoto()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 952
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 953
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiui/widget/PhotoFrameView;->convertMatrixReference([FZ)Z

    .line 954
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 956
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/widget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lmiui/widget/PhotoFrameView;->generatePhoto(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFitCenterScale()F
    .locals 9

    .prologue
    .line 195
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v5

    .line 196
    .local v5, viewWidth:I
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v4

    .line 199
    .local v4, viewHeight:I
    iget-object v7, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 200
    iget-object v7, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v1, v7

    .line 201
    .local v1, frameWidth:F
    iget-object v7, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 207
    .local v0, frameHeight:F
    :goto_0
    iget-object v7, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .line 208
    .local v6, w:F
    iget-object v7, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v2, v7

    .line 210
    .local v2, h:F
    invoke-direct {p0}, Lmiui/widget/PhotoFrameView;->isVertical()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 211
    div-float v7, v1, v6

    div-float v8, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 216
    .local v3, scale:F
    :goto_1
    return v3

    .line 203
    .end local v0           #frameHeight:F
    .end local v1           #frameWidth:F
    .end local v2           #h:F
    .end local v3           #scale:F
    .end local v6           #w:F
    :cond_0
    int-to-float v1, v5

    .line 204
    .restart local v1       #frameWidth:F
    int-to-float v0, v4

    .restart local v0       #frameHeight:F
    goto :goto_0

    .line 213
    .restart local v2       #h:F
    .restart local v6       #w:F
    :cond_1
    div-float v7, v1, v2

    div-float v8, v0, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .restart local v3       #scale:F
    goto :goto_1
.end method

.method public getFrameBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBounds()Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 758
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 759
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 760
    const/4 v2, 0x0

    .line 774
    :cond_0
    :goto_0
    return-object v2

    .line 763
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 764
    .local v2, rect:Landroid/graphics/RectF;
    iget-object v4, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 766
    iget-object v4, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 767
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 768
    .local v1, h:I
    iget v4, v2, Landroid/graphics/RectF;->left:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 769
    iget v4, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 770
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 771
    .local v3, v:I
    iget v4, v2, Landroid/graphics/RectF;->top:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 772
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v3

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public getMatrixValues([F)V
    .locals 1
    .parameter "values"

    .prologue
    .line 161
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/PhotoFrameView;->convertMatrixReference([FZ)Z

    .line 163
    return-void
.end method

.method public getRotateDegrees()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lmiui/widget/PhotoFrameView;->mRotation:I

    return v0
.end method

.method getScale()F
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 730
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 731
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 732
    invoke-direct {p0}, Lmiui/widget/PhotoFrameView;->updateTempBitmap()V

    .line 733
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 734
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 705
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 706
    if-eqz p1, :cond_0

    .line 707
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mPrepareValues:[F

    if-nez v0, :cond_1

    .line 708
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lmiui/widget/PhotoFrameView;->fitCenter(Landroid/graphics/Matrix;)V

    .line 709
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mPrepareValues:[F

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/16 v2, 0x9

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/PhotoFrameView;->convertMatrixReference([FZ)Z

    .line 713
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 721
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 722
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mSizeChangedListener:Lmiui/widget/PhotoFrameView$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mSizeChangedListener:Lmiui/widget/PhotoFrameView$OnSizeChangedListener;

    invoke-interface {v0, p0}, Lmiui/widget/PhotoFrameView$OnSizeChangedListener;->onSizeChanged(Lmiui/widget/PhotoFrameView;)V

    .line 725
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x41a0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v6, v7

    .line 620
    :cond_1
    :goto_1
    return v6

    .line 542
    :pswitch_1
    iget-boolean v8, p0, Lmiui/widget/PhotoFrameView;->mInteractive:Z

    if-eqz v8, :cond_1

    .line 546
    iget-object v6, p0, Lmiui/widget/PhotoFrameView;->mLastDown:Landroid/graphics/PointF;

    iget-object v8, p0, Lmiui/widget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lmiui/widget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 547
    iget-wide v8, p0, Lmiui/widget/PhotoFrameView;->mCurrentDownTime:J

    iput-wide v8, p0, Lmiui/widget/PhotoFrameView;->mLastDownTime:J

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lmiui/widget/PhotoFrameView;->mCurrentDownTime:J

    .line 550
    iget-object v6, p0, Lmiui/widget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 551
    iget-object v6, p0, Lmiui/widget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 552
    iput v7, p0, Lmiui/widget/PhotoFrameView;->mMode:I

    goto :goto_0

    .line 556
    :pswitch_2
    iget-boolean v8, p0, Lmiui/widget/PhotoFrameView;->mInteractive:Z

    if-eqz v8, :cond_1

    .line 560
    invoke-static {p1}, Lmiui/widget/PhotoFrameView;->spacing(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lmiui/widget/PhotoFrameView;->mOldDist:F

    .line 561
    iget v6, p0, Lmiui/widget/PhotoFrameView;->mOldDist:F

    cmpl-float v6, v6, v12

    if-lez v6, :cond_0

    .line 562
    iget-object v6, p0, Lmiui/widget/PhotoFrameView;->mMidPoint:Landroid/graphics/PointF;

    invoke-static {v6, p1}, Lmiui/widget/PhotoFrameView;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 563
    iput v13, p0, Lmiui/widget/PhotoFrameView;->mMode:I

    goto :goto_0

    .line 567
    :pswitch_3
    iput v6, p0, Lmiui/widget/PhotoFrameView;->mMode:I

    .line 568
    invoke-direct {p0, p1}, Lmiui/widget/PhotoFrameView;->isSingleClick(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 569
    invoke-direct {p0, p1}, Lmiui/widget/PhotoFrameView;->isDoubleClick(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 570
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->resetMatrix()V

    goto :goto_0

    .line 572
    :cond_2
    iget-object v8, p0, Lmiui/widget/PhotoFrameView;->mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

    if-eqz v8, :cond_0

    .line 573
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 574
    .local v0, bound:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getScale()F

    move-result v5

    .line 575
    .local v5, scale:F
    iget-object v8, p0, Lmiui/widget/PhotoFrameView;->mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getFitCenterScale()F

    move-result v9

    cmpg-float v9, v5, v9

    if-gez v9, :cond_3

    move v6, v7

    :cond_3
    invoke-interface {v8, v0, v5, v6}, Lmiui/widget/PhotoFrameView$BoundStrategy;->adjustIfNeeded(Landroid/graphics/RectF;FZ)V

    goto :goto_0

    .line 579
    .end local v0           #bound:Landroid/graphics/RectF;
    .end local v5           #scale:F
    :pswitch_4
    iput v6, p0, Lmiui/widget/PhotoFrameView;->mMode:I

    goto/16 :goto_0

    .line 582
    :pswitch_5
    iget-boolean v8, p0, Lmiui/widget/PhotoFrameView;->mInteractive:Z

    if-eqz v8, :cond_1

    .line 586
    iget v6, p0, Lmiui/widget/PhotoFrameView;->mMode:I

    if-ne v6, v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lmiui/widget/PhotoFrameView;->mCurrentDownTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x64

    cmp-long v6, v8, v10

    if-lez v6, :cond_5

    .line 587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v8, p0, Lmiui/widget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float v1, v6, v8

    .line 588
    .local v1, dx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v8, p0, Lmiui/widget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float v2, v6, v8

    .line 589
    .local v2, dy:F
    iget-object v6, p0, Lmiui/widget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 590
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 591
    .restart local v0       #bound:Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 592
    iget-object v6, p0, Lmiui/widget/PhotoFrameView;->mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

    if-eqz v6, :cond_4

    .line 593
    iget-object v6, p0, Lmiui/widget/PhotoFrameView;->mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

    invoke-interface {v6, v0, v1}, Lmiui/widget/PhotoFrameView$BoundStrategy;->adjustDx(Landroid/graphics/RectF;F)F

    move-result v1

    .line 594
    iget-object v6, p0, Lmiui/widget/PhotoFrameView;->mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

    invoke-interface {v6, v0, v2}, Lmiui/widget/PhotoFrameView$BoundStrategy;->adjustDy(Landroid/graphics/RectF;F)F

    move-result v2

    .line 596
    :cond_4
    invoke-direct {p0, v1, v2}, Lmiui/widget/PhotoFrameView;->panBy(FF)V

    goto/16 :goto_0

    .line 599
    .end local v0           #bound:Landroid/graphics/RectF;
    .end local v1           #dx:F
    .end local v2           #dy:F
    :cond_5
    iget v6, p0, Lmiui/widget/PhotoFrameView;->mMode:I

    if-ne v6, v13, :cond_0

    .line 600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getRight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getLeft()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_7

    :cond_6
    move v6, v7

    .line 601
    goto/16 :goto_1

    .line 604
    :cond_7
    invoke-static {p1}, Lmiui/widget/PhotoFrameView;->spacing(Landroid/view/MotionEvent;)F

    move-result v3

    .line 605
    .local v3, newDist:F
    cmpl-float v6, v3, v12

    if-lez v6, :cond_0

    .line 606
    iget v6, p0, Lmiui/widget/PhotoFrameView;->mOldDist:F

    div-float v4, v3, v6

    .line 607
    .local v4, rate:F
    iput v3, p0, Lmiui/widget/PhotoFrameView;->mOldDist:F

    .line 608
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getScale()F

    move-result v6

    mul-float v5, v6, v4

    .line 610
    .restart local v5       #scale:F
    iget v6, p0, Lmiui/widget/PhotoFrameView;->mMinZoom:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_8

    .line 611
    iget v5, p0, Lmiui/widget/PhotoFrameView;->mMinZoom:F

    .line 614
    :cond_8
    iget-object v6, p0, Lmiui/widget/PhotoFrameView;->mMidPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lmiui/widget/PhotoFrameView;->mMidPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v5, v6, v8}, Lmiui/widget/PhotoFrameView;->zoomTo(FFF)V

    goto/16 :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public photoCropedFromLarge()Z
    .locals 5

    .prologue
    const/high16 v4, 0x43c8

    .line 946
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getScale()F

    move-result v1

    .line 947
    .local v1, scale:F
    iget-object v2, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v0, v2

    .line 948
    .local v0, l:F
    cmpl-float v2, v0, v4

    if-lez v2, :cond_0

    mul-float v2, v0, v1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public recyleAllBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    iput-object v1, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    .line 128
    :cond_0
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    iput-object v1, p0, Lmiui/widget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 133
    :cond_1
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    iput-object v1, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 138
    :cond_2
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    iput-object v1, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 142
    :cond_3
    return-void
.end method

.method public resetMatrix()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/PhotoFrameView;->resetMatrix(Z)V

    .line 167
    return-void
.end method

.method public resetMatrix(Z)V
    .locals 2
    .parameter "resetScale"

    .prologue
    .line 170
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/PhotoFrameView;->fitCenter(Landroid/graphics/Matrix;Z)V

    .line 172
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 173
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->invalidate()V

    .line 175
    :cond_0
    return-void
.end method

.method public setAutoAdjustMinZoom(Z)V
    .locals 0
    .parameter "auto"

    .prologue
    .line 73
    iput-boolean p1, p0, Lmiui/widget/PhotoFrameView;->mAutoAdjustMinZoom:Z

    .line 74
    return-void
.end method

.method public setBoundStrategy(Lmiui/widget/PhotoFrameView$BoundStrategy;)V
    .locals 0
    .parameter "strategy"

    .prologue
    .line 308
    iput-object p1, p0, Lmiui/widget/PhotoFrameView;->mBoundStrategy:Lmiui/widget/PhotoFrameView$BoundStrategy;

    .line 309
    return-void
.end method

.method public setFilterBitmap(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "filter"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 98
    iput-object p1, p0, Lmiui/widget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 99
    if-nez p1, :cond_0

    .line 100
    iput-object v9, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    .line 120
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 104
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 105
    .local v7, height:I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .line 106
    .local v1, pixels:[I
    const/high16 v10, 0x5000

    .local v10, halfAlphaHighBit:I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 107
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 108
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    array-length v4, v1

    if-ge v11, v4, :cond_2

    .line 109
    aget v4, v1, v11

    const/high16 v5, -0x100

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 110
    const/high16 v4, 0x5000

    aput v4, v1, v11

    .line 108
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 114
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    .line 115
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lmiui/widget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v4, p0, Lmiui/widget/PhotoFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 117
    const/4 v8, 0x1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 119
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->invalidate()V

    goto :goto_0
.end method

.method public setFrameBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 89
    iput-object p1, p0, Lmiui/widget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->invalidate()V

    .line 91
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 82
    return-void
.end method

.method public setInteractive(Z)V
    .locals 0
    .parameter "interactive"

    .prologue
    .line 244
    iput-boolean p1, p0, Lmiui/widget/PhotoFrameView;->mInteractive:Z

    .line 245
    return-void
.end method

.method public setMatrixValues([F)V
    .locals 4
    .parameter "values"

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    .line 146
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 147
    new-array v0, v3, [F

    .line 148
    .local v0, v:[F
    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iput-object v0, p0, Lmiui/widget/PhotoFrameView;->mPrepareValues:[F

    .line 157
    .end local v0           #v:[F
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/PhotoFrameView;->mPrepareValues:[F

    .line 152
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lmiui/widget/PhotoFrameView;->convertMatrixReference([FZ)Z

    .line 154
    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lmiui/widget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 155
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->invalidate()V

    goto :goto_0
.end method

.method public setMinZoom(F)V
    .locals 0
    .parameter "minZoom"

    .prologue
    .line 77
    iput p1, p0, Lmiui/widget/PhotoFrameView;->mMinZoom:F

    .line 78
    return-void
.end method

.method public setOnSizeChangedListener(Lmiui/widget/PhotoFrameView$OnSizeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 69
    iput-object p1, p0, Lmiui/widget/PhotoFrameView;->mSizeChangedListener:Lmiui/widget/PhotoFrameView$OnSizeChangedListener;

    .line 70
    return-void
.end method

.method public setRotateDegrees(IZ)V
    .locals 2
    .parameter "degrees"
    .parameter "refresh"

    .prologue
    .line 186
    rem-int/lit16 v0, p1, 0x168

    iput v0, p0, Lmiui/widget/PhotoFrameView;->mRotation:I

    .line 187
    if-eqz p2, :cond_0

    .line 188
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lmiui/widget/PhotoFrameView;->fitCenter(Landroid/graphics/Matrix;)V

    .line 189
    iget-object v0, p0, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lmiui/widget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 190
    invoke-virtual {p0}, Lmiui/widget/PhotoFrameView;->invalidate()V

    .line 192
    :cond_0
    return-void
.end method
