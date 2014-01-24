.class abstract Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;
.super Lmiui/imagefilters/BlendImageFilter$Blender;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/BlendImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BlenderPerChannel"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$Blender;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public abstract blendChannel(FF)F
.end method

.method public blendColor(II)I
    .locals 13
    .parameter "dstArgb"
    .parameter "srcArgb"

    .prologue
    .line 31
    ushr-int/lit8 v9, p2, 0x10

    and-int/lit16 v8, v9, 0xff

    .line 32
    .local v8, srcR:I
    ushr-int/lit8 v9, p2, 0x8

    and-int/lit16 v7, v9, 0xff

    .line 33
    .local v7, srcG:I
    and-int/lit16 v3, p2, 0xff

    .line 35
    .local v3, srcB:I
    ushr-int/lit8 v9, p1, 0x10

    and-int/lit16 v2, v9, 0xff

    .line 36
    .local v2, dstR:I
    ushr-int/lit8 v9, p1, 0x8

    and-int/lit16 v1, v9, 0xff

    .line 37
    .local v1, dstG:I
    and-int/lit16 v0, p1, 0xff

    .line 39
    .local v0, dstB:I
    const/4 v9, 0x0

    int-to-float v10, v2

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    int-to-float v11, v8

    const/high16 v12, 0x437f

    div-float/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;->blendChannel(FF)F

    move-result v10

    const/high16 v11, 0x3f80

    invoke-static {v9, v10, v11}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 40
    .local v6, srcBlendedR:I
    const/4 v9, 0x0

    int-to-float v10, v1

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    int-to-float v11, v7

    const/high16 v12, 0x437f

    div-float/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;->blendChannel(FF)F

    move-result v10

    const/high16 v11, 0x3f80

    invoke-static {v9, v10, v11}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 41
    .local v5, srcBlendedG:I
    const/4 v9, 0x0

    int-to-float v10, v0

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    int-to-float v11, v3

    const/high16 v12, 0x437f

    div-float/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;->blendChannel(FF)F

    move-result v10

    const/high16 v11, 0x3f80

    invoke-static {v9, v10, v11}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v4, v9

    .line 43
    .local v4, srcBlendedB:I
    const/high16 v9, -0x100

    and-int/2addr v9, p2

    shl-int/lit8 v10, v6, 0x10

    or-int/2addr v9, v10

    shl-int/lit8 v10, v5, 0x8

    or-int/2addr v9, v10

    or-int/2addr v9, v4

    return v9
.end method
