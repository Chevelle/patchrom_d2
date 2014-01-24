.class Lmiui/cache/RequestManager$BackupCache;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cache/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackupCache"
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
.field private mCacheBackup:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lmiui/cache/RequestManager$DataCache",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private mCacheHolder:Lmiui/cache/RequestManager$DataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cache/RequestManager$DataCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final mExclude:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .parameter "maxSize"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, this:Lmiui/cache/RequestManager$BackupCache;,"Lmiui/cache/RequestManager$BackupCache<TK;TV;>;"
    .local p2, exclude:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Lmiui/cache/RequestManager$BackupCache;->mMaxSize:I

    .line 152
    iput-object p2, p0, Lmiui/cache/RequestManager$BackupCache;->mExclude:Ljava/lang/Object;

    .line 153
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Lmiui/cache/RequestManager$BackupCache;,"Lmiui/cache/RequestManager$BackupCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    invoke-virtual {v0, p1}, Lmiui/cache/RequestManager$DataCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .local p0, this:Lmiui/cache/RequestManager$BackupCache;,"Lmiui/cache/RequestManager$BackupCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v1, 0x0

    .line 176
    iget-object v2, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    if-eqz v2, :cond_1

    .line 177
    iget-object v1, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    invoke-virtual {v1, p1, p2}, Lmiui/cache/RequestManager$DataCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    :cond_0
    :goto_0
    return-object v1

    .line 180
    :cond_1
    iget-object v2, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheBackup:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheBackup:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cache/RequestManager$DataCache;

    .line 182
    .local v0, tmp:Lmiui/cache/RequestManager$DataCache;,"Lmiui/cache/RequestManager$DataCache<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lmiui/cache/RequestManager$DataCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 167
    .local p0, this:Lmiui/cache/RequestManager$BackupCache;,"Lmiui/cache/RequestManager$BackupCache<TK;TV;>;"
    new-instance v0, Ljava/lang/ref/SoftReference;

    iget-object v1, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheBackup:Ljava/lang/ref/SoftReference;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    .line 169
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/cache/RequestManager$BackupCache;,"Lmiui/cache/RequestManager$BackupCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    if-eqz v2, :cond_1

    .line 194
    iget-object v1, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    invoke-virtual {v1, p1}, Lmiui/cache/RequestManager$DataCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 202
    :cond_0
    :goto_0
    return-object v1

    .line 197
    :cond_1
    iget-object v2, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheBackup:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheBackup:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cache/RequestManager$DataCache;

    .line 199
    .local v0, tmp:Lmiui/cache/RequestManager$DataCache;,"Lmiui/cache/RequestManager$DataCache<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiui/cache/RequestManager$DataCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public removeAll()V
    .locals 2

    .prologue
    .line 206
    .local p0, this:Lmiui/cache/RequestManager$BackupCache;,"Lmiui/cache/RequestManager$BackupCache<TK;TV;>;"
    iget-object v1, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    invoke-virtual {v1}, Lmiui/cache/RequestManager$DataCache;->clear()V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheBackup:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheBackup:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cache/RequestManager$DataCache;

    .line 210
    .local v0, tmp:Lmiui/cache/RequestManager$DataCache;,"Lmiui/cache/RequestManager$DataCache<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lmiui/cache/RequestManager$DataCache;->clear()V

    goto :goto_0
.end method

.method public setup()V
    .locals 3

    .prologue
    .line 156
    .local p0, this:Lmiui/cache/RequestManager$BackupCache;,"Lmiui/cache/RequestManager$BackupCache<TK;TV;>;"
    iget-object v0, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheBackup:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheBackup:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cache/RequestManager$DataCache;

    iput-object v0, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheBackup:Ljava/lang/ref/SoftReference;

    .line 161
    :cond_0
    iget-object v0, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Lmiui/cache/RequestManager$DataCache;

    iget v1, p0, Lmiui/cache/RequestManager$BackupCache;->mMaxSize:I

    iget-object v2, p0, Lmiui/cache/RequestManager$BackupCache;->mExclude:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lmiui/cache/RequestManager$DataCache;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    .line 164
    :cond_1
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, this:Lmiui/cache/RequestManager$BackupCache;,"Lmiui/cache/RequestManager$BackupCache<TK;TV;>;"
    iget-object v0, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/cache/RequestManager$BackupCache;->mCacheHolder:Lmiui/cache/RequestManager$DataCache;

    invoke-virtual {v0}, Lmiui/cache/RequestManager$DataCache;->values()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
