.class public Lmiui/imagefilters/ColorMatrixFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "ColorMatrixFilter.java"


# instance fields
.field private mColorMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 40
    .parameter "imgData"

    .prologue
    .line 18
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x14

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1

    .line 62
    :cond_0
    return-void

    .line 20
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lmiui/imagefilters/ImageData;->width:I

    move/from16 v34, v0

    .line 21
    .local v34, width:I
    move-object/from16 v0, p1

    iget v0, v0, Lmiui/imagefilters/ImageData;->height:I

    move/from16 v16, v0

    .line 22
    .local v16, height:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    move-object/from16 v29, v0

    .line 24
    .local v29, pixels:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget v6, v37, v38

    .line 25
    .local v6, a:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v7, v37, v38

    .line 26
    .local v7, b:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x2

    aget v8, v37, v38

    .line 27
    .local v8, c:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x3

    aget v11, v37, v38

    .line 28
    .local v11, d:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x4

    aget v12, v37, v38

    .line 29
    .local v12, e:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x5

    aget v13, v37, v38

    .line 30
    .local v13, f:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x6

    aget v14, v37, v38

    .line 31
    .local v14, g:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x7

    aget v15, v37, v38

    .line 32
    .local v15, h:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x8

    aget v17, v37, v38

    .line 33
    .local v17, i:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x9

    aget v18, v37, v38

    .line 34
    .local v18, j:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0xa

    aget v19, v37, v38

    .line 35
    .local v19, k:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0xb

    aget v20, v37, v38

    .line 36
    .local v20, l:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0xc

    aget v21, v37, v38

    .line 37
    .local v21, m:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0xd

    aget v22, v37, v38

    .line 38
    .local v22, n:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0xe

    aget v27, v37, v38

    .line 39
    .local v27, o:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0xf

    aget v28, v37, v38

    .line 40
    .local v28, p:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x10

    aget v30, v37, v38

    .line 41
    .local v30, q:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x11

    aget v31, v37, v38

    .line 42
    .local v31, r:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x12

    aget v32, v37, v38

    .line 43
    .local v32, s:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    move-object/from16 v37, v0

    const/16 v38, 0x13

    aget v33, v37, v38

    .line 45
    .local v33, t:F
    const/16 v36, 0x0

    .local v36, y:I
    :goto_0
    add-int/lit8 v37, v16, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-gt v0, v1, :cond_0

    .line 46
    const/16 v35, 0x0

    .local v35, x:I
    :goto_1
    add-int/lit8 v37, v34, -0x1

    move/from16 v0, v35

    move/from16 v1, v37

    if-gt v0, v1, :cond_2

    .line 47
    mul-int v37, v36, v34

    add-int v10, v37, v35

    .line 48
    .local v10, colorIndex:I
    aget v9, v29, v10

    .line 49
    .local v9, color:I
    ushr-int/lit8 v37, v9, 0x10

    move/from16 v0, v37

    and-int/lit16 v5, v0, 0xff

    .line 50
    .local v5, R:I
    ushr-int/lit8 v37, v9, 0x8

    move/from16 v0, v37

    and-int/lit16 v4, v0, 0xff

    .line 51
    .local v4, G:I
    and-int/lit16 v3, v9, 0xff

    .line 52
    .local v3, B:I
    ushr-int/lit8 v37, v9, 0x18

    move/from16 v0, v37

    and-int/lit16 v2, v0, 0xff

    .line 54
    .local v2, A:I
    const/16 v37, 0x0

    int-to-float v0, v5

    move/from16 v38, v0

    mul-float v38, v38, v6

    int-to-float v0, v4

    move/from16 v39, v0

    mul-float v39, v39, v7

    add-float v38, v38, v39

    int-to-float v0, v3

    move/from16 v39, v0

    mul-float v39, v39, v8

    add-float v38, v38, v39

    int-to-float v0, v2

    move/from16 v39, v0

    mul-float v39, v39, v11

    add-float v38, v38, v39

    add-float v38, v38, v12

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    const/16 v39, 0xff

    invoke-static/range {v37 .. v39}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v26

    .line 55
    .local v26, newR:I
    const/16 v37, 0x0

    int-to-float v0, v5

    move/from16 v38, v0

    mul-float v38, v38, v13

    int-to-float v0, v4

    move/from16 v39, v0

    mul-float v39, v39, v14

    add-float v38, v38, v39

    int-to-float v0, v3

    move/from16 v39, v0

    mul-float v39, v39, v15

    add-float v38, v38, v39

    int-to-float v0, v2

    move/from16 v39, v0

    mul-float v39, v39, v17

    add-float v38, v38, v39

    add-float v38, v38, v18

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    const/16 v39, 0xff

    invoke-static/range {v37 .. v39}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v25

    .line 56
    .local v25, newG:I
    const/16 v37, 0x0

    int-to-float v0, v5

    move/from16 v38, v0

    mul-float v38, v38, v19

    int-to-float v0, v4

    move/from16 v39, v0

    mul-float v39, v39, v20

    add-float v38, v38, v39

    int-to-float v0, v3

    move/from16 v39, v0

    mul-float v39, v39, v21

    add-float v38, v38, v39

    int-to-float v0, v2

    move/from16 v39, v0

    mul-float v39, v39, v22

    add-float v38, v38, v39

    add-float v38, v38, v27

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    const/16 v39, 0xff

    invoke-static/range {v37 .. v39}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v24

    .line 57
    .local v24, newB:I
    const/16 v37, 0x0

    int-to-float v0, v5

    move/from16 v38, v0

    mul-float v38, v38, v28

    int-to-float v0, v4

    move/from16 v39, v0

    mul-float v39, v39, v30

    add-float v38, v38, v39

    int-to-float v0, v3

    move/from16 v39, v0

    mul-float v39, v39, v31

    add-float v38, v38, v39

    int-to-float v0, v2

    move/from16 v39, v0

    mul-float v39, v39, v32

    add-float v38, v38, v39

    add-float v38, v38, v33

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    const/16 v39, 0xff

    invoke-static/range {v37 .. v39}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v23

    .line 59
    .local v23, newA:I
    shl-int/lit8 v37, v23, 0x18

    shl-int/lit8 v38, v26, 0x10

    or-int v37, v37, v38

    shl-int/lit8 v38, v25, 0x8

    or-int v37, v37, v38

    or-int v37, v37, v24

    aput v37, v29, v10

    .line 46
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_1

    .line 45
    .end local v2           #A:I
    .end local v3           #B:I
    .end local v4           #G:I
    .end local v5           #R:I
    .end local v9           #color:I
    .end local v10           #colorIndex:I
    .end local v23           #newA:I
    .end local v24           #newB:I
    .end local v25           #newG:I
    .end local v26           #newR:I
    :cond_2
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_0
.end method

.method public setColorMatrix([F)V
    .locals 0
    .parameter "colorMatrix"

    .prologue
    .line 13
    iput-object p1, p0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    .line 14
    return-void
.end method
