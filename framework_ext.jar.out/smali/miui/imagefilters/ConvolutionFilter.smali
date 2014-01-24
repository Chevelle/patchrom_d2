.class public Lmiui/imagefilters/ConvolutionFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "ConvolutionFilter.java"


# instance fields
.field private mBias:I

.field private mDivisor:I

.field private mIsFilterA:Z

.field private mIsFilterB:Z

.field private mIsFilterG:Z

.field private mIsFilterR:Z

.field private mIsParamsFormated:Z

.field private mMatrix:[I

.field private mMatrixSideLength:I

.field private mRepeatCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 12
    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterR:Z

    .line 13
    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterG:Z

    .line 14
    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterB:Z

    .line 15
    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterA:Z

    return-void
.end method

.method private declared-synchronized formatParams()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 49
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 50
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z

    .line 52
    iget-object v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    array-length v1, v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iput v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    .line 61
    :cond_2
    :goto_1
    iget v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    if-nez v1, :cond_0

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 63
    iget v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    iget-object v2, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 54
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    array-length v1, v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    iput v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 56
    :cond_4
    :try_start_2
    iget-object v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    array-length v1, v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    .line 57
    iget v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    iget v2, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    array-length v2, v2

    if-eq v1, v2, :cond_5

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "matrix must be a square matrix."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_5
    iget v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    rem-int/lit8 v1, v1, 0x2

    if-eq v1, v3, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "matrixX and matrixY must be odd."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .restart local v0       #i:I
    :cond_6
    iget v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static final getColor([IIIII)I
    .locals 2
    .parameter "pixels"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 130
    add-int/lit8 v0, p3, -0x1

    invoke-static {v1, p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p1

    .line 131
    add-int/lit8 v0, p4, -0x1

    invoke-static {v1, p2, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p2

    .line 132
    mul-int v0, p2, p3

    add-int/2addr v0, p1

    aget v0, p0, v0

    return v0
.end method

.method private processOnce(Lmiui/imagefilters/ImageData;)V
    .locals 8
    .parameter "imgData"

    .prologue
    .line 83
    iget v4, p1, Lmiui/imagefilters/ImageData;->width:I

    .line 84
    .local v4, width:I
    iget v5, p1, Lmiui/imagefilters/ImageData;->height:I

    .line 85
    .local v5, height:I
    iget-object v1, p1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 86
    .local v1, pixels:[I
    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->getBackPixels()[I

    move-result-object v6

    .line 88
    .local v6, backPixels:[I
    const/4 v3, 0x0

    .local v3, y:I
    :goto_0
    add-int/lit8 v0, v5, -0x1

    if-gt v3, v0, :cond_1

    .line 89
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    add-int/lit8 v0, v4, -0x1

    if-gt v2, v0, :cond_0

    .line 90
    mul-int v0, v3, v4

    add-int v7, v0, v2

    .local v7, colorIndex:I
    move-object v0, p0

    .line 91
    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/ConvolutionFilter;->processPerPixel([IIIII)I

    move-result v0

    aput v0, v6, v7

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    .end local v7           #colorIndex:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v2           #x:I
    :cond_1
    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->swapPixels()V

    .line 95
    return-void
.end method

.method private processPerPixel([IIIII)I
    .locals 22
    .parameter "pixels"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 98
    const/16 v16, 0x0

    .line 99
    .local v16, totalR:I
    const/4 v15, 0x0

    .line 100
    .local v15, totalG:I
    const/4 v14, 0x0

    .line 101
    .local v14, totalB:I
    const/4 v13, 0x0

    .line 102
    .local v13, totalA:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    div-int/lit8 v12, v19, 0x2

    .line 104
    .local v12, radius:I
    const/4 v6, 0x0

    .line 105
    .local v6, i:I
    neg-int v0, v12

    move/from16 v18, v0

    .local v18, yCursor:I
    :goto_0
    move/from16 v0, v18

    if-gt v0, v12, :cond_5

    .line 106
    neg-int v0, v12

    move/from16 v17, v0

    .local v17, xCursor:I
    :goto_1
    move/from16 v0, v17

    if-gt v0, v12, :cond_4

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    move-object/from16 v19, v0

    aget v7, v19, v6

    .line 108
    .local v7, matrixEle:I
    add-int v19, p2, v17

    add-int v20, p3, v18

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/imagefilters/ConvolutionFilter;->getColor([IIIII)I

    move-result v5

    .line 110
    .local v5, color:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterR:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    ushr-int/lit8 v19, v5, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    mul-int v19, v19, v7

    add-int v16, v16, v19

    .line 111
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    ushr-int/lit8 v19, v5, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    mul-int v19, v19, v7

    add-int v15, v15, v19

    .line 112
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterB:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    and-int/lit16 v0, v5, 0xff

    move/from16 v19, v0

    mul-int v19, v19, v7

    add-int v14, v14, v19

    .line 113
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterA:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    ushr-int/lit8 v19, v5, 0x18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    mul-int v19, v19, v7

    add-int v13, v13, v19

    .line 115
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 106
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 105
    .end local v5           #color:I
    .end local v7           #matrixEle:I
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 119
    .end local v17           #xCursor:I
    :cond_5
    invoke-static/range {p1 .. p5}, Lmiui/imagefilters/ConvolutionFilter;->getColor([IIIII)I

    move-result v5

    .line 121
    .restart local v5       #color:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterR:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    move/from16 v20, v0

    div-int v20, v16, v20

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    move/from16 v21, v0

    add-int v20, v20, v21

    const/16 v21, 0xff

    invoke-static/range {v19 .. v21}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v11

    .line 122
    .local v11, newR:I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    move/from16 v20, v0

    div-int v20, v15, v20

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    move/from16 v21, v0

    add-int v20, v20, v21

    const/16 v21, 0xff

    invoke-static/range {v19 .. v21}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v10

    .line 123
    .local v10, newG:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterB:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    move/from16 v20, v0

    div-int v20, v14, v20

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    move/from16 v21, v0

    add-int v20, v20, v21

    const/16 v21, 0xff

    invoke-static/range {v19 .. v21}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v9

    .line 124
    .local v9, newB:I
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterA:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    move/from16 v20, v0

    div-int v20, v13, v20

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    move/from16 v21, v0

    add-int v20, v20, v21

    const/16 v21, 0xff

    invoke-static/range {v19 .. v21}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v8

    .line 126
    .local v8, newA:I
    :goto_5
    shl-int/lit8 v19, v8, 0x18

    shl-int/lit8 v20, v11, 0x10

    or-int v19, v19, v20

    shl-int/lit8 v20, v10, 0x8

    or-int v19, v19, v20

    or-int v19, v19, v9

    return v19

    .line 121
    .end local v8           #newA:I
    .end local v9           #newB:I
    .end local v10           #newG:I
    .end local v11           #newR:I
    :cond_6
    ushr-int/lit8 v19, v5, 0x10

    move/from16 v0, v19

    and-int/lit16 v11, v0, 0xff

    goto :goto_2

    .line 122
    .restart local v11       #newR:I
    :cond_7
    ushr-int/lit8 v19, v5, 0x8

    move/from16 v0, v19

    and-int/lit16 v10, v0, 0xff

    goto :goto_3

    .line 123
    .restart local v10       #newG:I
    :cond_8
    and-int/lit16 v9, v5, 0xff

    goto :goto_4

    .line 124
    .restart local v9       #newB:I
    :cond_9
    ushr-int/lit8 v19, v5, 0x18

    move/from16 v0, v19

    and-int/lit16 v8, v0, 0xff

    goto :goto_5
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 3
    .parameter "imgData"

    .prologue
    const/4 v1, 0x1

    .line 72
    iget-boolean v2, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmiui/imagefilters/ConvolutionFilter;->formatParams()V

    .line 74
    :cond_0
    iget-object v2, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    if-nez v2, :cond_2

    .line 80
    :cond_1
    return-void

    .line 76
    :cond_2
    iget v2, p0, Lmiui/imagefilters/ConvolutionFilter;->mRepeatCount:I

    if-gt v2, v1, :cond_3

    .line 77
    .local v1, repeatCount:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 78
    invoke-direct {p0, p1}, Lmiui/imagefilters/ConvolutionFilter;->processOnce(Lmiui/imagefilters/ImageData;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    .end local v0           #i:I
    .end local v1           #repeatCount:I
    :cond_3
    iget v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mRepeatCount:I

    goto :goto_0
.end method

.method public setBias(I)V
    .locals 0
    .parameter "bias"

    .prologue
    .line 36
    iput p1, p0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    .line 37
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 40
    const/4 v1, 0x4

    new-array v0, v1, [Z

    .line 41
    .local v0, outRgba:[Z
    invoke-static {p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->checkChannelParam(Ljava/lang/String;[Z)V

    .line 42
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterR:Z

    .line 43
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterG:Z

    .line 44
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterB:Z

    .line 45
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterA:Z

    .line 46
    return-void
.end method

.method public setDivisor(I)V
    .locals 1
    .parameter "divisor"

    .prologue
    .line 31
    iput p1, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z

    .line 33
    return-void
.end method

.method public setMatrix([I)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 22
    iput-object p1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z

    .line 24
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 27
    iput p1, p0, Lmiui/imagefilters/ConvolutionFilter;->mRepeatCount:I

    .line 28
    return-void
.end method
