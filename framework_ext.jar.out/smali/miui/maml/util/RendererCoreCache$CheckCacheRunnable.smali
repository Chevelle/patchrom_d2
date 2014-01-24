.class Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/RendererCoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckCacheRunnable"
.end annotation


# instance fields
.field private mKey:Ljava/lang/Object;

.field final synthetic this$0:Lmiui/maml/util/RendererCoreCache;


# direct methods
.method public constructor <init>(Lmiui/maml/util/RendererCoreCache;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "key"

    .prologue
    .line 28
    iput-object p1, p0, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;->this$0:Lmiui/maml/util/RendererCoreCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;->this$0:Lmiui/maml/util/RendererCoreCache;

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    #calls: Lmiui/maml/util/RendererCoreCache;->checkCache(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lmiui/maml/util/RendererCoreCache;->access$000(Lmiui/maml/util/RendererCoreCache;Ljava/lang/Object;)V

    .line 35
    return-void
.end method
