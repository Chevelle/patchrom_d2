.class public Lmiui/util/ImageUtils$CropOption;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropOption"
.end annotation


# instance fields
.field public borderColor:I

.field public borderWidth:I

.field public recycleSrcBmp:Z

.field public rx:I

.field public ry:I

.field public srcBmpDrawingArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "rx"
    .parameter "ry"
    .parameter "borderWidth"
    .parameter "borderColor"

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput p1, p0, Lmiui/util/ImageUtils$CropOption;->rx:I

    .line 364
    iput p2, p0, Lmiui/util/ImageUtils$CropOption;->ry:I

    .line 365
    iput p3, p0, Lmiui/util/ImageUtils$CropOption;->borderWidth:I

    .line 366
    iput p4, p0, Lmiui/util/ImageUtils$CropOption;->borderColor:I

    .line 367
    return-void
.end method

.method public constructor <init>(Lmiui/util/ImageUtils$CropOption;)V
    .locals 1
    .parameter "cOpt"

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iget v0, p1, Lmiui/util/ImageUtils$CropOption;->rx:I

    iput v0, p0, Lmiui/util/ImageUtils$CropOption;->rx:I

    .line 371
    iget v0, p1, Lmiui/util/ImageUtils$CropOption;->ry:I

    iput v0, p0, Lmiui/util/ImageUtils$CropOption;->ry:I

    .line 372
    iget v0, p1, Lmiui/util/ImageUtils$CropOption;->borderWidth:I

    iput v0, p0, Lmiui/util/ImageUtils$CropOption;->borderWidth:I

    .line 373
    iget v0, p1, Lmiui/util/ImageUtils$CropOption;->borderColor:I

    iput v0, p0, Lmiui/util/ImageUtils$CropOption;->borderColor:I

    .line 374
    iget-object v0, p1, Lmiui/util/ImageUtils$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    iput-object v0, p0, Lmiui/util/ImageUtils$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    .line 375
    iget-boolean v0, p1, Lmiui/util/ImageUtils$CropOption;->recycleSrcBmp:Z

    iput-boolean v0, p0, Lmiui/util/ImageUtils$CropOption;->recycleSrcBmp:Z

    .line 376
    return-void
.end method
