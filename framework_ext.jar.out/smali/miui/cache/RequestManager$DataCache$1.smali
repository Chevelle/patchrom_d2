.class Lmiui/cache/RequestManager$DataCache$1;
.super Ljava/util/LinkedHashMap;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cache/RequestManager$DataCache;-><init>(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lmiui/cache/RequestManager$DataCache;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lmiui/cache/RequestManager$DataCache;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    .local p0, this:Lmiui/cache/RequestManager$DataCache$1;,"Lmiui/cache/RequestManager$DataCache.1;"
    iput-object p1, p0, Lmiui/cache/RequestManager$DataCache$1;->this$0:Lmiui/cache/RequestManager$DataCache;

    iput p2, p0, Lmiui/cache/RequestManager$DataCache$1;->val$size:I

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lmiui/cache/RequestManager$DataCache$1;,"Lmiui/cache/RequestManager$DataCache.1;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lmiui/cache/RequestManager$DataCache$1;->size()I

    move-result v0

    iget v1, p0, Lmiui/cache/RequestManager$DataCache$1;->val$size:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
