.class public Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/RendererCoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RendererCoreInfo"
.end annotation


# instance fields
.field public accessTime:J

.field public cacheTime:J

.field public checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

.field public r:Lmiui/maml/RendererCore;


# direct methods
.method public constructor <init>(Lmiui/maml/RendererCore;)V
    .locals 2
    .parameter "rc"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 47
    iput-object p1, p0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    .line 48
    return-void
.end method
