.class public Lmiui/imagefilters/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# instance fields
.field private backPixels:[I

.field height:I

.field private mHashCode:I

.field pixels:[I

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    .line 16
    iput p1, p0, Lmiui/imagefilters/ImageData;->width:I

    .line 17
    iput p2, p0, Lmiui/imagefilters/ImageData;->height:I

    .line 18
    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 19
    return-void
.end method

.method public static bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 51
    new-instance v8, Lmiui/imagefilters/ImageData;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v8, v0, v1}, Lmiui/imagefilters/ImageData;-><init>(II)V

    .line 52
    .local v8, imgData:Lmiui/imagefilters/ImageData;
    iget-object v1, v8, Lmiui/imagefilters/ImageData;->pixels:[I

    iget v3, v8, Lmiui/imagefilters/ImageData;->width:I

    iget v6, v8, Lmiui/imagefilters/ImageData;->width:I

    iget v7, v8, Lmiui/imagefilters/ImageData;->height:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 53
    const/16 v0, 0x64

    invoke-virtual {v8, v0}, Lmiui/imagefilters/ImageData;->generalRandomNum(I)I

    .line 54
    return-object v8
.end method

.method public static imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "imgData"

    .prologue
    .line 58
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    iget v1, p0, Lmiui/imagefilters/ImageData;->width:I

    iget v2, p0, Lmiui/imagefilters/ImageData;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generalRandomNum(I)I
    .locals 5
    .parameter "maxNum"

    .prologue
    .line 26
    iget v2, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    if-nez v2, :cond_2

    .line 27
    const/4 v0, 0x7

    .line 28
    .local v0, fragCount:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 29
    iget v2, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    iget-object v3, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    iget-object v4, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    array-length v4, v4

    div-int/lit8 v4, v4, 0x7

    mul-int/2addr v4, v1

    aget v3, v3, v4

    xor-int/2addr v2, v3

    iput v2, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    iget v2, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    if-nez v2, :cond_1

    iput p1, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    .line 32
    :cond_1
    iget v2, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    if-gez v2, :cond_2

    iget v2, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    neg-int v2, v2

    iput v2, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    .line 34
    .end local v0           #fragCount:I
    .end local v1           #i:I
    :cond_2
    iget v2, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    rem-int/2addr v2, p1

    return v2
.end method

.method public getBackPixels()[I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    array-length v0, v0

    iget-object v1, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 39
    :cond_0
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    .line 41
    :cond_1
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    return-object v0
.end method

.method public swapPixels()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 46
    .local v0, temp:[I
    iget-object v1, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    iput-object v1, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 47
    iput-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    .line 48
    return-void
.end method
