.class public Lmiui/imagefilters/IImageFilter$ImageFilterGroup;
.super Ljava/lang/Object;
.source "IImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/IImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageFilterGroup"
.end annotation


# instance fields
.field private mFilters:[Lmiui/imagefilters/IImageFilter;


# direct methods
.method public constructor <init>([Lmiui/imagefilters/IImageFilter;)V
    .locals 0
    .parameter "filters"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->mFilters:[Lmiui/imagefilters/IImageFilter;

    .line 76
    return-void
.end method


# virtual methods
.method public processAll(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;
    .locals 5
    .parameter "inputBitmap"

    .prologue
    .line 79
    invoke-static {p1}, Lmiui/imagefilters/ImageData;->bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v3

    .line 80
    .local v3, imgData:Lmiui/imagefilters/ImageData;
    iget-object v4, p0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->mFilters:[Lmiui/imagefilters/IImageFilter;

    array-length v0, v4

    .line 81
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 82
    iget-object v4, p0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->mFilters:[Lmiui/imagefilters/IImageFilter;

    aget-object v1, v4, v2

    .line 83
    .local v1, filter:Lmiui/imagefilters/IImageFilter;
    invoke-interface {v1, p1}, Lmiui/imagefilters/IImageFilter;->putOriginalImage(Landroid/graphics/Bitmap;)V

    .line 84
    invoke-interface {v1, v3}, Lmiui/imagefilters/IImageFilter;->process(Lmiui/imagefilters/ImageData;)V

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v1           #filter:Lmiui/imagefilters/IImageFilter;
    :cond_0
    return-object v3
.end method
