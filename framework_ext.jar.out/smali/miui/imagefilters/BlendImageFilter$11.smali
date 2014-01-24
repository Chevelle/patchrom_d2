.class Lmiui/imagefilters/BlendImageFilter$11;
.super Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;
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
    .line 379
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$11;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    const/high16 v1, 0x4000

    const/high16 v2, 0x3f80

    .line 381
    const/high16 v0, 0x3f00

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 382
    sub-float v0, v2, p1

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    .line 384
    :goto_0
    return v0

    :cond_0
    sub-float v0, v2, p2

    mul-float/2addr v0, v1

    div-float v0, p1, v0

    goto :goto_0
.end method
