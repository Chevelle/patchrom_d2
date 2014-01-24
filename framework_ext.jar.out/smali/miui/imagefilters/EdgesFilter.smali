.class public Lmiui/imagefilters/EdgesFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "EdgesFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 17
    .parameter "imgData"

    .prologue
    .line 11
    move-object/from16 v0, p1

    iget v11, v0, Lmiui/imagefilters/ImageData;->width:I

    .line 12
    .local v11, width:I
    move-object/from16 v0, p1

    iget v5, v0, Lmiui/imagefilters/ImageData;->height:I

    .line 13
    .local v5, height:I
    move-object/from16 v0, p1

    iget-object v10, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 14
    .local v10, pixels:[I
    const/4 v14, 0x3

    new-array v6, v14, [F

    .line 16
    .local v6, hsl:[F
    filled-new-array {v11, v5}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 17
    .local v7, luminance:[[I
    const/4 v13, 0x0

    .local v13, y:I
    :goto_0
    if-ge v13, v5, :cond_1

    .line 18
    const/4 v12, 0x0

    .local v12, x:I
    :goto_1
    if-ge v12, v11, :cond_0

    .line 19
    mul-int v14, v13, v11

    add-int/2addr v14, v12

    aget v1, v10, v14

    .line 20
    .local v1, color:I
    aget-object v14, v7, v12

    invoke-static {v1}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v15

    aput v15, v14, v13

    .line 18
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 17
    .end local v1           #color:I
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 26
    .end local v12           #x:I
    :cond_1
    const/4 v13, 0x1

    :goto_2
    add-int/lit8 v14, v5, -0x1

    if-ge v13, v14, :cond_3

    .line 27
    const/4 v12, 0x1

    .restart local v12       #x:I
    :goto_3
    add-int/lit8 v14, v11, -0x1

    if-ge v12, v14, :cond_2

    .line 28
    mul-int v14, v13, v11

    add-int v2, v14, v12

    .line 30
    .local v2, colorIndex:I
    add-int/lit8 v14, v12, -0x1

    aget-object v14, v7, v14

    add-int/lit8 v15, v13, -0x1

    aget v14, v14, v15

    neg-int v14, v14

    add-int/lit8 v15, v12, -0x1

    aget-object v15, v7, v15

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x2

    aget v15, v15, v16

    add-int/2addr v14, v15

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x1

    aget-object v15, v7, v15

    add-int/lit8 v16, v13, -0x1

    aget v15, v15, v16

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x1

    aget-object v15, v7, v15

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x2

    aget v15, v15, v16

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x2

    aget-object v15, v7, v15

    add-int/lit8 v16, v13, -0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x2

    aget-object v15, v7, v15

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x2

    aget v15, v15, v16

    add-int v3, v14, v15

    .line 32
    .local v3, grayX:I
    add-int/lit8 v14, v12, -0x1

    aget-object v14, v7, v14

    add-int/lit8 v15, v13, -0x1

    aget v14, v14, v15

    add-int/lit8 v15, v12, -0x1

    aget-object v15, v7, v15

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x1

    aget v15, v15, v16

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    add-int/lit8 v15, v12, -0x1

    aget-object v15, v7, v15

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x2

    aget v15, v15, v16

    add-int/2addr v14, v15

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x2

    aget-object v15, v7, v15

    add-int/lit8 v16, v13, -0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x2

    aget-object v15, v7, v15

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x1

    aget v15, v15, v16

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    add-int/lit8 v15, v12, -0x1

    add-int/lit8 v15, v15, 0x2

    aget-object v15, v7, v15

    add-int/lit8 v16, v13, -0x1

    add-int/lit8 v16, v16, 0x2

    aget v15, v15, v16

    sub-int v4, v14, v15

    .line 35
    .local v4, grayY:I
    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v15

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    const/16 v16, 0xff

    invoke-static/range {v14 .. v16}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v14

    rsub-int v8, v14, 0xff

    .line 37
    .local v8, magnitude:I
    aget v14, v10, v2

    invoke-static {v14, v6}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(I[F)V

    .line 38
    const/4 v14, 0x2

    int-to-float v15, v8

    const/high16 v16, 0x437f

    div-float v15, v15, v16

    aput v15, v6, v14

    .line 39
    invoke-static {v6}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb([F)I

    move-result v9

    .line 40
    .local v9, newRgb:I
    const v14, 0xffffff

    and-int/2addr v14, v9

    aget v15, v10, v2

    const/high16 v16, -0x100

    and-int v15, v15, v16

    or-int/2addr v14, v15

    aput v14, v10, v2

    .line 27
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 26
    .end local v2           #colorIndex:I
    .end local v3           #grayX:I
    .end local v4           #grayY:I
    .end local v8           #magnitude:I
    .end local v9           #newRgb:I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 43
    .end local v12           #x:I
    :cond_3
    return-void
.end method
