.class public Lmiui/imagefilters/GrayScaleFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "GrayScaleFilter.java"


# instance fields
.field private mBlackColor:I

.field private mWhiteColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 6
    const/high16 v0, -0x100

    iput v0, p0, Lmiui/imagefilters/GrayScaleFilter;->mBlackColor:I

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lmiui/imagefilters/GrayScaleFilter;->mWhiteColor:I

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 26
    .parameter "imgData"

    .prologue
    .line 20
    move-object/from16 v0, p1

    iget v0, v0, Lmiui/imagefilters/ImageData;->width:I

    move/from16 v21, v0

    .line 21
    .local v21, width:I
    move-object/from16 v0, p1

    iget v12, v0, Lmiui/imagefilters/ImageData;->height:I

    .line 22
    .local v12, height:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    move-object/from16 v18, v0

    .line 24
    .local v18, pixels:[I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/GrayScaleFilter;->mBlackColor:I

    move/from16 v24, v0

    ushr-int/lit8 v4, v24, 0x18

    .line 25
    .local v4, aBlack:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/GrayScaleFilter;->mWhiteColor:I

    move/from16 v24, v0

    ushr-int/lit8 v5, v24, 0x18

    .line 26
    .local v5, aWhite:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/GrayScaleFilter;->mBlackColor:I

    move/from16 v24, v0

    ushr-int/lit8 v24, v24, 0x10

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 27
    .local v19, rBlack:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/GrayScaleFilter;->mWhiteColor:I

    move/from16 v24, v0

    ushr-int/lit8 v24, v24, 0x10

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 28
    .local v20, rWhite:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/GrayScaleFilter;->mBlackColor:I

    move/from16 v24, v0

    ushr-int/lit8 v24, v24, 0x8

    move/from16 v0, v24

    and-int/lit16 v10, v0, 0xff

    .line 29
    .local v10, gBlack:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/GrayScaleFilter;->mWhiteColor:I

    move/from16 v24, v0

    ushr-int/lit8 v24, v24, 0x8

    move/from16 v0, v24

    and-int/lit16 v11, v0, 0xff

    .line 30
    .local v11, gWhite:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/GrayScaleFilter;->mBlackColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v7, v0, 0xff

    .line 31
    .local v7, bBlack:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/GrayScaleFilter;->mWhiteColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v8, v0, 0xff

    .line 33
    .local v8, bWhite:I
    const/16 v22, 0x0

    .local v22, x:I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 34
    const/16 v23, 0x0

    .local v23, y:I
    :goto_1
    move/from16 v0, v23

    if-ge v0, v12, :cond_0

    .line 36
    mul-int v24, v23, v21

    add-int v9, v24, v22

    .line 37
    .local v9, colorIndex:I
    aget v6, v18, v9

    .line 40
    .local v6, argb:I
    invoke-static {v6}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v13

    .line 43
    .local v13, luminance:I
    const/16 v24, 0x0

    const/16 v25, 0xff

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v4, v5, v13}, Lmiui/imagefilters/ImageFilterUtils;->interpolate(IIIII)I

    move-result v14

    .line 44
    .local v14, newA:I
    const/16 v24, 0x0

    const/16 v25, 0xff

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v13}, Lmiui/imagefilters/ImageFilterUtils;->interpolate(IIIII)I

    move-result v17

    .line 45
    .local v17, newR:I
    const/16 v24, 0x0

    const/16 v25, 0xff

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v10, v11, v13}, Lmiui/imagefilters/ImageFilterUtils;->interpolate(IIIII)I

    move-result v16

    .line 46
    .local v16, newG:I
    const/16 v24, 0x0

    const/16 v25, 0xff

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v7, v8, v13}, Lmiui/imagefilters/ImageFilterUtils;->interpolate(IIIII)I

    move-result v15

    .line 49
    .local v15, newB:I
    ushr-int/lit8 v24, v6, 0x18

    mul-int v24, v24, v14

    move/from16 v0, v24

    div-int/lit16 v14, v0, 0xff

    .line 52
    shl-int/lit8 v24, v14, 0x18

    shl-int/lit8 v25, v17, 0x10

    or-int v24, v24, v25

    shl-int/lit8 v25, v16, 0x8

    or-int v24, v24, v25

    or-int v24, v24, v15

    aput v24, v18, v9

    .line 34
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 33
    .end local v6           #argb:I
    .end local v9           #colorIndex:I
    .end local v13           #luminance:I
    .end local v14           #newA:I
    .end local v15           #newB:I
    .end local v16           #newG:I
    .end local v17           #newR:I
    :cond_0
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 55
    .end local v23           #y:I
    :cond_1
    return-void
.end method

.method public setBlackColor(Ljava/lang/String;)V
    .locals 1
    .parameter "strColor"

    .prologue
    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/imagefilters/GrayScaleFilter;->mBlackColor:I

    .line 11
    return-void
.end method

.method public setWhiteColor(Ljava/lang/String;)V
    .locals 1
    .parameter "strColor"

    .prologue
    .line 14
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/imagefilters/GrayScaleFilter;->mWhiteColor:I

    .line 15
    return-void
.end method
