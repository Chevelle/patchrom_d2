.class Lmiui/imagefilters/BlendImageFilter$18;
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
    .line 432
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$18;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v1, 0x4000

    .line 434
    mul-float v0, v1, p2

    sub-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 435
    mul-float v0, v1, p2

    sub-float p1, v0, v2

    .line 441
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 437
    .restart local p1
    :cond_1
    mul-float v0, v1, p2

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 441
    mul-float p1, v1, p2

    goto :goto_0
.end method
