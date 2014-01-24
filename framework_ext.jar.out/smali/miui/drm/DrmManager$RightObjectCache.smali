.class Lmiui/drm/DrmManager$RightObjectCache;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RightObjectCache"
.end annotation


# instance fields
.field public lastModified:J

.field public ro:Lmiui/drm/DrmManager$RightObject;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/drm/DrmManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lmiui/drm/DrmManager$RightObjectCache;-><init>()V

    return-void
.end method
