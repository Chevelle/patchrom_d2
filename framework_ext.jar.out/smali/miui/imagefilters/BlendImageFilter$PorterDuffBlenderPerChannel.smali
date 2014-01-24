.class abstract Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;
.super Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/BlendImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PorterDuffBlenderPerChannel"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public abstract blendAlpha(FF)F
.end method

.method public abstract blendChannel(FFFF)F
.end method

.method public blendFinal(II)I
    .locals 20
    .parameter "dstArgb"
    .parameter "srcArgb"

    .prologue
    .line 55
    ushr-int/lit8 v17, p2, 0x18

    move/from16 v0, v17

    and-int/lit16 v13, v0, 0xff

    .line 56
    .local v13, srcA:I
    ushr-int/lit8 v17, p2, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    mul-int v16, v17, v13

    .line 57
    .local v16, srcR:I
    ushr-int/lit8 v17, p2, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    mul-int v15, v17, v13

    .line 58
    .local v15, srcG:I
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    mul-int v14, v17, v13

    .line 60
    .local v14, srcB:I
    ushr-int/lit8 v17, p1, 0x18

    move/from16 v0, v17

    and-int/lit16 v5, v0, 0xff

    .line 61
    .local v5, dstA:I
    ushr-int/lit8 v17, p1, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    mul-int v8, v17, v5

    .line 62
    .local v8, dstR:I
    ushr-int/lit8 v17, p1, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    mul-int v7, v17, v5

    .line 63
    .local v7, dstG:I
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    mul-int v6, v17, v5

    .line 65
    .local v6, dstB:I
    int-to-float v0, v5

    move/from16 v17, v0

    const/high16 v18, 0x437f

    div-float v3, v17, v18

    .line 66
    .local v3, Da:F
    int-to-float v0, v13

    move/from16 v17, v0

    const/high16 v18, 0x437f

    div-float v4, v17, v18

    .line 68
    .local v4, Sa:F
    const/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->blendAlpha(FF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v17 .. v19}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v17

    const/high16 v18, 0x437f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v9, v0

    .line 69
    .local v9, resultA:I
    if-nez v9, :cond_0

    const/4 v12, 0x0

    .line 70
    .local v12, resultR:I
    :goto_0
    if-nez v9, :cond_1

    const/4 v11, 0x0

    .line 71
    .local v11, resultG:I
    :goto_1
    if-nez v9, :cond_2

    const/4 v10, 0x0

    .line 73
    .local v10, resultB:I
    :goto_2
    shl-int/lit8 v17, v9, 0x18

    shl-int/lit8 v18, v12, 0x10

    or-int v17, v17, v18

    shl-int/lit8 v18, v11, 0x8

    or-int v17, v17, v18

    or-int v17, v17, v10

    return v17

    .line 69
    .end local v10           #resultB:I
    .end local v11           #resultG:I
    .end local v12           #resultR:I
    :cond_0
    const/16 v17, 0x0

    int-to-float v0, v8

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->blendChannel(FFFF)F

    move-result v18

    int-to-float v0, v9

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x437f

    invoke-static/range {v17 .. v19}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v12, v0

    goto :goto_0

    .line 70
    .restart local v12       #resultR:I
    :cond_1
    const/16 v17, 0x0

    int-to-float v0, v7

    move/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->blendChannel(FFFF)F

    move-result v18

    int-to-float v0, v9

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x437f

    invoke-static/range {v17 .. v19}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    goto :goto_1

    .line 71
    .restart local v11       #resultG:I
    :cond_2
    const/16 v17, 0x0

    int-to-float v0, v6

    move/from16 v18, v0

    int-to-float v0, v14

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;->blendChannel(FFFF)F

    move-result v18

    int-to-float v0, v9

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x437f

    invoke-static/range {v17 .. v19}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    goto :goto_2
.end method
