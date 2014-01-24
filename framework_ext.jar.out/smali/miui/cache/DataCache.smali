.class public Lmiui/cache/DataCache;
.super Ljava/util/LinkedHashMap;
.source "DataCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private maximumCapacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maximumCapacity"

    .prologue
    .line 16
    .local p0, this:Lmiui/cache/DataCache;,"Lmiui/cache/DataCache<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/cache/DataCache;-><init>(II)V

    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "maximumCapacity"
    .parameter "initialCapacity"

    .prologue
    .line 20
    .local p0, this:Lmiui/cache/DataCache;,"Lmiui/cache/DataCache<TK;TV;>;"
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, p2, v0}, Lmiui/cache/DataCache;-><init>(IIF)V

    .line 21
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .parameter "maximumCapacity"
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 24
    .local p0, this:Lmiui/cache/DataCache;,"Lmiui/cache/DataCache<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 25
    iput p1, p0, Lmiui/cache/DataCache;->maximumCapacity:I

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;I)V
    .locals 0
    .parameter
    .parameter "maximumCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lmiui/cache/DataCache;,"Lmiui/cache/DataCache<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p2}, Lmiui/cache/DataCache;-><init>(I)V

    .line 30
    invoke-virtual {p0, p1}, Lmiui/cache/DataCache;->putAll(Ljava/util/Map;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getMaximumCapacity()I
    .locals 1

    .prologue
    .line 38
    .local p0, this:Lmiui/cache/DataCache;,"Lmiui/cache/DataCache<TK;TV;>;"
    iget v0, p0, Lmiui/cache/DataCache;->maximumCapacity:I

    return v0
.end method

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
    .line 43
    .local p0, this:Lmiui/cache/DataCache;,"Lmiui/cache/DataCache<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lmiui/cache/DataCache;->size()I

    move-result v0

    iget v1, p0, Lmiui/cache/DataCache;->maximumCapacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaximumCapacity(I)V
    .locals 0
    .parameter "maximumCapacity"

    .prologue
    .line 34
    .local p0, this:Lmiui/cache/DataCache;,"Lmiui/cache/DataCache<TK;TV;>;"
    iput p1, p0, Lmiui/cache/DataCache;->maximumCapacity:I

    .line 35
    return-void
.end method
