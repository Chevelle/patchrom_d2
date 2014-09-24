.class public Lcom/android/server/pm/PackageKeySetData;
.super Ljava/lang/Object;
.source "PackageKeySetData.java"


# instance fields
.field private mDefinedKeySets:[J

.field private final mKeySetAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSigningKeySets:[J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    .line 35
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageKeySetData;)V
    .locals 2
    .parameter "original"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v0

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    .line 41
    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v0

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    .line 43
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 44
    return-void
.end method


# virtual methods
.method public addDefinedKeySet(JLjava/lang/String;)V
    .locals 8
    .parameter "ks"
    .parameter "alias"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-wide v3, v0, v2

    .line 75
    .local v3, knownKeySet:J
    cmp-long v6, p1, v3

    if-nez v6, :cond_0

    .line 83
    .end local v3           #knownKeySet:J
    :goto_1
    return-void

    .line 74
    .restart local v3       #knownKeySet:J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v3           #knownKeySet:J
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    array-length v1, v6

    .line 80
    .local v1, end:I
    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    add-int/lit8 v7, v1, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    .line 81
    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    aput-wide p1, v6, v1

    .line 82
    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, p3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public addSigningKeySet(J)V
    .locals 8
    .parameter "ks"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-wide v3, v0, v2

    .line 49
    .local v3, knownKeySet:J
    cmp-long v6, p1, v3

    if-nez v6, :cond_0

    .line 56
    .end local v3           #knownKeySet:J
    :goto_1
    return-void

    .line 48
    .restart local v3       #knownKeySet:J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v3           #knownKeySet:J
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    array-length v1, v6

    .line 54
    .local v1, end:I
    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    add-int/lit8 v7, v1, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    .line 55
    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    aput-wide p1, v6, v1

    goto :goto_1
.end method

.method public getAliases()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    return-object v0
.end method

.method public getDefinedKeySets()[J
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    return-object v0
.end method

.method public getSigningKeySets()[J
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    return-object v0
.end method

.method public packageIsSignedBy(J)Z
    .locals 6
    .parameter "ks"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-wide v3, v0, v1

    .line 107
    .local v3, signingKeySet:J
    cmp-long v5, p1, v3

    if-nez v5, :cond_0

    .line 108
    const/4 v5, 0x1

    .line 111
    .end local v3           #signingKeySet:J
    :goto_1
    return v5

    .line 106
    .restart local v3       #signingKeySet:J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v3           #signingKeySet:J
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public removeDefinedKeySet(J)V
    .locals 10
    .parameter "ks"

    .prologue
    .line 86
    iget-object v8, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 87
    iget-object v8, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    new-array v6, v8, [J

    .line 88
    .local v6, keysets:[J
    const/4 v5, 0x0

    .line 89
    .local v5, index:I
    iget-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    .local v1, arr$:[J
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-wide v2, v1, v4

    .line 90
    .local v2, definedKeySet:J
    cmp-long v8, v2, p1

    if-eqz v8, :cond_0

    .line 91
    aput-wide v2, v6, v5

    .line 92
    add-int/lit8 v5, v5, 0x1

    .line 89
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v2           #definedKeySet:J
    :cond_1
    iput-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    .line 96
    iget-object v8, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, alias:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, p1

    if-nez v8, :cond_2

    .line 98
    iget-object v8, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #arr$:[J
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #index:I
    .end local v6           #keysets:[J
    .end local v7           #len$:I
    :cond_3
    return-void
.end method

.method public removeSigningKeySet(J)V
    .locals 8
    .parameter "ks"

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageKeySetData;->packageIsSignedBy(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 60
    iget-object v7, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    new-array v3, v7, [J

    .line 61
    .local v3, keysets:[J
    const/4 v2, 0x0

    .line 62
    .local v2, index:I
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-wide v5, v0, v1

    .line 63
    .local v5, signingKeySet:J
    cmp-long v7, v5, p1

    if-eqz v7, :cond_0

    .line 64
    aput-wide v5, v3, v2

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v5           #signingKeySet:J
    :cond_1
    iput-object v3, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    .line 70
    .end local v0           #arr$:[J
    .end local v1           #i$:I
    .end local v2           #index:I
    .end local v3           #keysets:[J
    .end local v4           #len$:I
    :cond_2
    return-void
.end method
