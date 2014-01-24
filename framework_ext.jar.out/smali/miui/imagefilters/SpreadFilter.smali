.class public Lmiui/imagefilters/SpreadFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "SpreadFilter.java"


# instance fields
.field private mIsAlphaSpread:Z

.field private mIsSpreadBlack:Z

.field private mRadius:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/SpreadFilter;->mIsSpreadBlack:Z

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    return-void
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

    .line 70
    add-int/lit8 v0, p3, -0x1

    invoke-static {v1, p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p1

    .line 71
    add-int/lit8 v0, p4, -0x1

    invoke-static {v1, p2, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p2

    .line 72
    mul-int v0, p2, p3

    add-int/2addr v0, p1

    aget v0, p0, v0

    return v0
.end method

.method private getLuminance(II)I
    .locals 2
    .parameter "color"
    .parameter "alpha"

    .prologue
    .line 63
    invoke-static {p1}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v0

    .line 64
    .local v0, lum:I
    iget-boolean v1, p0, Lmiui/imagefilters/SpreadFilter;->mIsSpreadBlack:Z

    if-eqz v1, :cond_0

    rsub-int v0, v0, 0xff

    .line 65
    :cond_0
    mul-int/2addr v0, p2

    .line 66
    return v0
.end method

.method private processPerPixel([IIIII)I
    .locals 13
    .parameter "pixels"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 38
    iget v11, p0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    iget v12, p0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    mul-int v5, v11, v12

    .line 39
    .local v5, radiusSquare:I
    iget-boolean v11, p0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    if-eqz v11, :cond_0

    const/16 v6, 0xff

    .line 40
    .local v6, resultA:I
    :goto_0
    const/4 v8, 0x0

    .line 41
    .local v8, resultRgb:I
    const/4 v7, -0x1

    .line 43
    .local v7, resultLuminance:I
    iget v11, p0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    neg-int v10, v11

    .local v10, yCursor:I
    :goto_1
    iget v11, p0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    if-gt v10, v11, :cond_5

    .line 44
    iget v11, p0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    neg-int v9, v11

    .local v9, xCursor:I
    :goto_2
    iget v11, p0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    if-gt v9, v11, :cond_4

    .line 45
    mul-int v11, v10, v10

    mul-int v12, v9, v9

    add-int/2addr v11, v12

    if-le v11, v5, :cond_1

    .line 44
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 39
    .end local v6           #resultA:I
    .end local v7           #resultLuminance:I
    .end local v8           #resultRgb:I
    .end local v9           #xCursor:I
    .end local v10           #yCursor:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 47
    .restart local v6       #resultA:I
    .restart local v7       #resultLuminance:I
    .restart local v8       #resultRgb:I
    .restart local v9       #xCursor:I
    .restart local v10       #yCursor:I
    :cond_1
    add-int v11, p2, v9

    add-int v12, p3, v10

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p1, v11, v12, v0, v1}, Lmiui/imagefilters/SpreadFilter;->getColor([IIIII)I

    move-result v3

    .line 48
    .local v3, color:I
    ushr-int/lit8 v11, v3, 0x18

    and-int/lit16 v2, v11, 0xff

    .line 49
    .local v2, alpha:I
    invoke-direct {p0, v3, v2}, Lmiui/imagefilters/SpreadFilter;->getLuminance(II)I

    move-result v4

    .line 50
    .local v4, lum:I
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 51
    if-ne v7, v4, :cond_2

    .line 52
    move v8, v3

    .line 55
    :cond_2
    iget-boolean v11, p0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    if-eqz v11, :cond_3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_4
    goto :goto_3

    :cond_3
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_4

    .line 43
    .end local v2           #alpha:I
    .end local v3           #color:I
    .end local v4           #lum:I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 59
    .end local v9           #xCursor:I
    :cond_5
    shl-int/lit8 v11, v6, 0x18

    const v12, 0xffffff

    and-int/2addr v12, v8

    or-int/2addr v11, v12

    return v11
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 8
    .parameter "imgData"

    .prologue
    .line 23
    iget v4, p1, Lmiui/imagefilters/ImageData;->width:I

    .line 24
    .local v4, width:I
    iget v5, p1, Lmiui/imagefilters/ImageData;->height:I

    .line 25
    .local v5, height:I
    iget-object v1, p1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 26
    .local v1, pixels:[I
    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->getBackPixels()[I

    move-result-object v6

    .line 28
    .local v6, backPixels:[I
    const/4 v3, 0x0

    .local v3, y:I
    :goto_0
    add-int/lit8 v0, v5, -0x1

    if-gt v3, v0, :cond_1

    .line 29
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    add-int/lit8 v0, v4, -0x1

    if-gt v2, v0, :cond_0

    .line 30
    mul-int v0, v3, v4

    add-int v7, v0, v2

    .local v7, colorIndex:I
    move-object v0, p0

    .line 31
    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/SpreadFilter;->processPerPixel([IIIII)I

    move-result v0

    aput v0, v6, v7

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 28
    .end local v7           #colorIndex:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    .end local v2           #x:I
    :cond_1
    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->swapPixels()V

    .line 35
    return-void
.end method

.method public setIsAlphaSpread(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 18
    iput-boolean p1, p0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    .line 19
    return-void
.end method

.method public setIsSpreadBlack(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 14
    iput-boolean p1, p0, Lmiui/imagefilters/SpreadFilter;->mIsSpreadBlack:Z

    .line 15
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 10
    iput p1, p0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    .line 11
    return-void
.end method
