.class public Lmiui/imagefilters/TransformFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "TransformFilter.java"


# instance fields
.field private mBasedOnContent:Z

.field private mKeepAspectRatio:Z

.field private mMinVisibleAlpha:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPointsMapping:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/imagefilters/TransformFilter;->mPaint:Landroid/graphics/Paint;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/TransformFilter;->mBasedOnContent:Z

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/TransformFilter;->mKeepAspectRatio:Z

    .line 16
    const/16 v0, 0xa

    iput v0, p0, Lmiui/imagefilters/TransformFilter;->mMinVisibleAlpha:I

    return-void
.end method

.method private scanEdge(II[IZZ)I
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "pixels"
    .parameter "scanX"
    .parameter "scanLeftTop"

    .prologue
    const/4 v0, 0x0

    .line 97
    if-eqz p4, :cond_1

    move v3, p1

    .line 98
    .local v3, d1Count:I
    :goto_0
    if-eqz p4, :cond_2

    move v5, p2

    .line 99
    .local v5, d2Count:I
    :goto_1
    if-eqz p5, :cond_3

    move v1, v0

    .line 100
    .local v1, borderStart:I
    :goto_2
    if-eqz p5, :cond_0

    add-int/lit8 v0, v3, -0x1

    .line 102
    .local v0, borderEnd:I
    :cond_0
    move v2, v1

    .local v2, d1:I
    :goto_3
    if-eq v2, v0, :cond_8

    .line 103
    const/4 v4, 0x0

    .local v4, d2:I
    :goto_4
    if-ge v4, v5, :cond_6

    .line 104
    if-eqz p4, :cond_4

    mul-int v7, v4, p1

    add-int v6, v7, v2

    .line 105
    .local v6, index:I
    :goto_5
    aget v7, p3, v6

    ushr-int/lit8 v7, v7, 0x18

    iget v8, p0, Lmiui/imagefilters/TransformFilter;->mMinVisibleAlpha:I

    if-le v7, v8, :cond_5

    .line 114
    .end local v2           #d1:I
    .end local v4           #d2:I
    .end local v6           #index:I
    :goto_6
    return v2

    .end local v0           #borderEnd:I
    .end local v1           #borderStart:I
    .end local v3           #d1Count:I
    .end local v5           #d2Count:I
    :cond_1
    move v3, p2

    .line 97
    goto :goto_0

    .restart local v3       #d1Count:I
    :cond_2
    move v5, p1

    .line 98
    goto :goto_1

    .line 99
    .restart local v5       #d2Count:I
    :cond_3
    add-int/lit8 v1, v3, -0x1

    goto :goto_2

    .line 104
    .restart local v0       #borderEnd:I
    .restart local v1       #borderStart:I
    .restart local v2       #d1:I
    .restart local v4       #d2:I
    :cond_4
    mul-int v7, v2, p1

    add-int v6, v4, v7

    goto :goto_5

    .line 103
    .restart local v6       #index:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 110
    .end local v6           #index:I
    :cond_6
    if-eqz p5, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 111
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 114
    .end local v4           #d2:I
    :cond_8
    const/4 v2, -0x1

    goto :goto_6
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 22
    .parameter "imgData"

    .prologue
    .line 43
    move-object/from16 v0, p1

    iget v2, v0, Lmiui/imagefilters/ImageData;->width:I

    .line 44
    .local v2, width:I
    move-object/from16 v0, p1

    iget v3, v0, Lmiui/imagefilters/ImageData;->height:I

    .line 45
    .local v3, height:I
    move-object/from16 v0, p1

    iget-object v4, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 47
    .local v4, pixels:[I
    const/4 v14, 0x0

    .line 48
    .local v14, left:F
    const/16 v21, 0x0

    .line 49
    .local v21, top:F
    int-to-float v0, v2

    move/from16 v18, v0

    .line 50
    .local v18, right:F
    int-to-float v11, v3

    .line 52
    .local v11, bottom:F
    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/imagefilters/TransformFilter;->mPointsMapping:[F

    .line 53
    .local v8, pointsMapping:[F
    if-nez v8, :cond_0

    .line 54
    const/16 v1, 0x8

    new-array v8, v1, [F

    .end local v8           #pointsMapping:[F
    const/4 v1, 0x0

    aput v14, v8, v1

    const/4 v1, 0x1

    aput v21, v8, v1

    const/4 v1, 0x2

    aput v18, v8, v1

    const/4 v1, 0x3

    aput v21, v8, v1

    const/4 v1, 0x4

    aput v18, v8, v1

    const/4 v1, 0x5

    aput v11, v8, v1

    const/4 v1, 0x6

    aput v14, v8, v1

    const/4 v1, 0x7

    aput v11, v8, v1

    .line 57
    .restart local v8       #pointsMapping:[F
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/imagefilters/TransformFilter;->mBasedOnContent:Z

    if-eqz v1, :cond_3

    .line 58
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lmiui/imagefilters/TransformFilter;->scanEdge(II[IZZ)I

    move-result v1

    int-to-float v14, v1

    .line 59
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lmiui/imagefilters/TransformFilter;->scanEdge(II[IZZ)I

    move-result v1

    int-to-float v0, v1

    move/from16 v21, v0

    .line 60
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lmiui/imagefilters/TransformFilter;->scanEdge(II[IZZ)I

    move-result v1

    int-to-float v0, v1

    move/from16 v18, v0

    .line 61
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lmiui/imagefilters/TransformFilter;->scanEdge(II[IZZ)I

    move-result v1

    int-to-float v11, v1

    .line 64
    const/high16 v1, -0x4080

    cmpl-float v1, v14, v1

    if-eqz v1, :cond_1

    cmpl-float v1, v14, v18

    if-eqz v1, :cond_1

    cmpl-float v1, v21, v11

    if-nez v1, :cond_2

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/imagefilters/TransformFilter;->mKeepAspectRatio:Z

    if-eqz v1, :cond_3

    .line 69
    sub-float v20, v18, v14

    .line 70
    .local v20, scanedWidth:F
    sub-float v19, v11, v21

    .line 71
    .local v19, scanedHeight:F
    int-to-float v1, v2

    div-float v1, v20, v1

    int-to-float v7, v3

    div-float v7, v19, v7

    cmpl-float v1, v1, v7

    if-lez v1, :cond_4

    .line 72
    int-to-float v1, v2

    div-float v1, v20, v1

    int-to-float v7, v3

    mul-float v16, v1, v7

    .line 73
    .local v16, newHeight:F
    sub-float v1, v16, v19

    const/high16 v7, 0x4000

    div-float/2addr v1, v7

    sub-float v21, v21, v1

    .line 74
    sub-float v1, v16, v19

    const/high16 v7, 0x4000

    div-float/2addr v1, v7

    add-float/2addr v11, v1

    .line 83
    .end local v16           #newHeight:F
    .end local v19           #scanedHeight:F
    .end local v20           #scanedWidth:F
    :cond_3
    :goto_1
    const/16 v1, 0x8

    new-array v6, v1, [F

    const/4 v1, 0x0

    aput v14, v6, v1

    const/4 v1, 0x1

    aput v21, v6, v1

    const/4 v1, 0x2

    aput v18, v6, v1

    const/4 v1, 0x3

    aput v21, v6, v1

    const/4 v1, 0x4

    aput v18, v6, v1

    const/4 v1, 0x5

    aput v11, v6, v1

    const/4 v1, 0x6

    aput v14, v6, v1

    const/4 v1, 0x7

    aput v11, v6, v1

    .line 85
    .local v6, mappingSrc:[F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    .local v5, matrix:Landroid/graphics/Matrix;
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-static/range {p1 .. p1}, Lmiui/imagefilters/ImageData;->imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 88
    .local v13, currentBitmap:Landroid/graphics/Bitmap;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 89
    .local v15, newBitmap:Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    .local v12, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/imagefilters/TransformFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v13, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 92
    invoke-static {v15}, Lmiui/imagefilters/ImageData;->bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v1

    iget-object v1, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    move-object/from16 v0, p1

    iput-object v1, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    goto :goto_0

    .line 76
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v6           #mappingSrc:[F
    .end local v12           #canvas:Landroid/graphics/Canvas;
    .end local v13           #currentBitmap:Landroid/graphics/Bitmap;
    .end local v15           #newBitmap:Landroid/graphics/Bitmap;
    .restart local v19       #scanedHeight:F
    .restart local v20       #scanedWidth:F
    :cond_4
    int-to-float v1, v3

    div-float v1, v19, v1

    int-to-float v7, v2

    mul-float v17, v1, v7

    .line 77
    .local v17, newWidth:F
    sub-float v1, v17, v20

    const/high16 v7, 0x4000

    div-float/2addr v1, v7

    sub-float/2addr v14, v1

    .line 78
    sub-float v1, v17, v20

    const/high16 v7, 0x4000

    div-float/2addr v1, v7

    add-float v18, v18, v1

    goto :goto_1
.end method

.method public setBasedOnContent(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 30
    iput-boolean p1, p0, Lmiui/imagefilters/TransformFilter;->mBasedOnContent:Z

    .line 31
    return-void
.end method

.method public setContentKeepAspectRatio(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 34
    iput-boolean p1, p0, Lmiui/imagefilters/TransformFilter;->mKeepAspectRatio:Z

    .line 35
    return-void
.end method

.method public setMinVisibleAlpha(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 38
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lmiui/imagefilters/TransformFilter;->mMinVisibleAlpha:I

    .line 39
    return-void
.end method

.method public setPointsMapping([F)V
    .locals 2
    .parameter "value"
    .annotation runtime Lmiui/imagefilters/FilterParamType;
        value = .enum Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;
    .end annotation

    .prologue
    .line 24
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 25
    :cond_0
    iput-object p1, p0, Lmiui/imagefilters/TransformFilter;->mPointsMapping:[F

    .line 27
    :cond_1
    return-void
.end method
