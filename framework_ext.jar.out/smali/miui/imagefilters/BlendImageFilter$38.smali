.class Lmiui/imagefilters/BlendImageFilter$38;
.super Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/BlendImageFilter;->getCurrentPorterDuffBlender()Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
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
    .line 665
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$38;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendAlpha(FF)F
    .locals 2
    .parameter "Da"
    .parameter "Sa"

    .prologue
    .line 667
    add-float v0, p2, p1

    mul-float v1, p2, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public blendChannel(FFFF)F
    .locals 3
    .parameter "Dc"
    .parameter "Sc"
    .parameter "Da"
    .parameter "Sa"

    .prologue
    .line 671
    add-float v0, p2, p1

    mul-float v1, p2, p1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method
