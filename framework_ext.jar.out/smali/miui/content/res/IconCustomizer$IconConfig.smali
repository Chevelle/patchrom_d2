.class Lmiui/content/res/IconCustomizer$IconConfig;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/IconCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconConfig"
.end annotation


# instance fields
.field mCameraX:F

.field mCameraY:F

.field mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

.field mPointsMappingFrom:[F

.field mPointsMappingTo:[F

.field mRotateX:F

.field mRotateY:F

.field mRotateZ:F

.field mScaleX:F

.field mScaleY:F

.field mSkewX:F

.field mSkewY:F

.field mTransX:F

.field mTransY:F

.field mUseModIcon:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f80

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    .line 110
    iput v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    return-void
.end method

.method synthetic constructor <init>(Lmiui/content/res/IconCustomizer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lmiui/content/res/IconCustomizer$IconConfig;-><init>()V

    return-void
.end method
