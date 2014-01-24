.class Lmiui/imagefilters/BlendImageFilter$5;
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
    .line 329
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$5;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v2, 0x4000

    .line 331
    const/high16 v0, 0x3f00

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 332
    mul-float v0, v2, p1

    mul-float/2addr v0, p2

    mul-float v1, p1, p1

    mul-float/2addr v2, p2

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 334
    :goto_0
    return v0

    :cond_0
    mul-float v0, v2, p1

    sub-float v1, v3, p2

    mul-float/2addr v0, v1

    invoke-static {p1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    mul-float/2addr v2, p2

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method
