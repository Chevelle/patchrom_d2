.class public Lmiui/imagefilters/ThresholdFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "ThresholdFilter.java"


# instance fields
.field private mThresholdLevel:I

.field private mUniform:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 5
    const/16 v0, 0x80

    iput v0, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 17
    .parameter "imgData"

    .prologue
    .line 18
    move-object/from16 v0, p1

    iget v12, v0, Lmiui/imagefilters/ImageData;->width:I

    .line 19
    .local v12, width:I
    move-object/from16 v0, p1

    iget v5, v0, Lmiui/imagefilters/ImageData;->height:I

    .line 20
    .local v5, height:I
    move-object/from16 v0, p1

    iget-object v9, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 22
    .local v9, pixels:[I
    const/4 v10, 0x0

    .line 23
    .local v10, thresholdLevel:I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmiui/imagefilters/ThresholdFilter;->mUniform:Z

    if-nez v15, :cond_1

    .line 24
    move-object/from16 v0, p0

    iget v10, v0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    .line 52
    :cond_0
    :goto_0
    const/4 v14, 0x0

    .local v14, y:I
    :goto_1
    if-ge v14, v5, :cond_8

    .line 53
    const/4 v13, 0x0

    .local v13, x:I
    :goto_2
    if-ge v13, v12, :cond_7

    .line 54
    mul-int v15, v14, v12

    add-int v2, v15, v13

    .line 55
    .local v2, colorIndex:I
    aget v1, v9, v2

    .line 56
    .local v1, argb:I
    invoke-static {v1}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v3

    .line 57
    .local v3, grayscale:I
    if-lt v3, v10, :cond_6

    .line 58
    const/high16 v15, -0x100

    and-int/2addr v15, v1

    const v16, 0xffffff

    or-int v15, v15, v16

    aput v15, v9, v2

    .line 53
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 26
    .end local v1           #argb:I
    .end local v2           #colorIndex:I
    .end local v3           #grayscale:I
    .end local v13           #x:I
    .end local v14           #y:I
    :cond_1
    array-length v11, v9

    .line 27
    .local v11, visiblePixelCount:I
    const/16 v15, 0x100

    new-array v8, v15, [I

    .line 28
    .local v8, perGrayscaleCount:[I
    const/4 v14, 0x0

    .restart local v14       #y:I
    :goto_4
    if-ge v14, v5, :cond_4

    .line 29
    const/4 v13, 0x0

    .restart local v13       #x:I
    :goto_5
    if-ge v13, v12, :cond_3

    .line 30
    mul-int v15, v14, v12

    add-int v2, v15, v13

    .line 31
    .restart local v2       #colorIndex:I
    aget v1, v9, v2

    .line 32
    .restart local v1       #argb:I
    ushr-int/lit8 v15, v1, 0x18

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 33
    add-int/lit8 v11, v11, -0x1

    .line 29
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 36
    :cond_2
    invoke-static {v1}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v3

    .line 37
    .restart local v3       #grayscale:I
    aget v15, v8, v3

    add-int/lit8 v15, v15, 0x1

    aput v15, v8, v3

    goto :goto_6

    .line 28
    .end local v1           #argb:I
    .end local v2           #colorIndex:I
    .end local v3           #grayscale:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 41
    .end local v13           #x:I
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    mul-int/2addr v15, v11

    div-int/lit16 v6, v15, 0xff

    .line 42
    .local v6, highThresholdCount:I
    const/4 v4, 0x0

    .line 43
    .local v4, grayscaleStep:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_7
    const/16 v15, 0x100

    if-ge v7, v15, :cond_0

    .line 44
    aget v15, v8, v7

    add-int/2addr v4, v15

    .line 45
    if-lt v4, v6, :cond_5

    .line 46
    move v10, v7

    .line 47
    goto :goto_0

    .line 43
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 60
    .end local v4           #grayscaleStep:I
    .end local v6           #highThresholdCount:I
    .end local v7           #i:I
    .end local v8           #perGrayscaleCount:[I
    .end local v11           #visiblePixelCount:I
    .restart local v1       #argb:I
    .restart local v2       #colorIndex:I
    .restart local v3       #grayscale:I
    .restart local v13       #x:I
    :cond_6
    const/high16 v15, -0x100

    and-int/2addr v15, v1

    aput v15, v9, v2

    goto :goto_3

    .line 52
    .end local v1           #argb:I
    .end local v2           #colorIndex:I
    .end local v3           #grayscale:I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 64
    .end local v13           #x:I
    :cond_8
    return-void
.end method

.method public setThresholdLevel(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 9
    iput p1, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    .line 10
    return-void
.end method

.method public setUniform(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 13
    iput-boolean p1, p0, Lmiui/imagefilters/ThresholdFilter;->mUniform:Z

    .line 14
    return-void
.end method
