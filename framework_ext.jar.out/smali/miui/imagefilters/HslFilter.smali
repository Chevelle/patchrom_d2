.class public Lmiui/imagefilters/HslFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "HslFilter.java"


# instance fields
.field private mHueAdjust:F

.field private mHueModify:F

.field private mLightnessAdjust:F

.field private mLightnessModify:F

.field private mSaturationAdjust:F

.field private mSaturationModify:F

.field public useHsv:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x7fc0

    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 4
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    .line 5
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    .line 6
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    .line 8
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    .line 9
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    .line 10
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 19
    .parameter "imgData"

    .prologue
    .line 63
    move-object/from16 v0, p1

    iget v12, v0, Lmiui/imagefilters/ImageData;->width:I

    .line 64
    .local v12, width:I
    move-object/from16 v0, p1

    iget v4, v0, Lmiui/imagefilters/ImageData;->height:I

    .line 65
    .local v4, height:I
    move-object/from16 v0, p1

    iget-object v8, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 66
    .local v8, pixels:[I
    const/4 v15, 0x3

    new-array v11, v15, [F

    .line 68
    .local v11, triple:[F
    const/4 v13, 0x0

    .local v13, x:I
    :goto_0
    if-ge v13, v12, :cond_d

    .line 69
    const/4 v14, 0x0

    .local v14, y:I
    :goto_1
    if-ge v14, v4, :cond_c

    .line 71
    mul-int v15, v14, v12

    add-int v2, v15, v13

    .line 72
    .local v2, colorIndex:I
    aget v9, v8, v2

    .line 75
    .local v9, rgb:I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    if-eqz v15, :cond_3

    .line 76
    invoke-static {v9, v11}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsv(I[F)V

    .line 80
    :goto_2
    const/4 v15, 0x0

    aget v3, v11, v15

    .line 81
    .local v3, h:F
    const/4 v15, 0x1

    aget v10, v11, v15

    .line 82
    .local v10, s:F
    const/4 v15, 0x2

    aget v5, v11, v15

    .line 85
    .local v5, l:F
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_4

    .line 86
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    .line 97
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_6

    .line 98
    move-object/from16 v0, p0

    iget v10, v0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    .line 114
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_9

    .line 115
    move-object/from16 v0, p0

    iget v5, v0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    .line 126
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    if-eqz v15, :cond_b

    .line 127
    invoke-static {v3, v10, v5}, Lmiui/imagefilters/ImageFilterUtils;->HsvToRgb(FFF)I

    move-result v7

    .line 133
    .local v7, newRgb:I
    :goto_6
    const v15, 0xffffff

    and-int/2addr v15, v7

    aget v16, v8, v2

    const/high16 v17, -0x100

    and-int v16, v16, v17

    or-int v15, v15, v16

    aput v15, v8, v2

    .line 69
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 78
    .end local v3           #h:F
    .end local v5           #l:F
    .end local v7           #newRgb:I
    .end local v10           #s:F
    :cond_3
    invoke-static {v9, v11}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(I[F)V

    goto :goto_2

    .line 87
    .restart local v3       #h:F
    .restart local v5       #l:F
    .restart local v10       #s:F
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    add-float/2addr v3, v15

    .line 89
    const/high16 v15, 0x43b4

    cmpl-float v15, v3, v15

    if-ltz v15, :cond_5

    .line 90
    const/high16 v15, 0x43b4

    sub-float/2addr v3, v15

    goto :goto_3

    .line 91
    :cond_5
    const/4 v15, 0x0

    cmpg-float v15, v3, v15

    if-gez v15, :cond_0

    .line 92
    const/high16 v15, 0x43b4

    add-float/2addr v3, v15

    goto :goto_3

    .line 99
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_1

    .line 100
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_8

    .line 101
    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    move/from16 v16, v0

    add-float v15, v15, v16

    mul-float/2addr v10, v15

    .line 110
    :cond_7
    :goto_7
    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-static {v15, v10, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v10

    goto :goto_4

    .line 103
    :cond_8
    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    move/from16 v16, v0

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 104
    .local v6, multipleFactor:F
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    const/high16 v16, 0x3f00

    sub-float v15, v15, v16

    const/high16 v16, 0x4000

    mul-float v1, v15, v16

    .line 105
    .local v1, additionFactor:F
    const/high16 v15, 0x3f80

    add-float/2addr v15, v6

    mul-float/2addr v10, v15

    .line 106
    const/4 v15, 0x0

    cmpl-float v15, v1, v15

    if-lez v15, :cond_7

    .line 107
    add-float/2addr v10, v1

    goto :goto_7

    .line 116
    .end local v1           #additionFactor:F
    .end local v6           #multipleFactor:F
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_2

    .line 117
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_a

    .line 118
    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    move/from16 v16, v0

    add-float v15, v15, v16

    mul-float/2addr v5, v15

    goto/16 :goto_5

    .line 120
    :cond_a
    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f80

    sub-float v16, v16, v5

    const/high16 v17, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    mul-float v16, v16, v17

    sub-float v5, v15, v16

    goto/16 :goto_5

    .line 129
    :cond_b
    invoke-static {v3, v10, v5}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb(FFF)I

    move-result v7

    .restart local v7       #newRgb:I
    goto/16 :goto_6

    .line 68
    .end local v2           #colorIndex:I
    .end local v3           #h:F
    .end local v5           #l:F
    .end local v7           #newRgb:I
    .end local v9           #rgb:I
    .end local v10           #s:F
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 136
    .end local v14           #y:I
    :cond_d
    return-void
.end method

.method public setHueAdjust(F)V
    .locals 2
    .parameter "hue"

    .prologue
    .line 41
    const/high16 v0, -0x3ccc

    const/high16 v1, 0x4334

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    .line 42
    return-void
.end method

.method public setHueModify(F)V
    .locals 2
    .parameter "hue"

    .prologue
    .line 18
    const/4 v0, 0x0

    const v1, 0x43b3fffd

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    .line 19
    return-void
.end method

.method public setLightnessAdjust(F)V
    .locals 2
    .parameter "lightness"

    .prologue
    .line 56
    const/high16 v0, 0x42c8

    div-float/2addr p1, v0

    .line 57
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    .line 58
    return-void
.end method

.method public setLightnessModify(F)V
    .locals 2
    .parameter "lightness"

    .prologue
    .line 33
    const/high16 v0, 0x42c8

    div-float/2addr p1, v0

    .line 34
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    .line 35
    return-void
.end method

.method public setSaturationAdjust(F)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 48
    const/high16 v0, 0x42c8

    div-float/2addr p1, v0

    .line 49
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    .line 50
    return-void
.end method

.method public setSaturationModify(F)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 25
    const/high16 v0, 0x42c8

    div-float/2addr p1, v0

    .line 26
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    .line 27
    return-void
.end method
