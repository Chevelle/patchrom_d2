.class Lmiui/imagefilters/BlendImageFilter$25;
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
    .line 513
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$25;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$Blender;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method

.method private blendChannel(FFF)F
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "alpha"

    .prologue
    .line 532
    mul-float v0, p3, p2

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blendColor(II)I
    .locals 16
    .parameter "dstArgb"
    .parameter "srcArgb"

    .prologue
    .line 515
    ushr-int/lit8 v11, p2, 0x18

    and-int/lit16 v4, v11, 0xff

    .line 516
    .local v4, srcA:I
    ushr-int/lit8 v11, p2, 0x10

    and-int/lit16 v10, v11, 0xff

    .line 517
    .local v10, srcR:I
    ushr-int/lit8 v11, p2, 0x8

    and-int/lit16 v9, v11, 0xff

    .line 518
    .local v9, srcG:I
    move/from16 v0, p2

    and-int/lit16 v5, v0, 0xff

    .line 520
    .local v5, srcB:I
    ushr-int/lit8 v11, p1, 0x10

    and-int/lit16 v3, v11, 0xff

    .line 521
    .local v3, dstR:I
    ushr-int/lit8 v11, p1, 0x8

    and-int/lit16 v2, v11, 0xff

    .line 522
    .local v2, dstG:I
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0xff

    .line 524
    .local v1, dstB:I
    const/4 v11, 0x0

    int-to-float v12, v3

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    int-to-float v13, v10

    const/high16 v14, 0x437f

    div-float/2addr v13, v14

    int-to-float v14, v4

    const/high16 v15, 0x437f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lmiui/imagefilters/BlendImageFilter$25;->blendChannel(FFF)F

    move-result v12

    const/high16 v13, 0x3f80

    invoke-static {v11, v12, v13}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v11

    const/high16 v12, 0x437f

    mul-float/2addr v11, v12

    float-to-int v8, v11

    .line 525
    .local v8, srcBlendedR:I
    const/4 v11, 0x0

    int-to-float v12, v2

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    int-to-float v13, v9

    const/high16 v14, 0x437f

    div-float/2addr v13, v14

    int-to-float v14, v4

    const/high16 v15, 0x437f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lmiui/imagefilters/BlendImageFilter$25;->blendChannel(FFF)F

    move-result v12

    const/high16 v13, 0x3f80

    invoke-static {v11, v12, v13}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v11

    const/high16 v12, 0x437f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .line 526
    .local v7, srcBlendedG:I
    const/4 v11, 0x0

    int-to-float v12, v1

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    int-to-float v13, v5

    const/high16 v14, 0x437f

    div-float/2addr v13, v14

    int-to-float v14, v4

    const/high16 v15, 0x437f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lmiui/imagefilters/BlendImageFilter$25;->blendChannel(FFF)F

    move-result v12

    const/high16 v13, 0x3f80

    invoke-static {v11, v12, v13}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v11

    const/high16 v12, 0x437f

    mul-float/2addr v11, v12

    float-to-int v6, v11

    .line 528
    .local v6, srcBlendedB:I
    const/high16 v11, -0x100

    and-int v11, v11, p2

    shl-int/lit8 v12, v8, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v7, 0x8

    or-int/2addr v11, v12

    or-int/2addr v11, v6

    return v11
.end method
