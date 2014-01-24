.class Lmiui/imagefilters/BlendImageFilter$21;
.super Lmiui/imagefilters/BlendImageFilter$Blender;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/BlendImageFilter;->getCurrentBlender()Lmiui/imagefilters/BlendImageFilter$Blender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$21;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$Blender;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendColor(II)I
    .locals 6
    .parameter "dstArgb"
    .parameter "srcArgb"

    .prologue
    const/4 v3, 0x3

    .line 467
    new-array v2, v3, [F

    .line 468
    .local v2, srcHsl:[F
    new-array v1, v3, [F

    .line 469
    .local v1, dstHsl:[F
    invoke-static {p2, v2}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(I[F)V

    .line 470
    invoke-static {p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(I[F)V

    .line 471
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x2

    aget v5, v1, v5

    invoke-static {v3, v4, v5}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb(FFF)I

    move-result v0

    .line 472
    .local v0, blendedRgb:I
    const/high16 v3, -0x100

    and-int/2addr v3, p2

    const v4, 0xffffff

    and-int/2addr v4, v0

    or-int/2addr v3, v4

    return v3
.end method
