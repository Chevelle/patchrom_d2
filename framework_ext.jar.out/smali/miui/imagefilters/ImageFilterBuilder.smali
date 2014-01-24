.class public Lmiui/imagefilters/ImageFilterBuilder;
.super Ljava/lang/Object;
.source "ImageFilterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/imagefilters/ImageFilterBuilder$ParamData;,
        Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageFilterBuilder"


# instance fields
.field private mFilterName:Ljava/lang/String;

.field private mIgnoreWhenNotSupported:Z

.field private mParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/imagefilters/ImageFilterBuilder$ParamData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/ImageFilterBuilder;->mIgnoreWhenNotSupported:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/imagefilters/ImageFilterBuilder;->mParams:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .parameter "paramName"
    .parameter
    .parameter "allowIgnore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, paramValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lmiui/imagefilters/ImageFilterBuilder;->mParams:Ljava/util/List;

    new-instance v1, Lmiui/imagefilters/ImageFilterBuilder$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lmiui/imagefilters/ImageFilterBuilder$1;-><init>(Lmiui/imagefilters/ImageFilterBuilder;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public createImageFilter()Lmiui/imagefilters/IImageFilter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, filter:Lmiui/imagefilters/IImageFilter;
    const-string v4, "Hsl"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    new-instance v0, Lmiui/imagefilters/HslWrapFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/HslWrapFilter;-><init>()V

    .line 75
    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    :goto_0
    iget-object v4, p0, Lmiui/imagefilters/ImageFilterBuilder;->mParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/imagefilters/ImageFilterBuilder$ParamData;

    .line 76
    .local v2, param:Lmiui/imagefilters/ImageFilterBuilder$ParamData;
    iget-object v4, v2, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mParamName:Ljava/lang/String;

    iget-object v5, v2, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mParamValues:Ljava/util/List;

    invoke-interface {v0, v4, v5}, Lmiui/imagefilters/IImageFilter;->initParams(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    iget-boolean v4, v2, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mIgnoreWhenNotSupported:Z

    if-nez v4, :cond_0

    .line 78
    iget-boolean v4, p0, Lmiui/imagefilters/ImageFilterBuilder;->mIgnoreWhenNotSupported:Z

    if-eqz v4, :cond_c

    .line 84
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #param:Lmiui/imagefilters/ImageFilterBuilder$ParamData;
    :cond_1
    :goto_1
    return-object v3

    .line 49
    :cond_2
    const-string v4, "Edges"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    new-instance v0, Lmiui/imagefilters/EdgesFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/EdgesFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto :goto_0

    .line 51
    :cond_3
    const-string v4, "Levels"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 52
    new-instance v0, Lmiui/imagefilters/LevelsFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/LevelsFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto :goto_0

    .line 53
    :cond_4
    const-string v4, "GrayScale"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 54
    new-instance v0, Lmiui/imagefilters/GrayScaleFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/GrayScaleFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto :goto_0

    .line 55
    :cond_5
    const-string v4, "BlendImage"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 56
    new-instance v0, Lmiui/imagefilters/BlendImageFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/BlendImageFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto :goto_0

    .line 57
    :cond_6
    const-string v4, "ColorMatrix"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 58
    new-instance v0, Lmiui/imagefilters/ColorMatrixFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/ColorMatrixFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto :goto_0

    .line 59
    :cond_7
    const-string v4, "Convolution"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 60
    new-instance v0, Lmiui/imagefilters/ConvolutionFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/ConvolutionFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto/16 :goto_0

    .line 61
    :cond_8
    const-string v4, "Threshold"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 62
    new-instance v0, Lmiui/imagefilters/ThresholdFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/ThresholdFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto/16 :goto_0

    .line 63
    :cond_9
    const-string v4, "Spread"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 64
    new-instance v0, Lmiui/imagefilters/SpreadFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/SpreadFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto/16 :goto_0

    .line 65
    :cond_a
    const-string v4, "Transform"

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 66
    new-instance v0, Lmiui/imagefilters/TransformFilter;

    .end local v0           #filter:Lmiui/imagefilters/IImageFilter;
    invoke-direct {v0}, Lmiui/imagefilters/TransformFilter;-><init>()V

    .restart local v0       #filter:Lmiui/imagefilters/IImageFilter;
    goto/16 :goto_0

    .line 68
    :cond_b
    const-string v4, "ImageFilterBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown filter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-boolean v4, p0, Lmiui/imagefilters/ImageFilterBuilder;->mIgnoreWhenNotSupported:Z

    if-nez v4, :cond_1

    .line 70
    new-instance v3, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not support."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #param:Lmiui/imagefilters/ImageFilterBuilder$ParamData;
    :cond_c
    new-instance v3, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "param:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lmiui/imagefilters/ImageFilterBuilder$ParamData;->mParamName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not support."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2           #param:Lmiui/imagefilters/ImageFilterBuilder$ParamData;
    :cond_d
    move-object v3, v0

    .line 84
    goto/16 :goto_1
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0
    .parameter "filterName"

    .prologue
    .line 33
    iput-object p1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mFilterName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setIgnoreWhenNotSupported(Z)V
    .locals 0
    .parameter "isAllowIgnore"

    .prologue
    .line 29
    iput-boolean p1, p0, Lmiui/imagefilters/ImageFilterBuilder;->mIgnoreWhenNotSupported:Z

    .line 30
    return-void
.end method
