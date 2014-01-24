.class Lmiui/cache/RequestManager$DataCache;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cache/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mExclude:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mExcludeKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final mMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .parameter "size"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lmiui/cache/RequestManager$DataCache;,"Lmiui/cache/RequestManager$DataCache<TK;TV;>;"
    .local p2, exclude:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lmiui/cache/RequestManager$DataCache$1;

    invoke-direct {v0, p0, p1}, Lmiui/cache/RequestManager$DataCache$1;-><init>(Lmiui/cache/RequestManager$DataCache;I)V

    iput-object v0, p0, Lmiui/cache/RequestManager$DataCache;->mMap:Ljava/util/LinkedHashMap;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/cache/RequestManager$DataCache;->mExcludeKeys:Ljava/util/Set;

    .line 79
    iput-object p2, p0, Lmiui/cache/RequestManager$DataCache;->mExclude:Ljava/lang/Object;

    .line 80
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 118
    .local p0, this:Lmiui/cache/RequestManager$DataCache;,"Lmiui/cache/RequestManager$DataCache<TK;TV;>;"
    iget-object v0, p0, Lmiui/cache/RequestManager$DataCache;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 119
    iget-object v0, p0, Lmiui/cache/RequestManager$DataCache;->mExcludeKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 120
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lmiui/cache/RequestManager$DataCache;,"Lmiui/cache/RequestManager$DataCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lmiui/cache/RequestManager$DataCache;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, v:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_0

    .line 105
    .end local v0           #v:Ljava/lang/Object;,"TV;"
    :goto_0
    return-object v0

    .restart local v0       #v:Ljava/lang/Object;,"TV;"
    :cond_0
    iget-object v1, p0, Lmiui/cache/RequestManager$DataCache;->mExcludeKeys:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/cache/RequestManager$DataCache;->mExclude:Ljava/lang/Object;

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/cache/RequestManager$DataCache;,"Lmiui/cache/RequestManager$DataCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v1, 0x0

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, oldValue:Ljava/lang/Object;,"TV;"
    iget-object v2, p0, Lmiui/cache/RequestManager$DataCache;->mExclude:Ljava/lang/Object;

    if-eq p2, v2, :cond_2

    .line 85
    iget-object v2, p0, Lmiui/cache/RequestManager$DataCache;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    iget-object v2, p0, Lmiui/cache/RequestManager$DataCache;->mExcludeKeys:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lmiui/cache/RequestManager$DataCache;->mExclude:Ljava/lang/Object;

    .line 96
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 87
    goto :goto_0

    .line 90
    :cond_2
    iget-object v2, p0, Lmiui/cache/RequestManager$DataCache;->mExcludeKeys:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 91
    :goto_1
    if-nez v0, :cond_0

    .line 92
    iget-object v1, p0, Lmiui/cache/RequestManager$DataCache;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lmiui/cache/RequestManager$DataCache;->mExclude:Ljava/lang/Object;

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lmiui/cache/RequestManager$DataCache;,"Lmiui/cache/RequestManager$DataCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lmiui/cache/RequestManager$DataCache;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, v:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_0

    .line 114
    .end local v0           #v:Ljava/lang/Object;,"TV;"
    :goto_0
    return-object v0

    .restart local v0       #v:Ljava/lang/Object;,"TV;"
    :cond_0
    iget-object v1, p0, Lmiui/cache/RequestManager$DataCache;->mExcludeKeys:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/cache/RequestManager$DataCache;->mExclude:Ljava/lang/Object;

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lmiui/cache/RequestManager$DataCache;,"Lmiui/cache/RequestManager$DataCache<TK;TV;>;"
    iget-object v1, p0, Lmiui/cache/RequestManager$DataCache;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 124
    .local v0, values:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    iget-object v1, p0, Lmiui/cache/RequestManager$DataCache;->mExcludeKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lmiui/cache/RequestManager$DataCache;->mExclude:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    return-object v0
.end method
